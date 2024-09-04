package cn.gson.oa.controller.task;

import cn.gson.oa.common.OfficeUtils;
import cn.gson.oa.model.dao.book.DetailDrawDao;
import cn.gson.oa.model.dao.system.StatusDao;
import cn.gson.oa.model.dao.system.TypeDao;
import cn.gson.oa.model.dao.taskdao.TaskDao;
import cn.gson.oa.model.dao.taskdao.TaskloggerDao;
import cn.gson.oa.model.dao.taskdao.TaskuserDao;
import cn.gson.oa.model.dao.user.DeptDao;
import cn.gson.oa.model.dao.user.PositionDao;
import cn.gson.oa.model.dao.user.UserDao;
import cn.gson.oa.model.entity.book.DetailDraw;
import cn.gson.oa.model.entity.system.SystemStatusList;
import cn.gson.oa.model.entity.system.SystemTypeList;
import cn.gson.oa.model.entity.task.Tasklist;
import cn.gson.oa.model.entity.task.Taskuser;
import cn.gson.oa.model.entity.user.Dept;
import cn.gson.oa.model.entity.user.Position;
import cn.gson.oa.model.entity.user.User;
import cn.gson.oa.services.task.TaskService;
import com.jfinal.plugin.activerecord.Record;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/")
public class TaskDetailController {

    @Autowired
    private TaskDao tdao;
    @Autowired
    private StatusDao sdao;
    @Autowired
    private TypeDao tydao;
    @Autowired
    private UserDao udao;
    @Autowired
    private DeptDao ddao;
    @Autowired
    private TaskuserDao tudao;
    @Autowired
    private TaskService tservice;
    @Autowired
    private TaskloggerDao tldao;
    @Autowired
    private PositionDao pdao;
    @Autowired
    private DetailDrawDao detailDrawDao;

    @Value("${file.root.path}")
    private String rootPath;

    /**
     * 点击新增任务(三单)
     */
    @RequestMapping("addtaskdetail")
    public ModelAndView index2(@SessionAttribute("userId") Long userId,
                               @RequestParam(value = "page", defaultValue = "0") int page,
                               @RequestParam(value = "size", defaultValue = "10") int size) {
        Pageable pa = new PageRequest(page, size);
        ModelAndView mav = new ModelAndView("task/addtaskdetail");
        // 查询类型表
        Iterable<SystemTypeList> typelist = tydao.findAll();
        // 查询状态表
        Iterable<SystemStatusList> statuslist = sdao.findAll();
        // 查询部门下面的员工
        Page<User> pagelist = udao.findByFatherId(userId, pa);
        List<User> emplist = pagelist.getContent();
        // 查询部门表
        Iterable<Dept> deptlist = ddao.findAll();
        // 查职位表
        Iterable<Position> poslist = pdao.findAll();
        mav.addObject("typelist", typelist);
        mav.addObject("statuslist", statuslist);
        mav.addObject("emplist", emplist);
        mav.addObject("deptlist", deptlist);
        mav.addObject("poslist", poslist);
        mav.addObject("page", pagelist);
        mav.addObject("url", "names");
        mav.addObject("qufen", "任务");
        return mav;
    }

    /**
     * 新增任务保存(细化)
     */
    @RequestMapping("addtasksdetail")
    public String addtask(@SessionAttribute("userId") Long userId, HttpServletRequest request) {
        User userlist = udao.findOne(userId);
        DetailDraw detailDraw = (DetailDraw) request.getAttribute("detailDraw");

        Tasklist list = (Tasklist) request.getAttribute("tasklist");
        request.getAttribute("success");
        list.setUsersId(userlist);
        list.setPublishTime(new Date());
        list.setModifyTime(new Date());
        list.setTypeId(2L);
        // 图纸细化
        detailDraw.setIdentifyResponsiblePerson(list.getReciverlist());
        DetailDraw result = detailDrawDao.save(detailDraw);
        list.setDetailDraw(result);
        if (detailDraw.getProcessPerson() != null) {
            list.setStatusId(5);
        }
        tdao.save(list);
        StringTokenizer st = new StringTokenizer(list.getReciverlist() + (detailDraw.getProcessPerson() != null ? ";" + detailDraw.getProcessPerson() : ""), ";");
        while (st.hasMoreElements()) {
            User reciver = udao.findid(st.nextToken());
            Taskuser task = new Taskuser();
            task.setTaskId(list);
            task.setIrp(result.getIdentifyResponsiblePerson());
            task.setUserId(reciver);
            task.setStatusId(list.getStatusId());
            // 存任务中间表
            tudao.save(task);

        }

        return "redirect:/taskmanage";
    }


    @RequestMapping("readdetaildraw")
    public String uploadfile2(@RequestParam("file") MultipartFile file,
                              HttpSession session, Model model) throws IllegalStateException, IOException {
        Long userid = Long.parseLong(session.getAttribute("userId") + "");
        User user = udao.findOne(userid);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        File root = new File(this.rootPath, simpleDateFormat.format(new Date()));

        File savepath = new File(root, user.getUserName());

        if (!file.getOriginalFilename().contains("细化")) {
            model.addAttribute("errormess", "文件导入失败");
            return "forward:/taskmanage";
        }

        if (!savepath.exists()) {
            savepath.mkdirs();
        }

        String shuffix = FilenameUtils.getExtension(file.getOriginalFilename());
        String newFileName = UUID.randomUUID().toString().toLowerCase() + "." + shuffix;
        File targetFile = new File(savepath, newFileName);
        file.transferTo(targetFile);


        String[] detaildrawcol = new String[]{
                "序号", "文件编码", "内部文件编号", "图册号", "专业", "版本", "状态", "图纸类型", "接收日期", "是否需FU", "FU计划时间", "FU单号", "计划细化完成时间（无需细化填/）", "识别责任人", "细化责任人"
        };

        List<Record> records = OfficeUtils.readOffice(targetFile, detaildrawcol);
        List<Tasklist> list = new ArrayList<Tasklist>();
        for (Record record : records) {
            Map<String, Object> map = record.getColumns();
            Tasklist tl = new Tasklist();
            DetailDraw dd = new DetailDraw();
            map.forEach((s1, o) -> {

                        switch (s1) {
                            case "文件编码":
                                dd.setDocumentCodes(o.toString());
                                break;
                            case "内部文件编号":
                                dd.setInternalDocumentCodes(o.toString());
                                break;
                            case "图册号":
                                dd.setCatalogNumber(o.toString());
                                break;
                            case "专业":
                                dd.setProfessionalType(o.toString());
                                break;
                            case "版本":
                                dd.setVersion(o.toString());
                                break;
                            case "状态":
                                dd.setState(o.toString());
                                break;
                            case "图纸类型":
                                dd.setDrawingType(o.toString());
                                break;
                            case "接收日期":
                                dd.setReceivingTime(o.toString());
                                break;
                            case "是否需FU":
                                dd.setDoNeedFU(o.toString());
                                break;
                            case "FU计划时间":
                                dd.setPlanTimeFU(o.toString());
                                break;
                            case "FU单号":
                                dd.setNumberFU(o.toString());
                                break;
                            case "计划细化完成时间（无需细化填/）":
                                dd.setPlanCompletionTime(o.toString());
                                break;
                            case "识别责任人":
                                dd.setIdentifyResponsiblePerson(o.toString());
                                break;
                        }
                    }

            );
            tl.setDetailDraw(dd);
            list.add(tl);
        }

        if (targetFile.exists()) {
            targetFile.delete();
        }

        for (Tasklist tasklist : list) {
            if (tasklist.getDetailDraw().getIdentifyResponsiblePerson().equals("") && tasklist.getDetailDraw().getIdentifyResponsiblePerson().equals("/")) {
                model.addAttribute("errormess", "文件导入失败");
                return "forward:/taskmanage";
            }
        }


        int i = 1;
        for (Tasklist tasklist : list) {
            tasklist.setTitle(FilenameUtils.removeExtension(file.getOriginalFilename()) + simpleDateFormat.format(new Date()) + "-" + i);
            tasklist.setUsersId(user);
            tasklist.setPublishTime(new Date());
            tasklist.setModifyTime(new Date());
            tasklist.setStarTime(new Date());
            tasklist.setEndTime(new Date(new Date().getTime() + 3 * 86400000));
            tasklist.setTypeId(2L);
            tasklist.setTaskDescribe("@@");
            tasklist.setStatusId(5);
            tasklist.setReciverlist(tasklist.getDetailDraw().getIdentifyResponsiblePerson());
            // 细化
            DetailDraw result = detailDrawDao.save(tasklist.getDetailDraw());

            tdao.save(tasklist);
            // 分割任务接收人
            StringTokenizer st = new StringTokenizer(tasklist.getReciverlist() + (tasklist.getDetailDraw().getProcessPerson() != null ? ";" + tasklist.getDetailDraw().getProcessPerson() : ""), ";");
            while (st.hasMoreElements()) {
                User reciver = udao.findid(st.nextToken());
                Taskuser task = new Taskuser();
                task.setTaskId(tasklist);
                task.setIrp(result.getIdentifyResponsiblePerson());
                task.setUserId(reciver);
                task.setStatusId(tasklist.getStatusId());
                // 存任务中间表
                tudao.save(task);

            }
            i++;
        }


        model.addAttribute("success", "文件导入成功");


        return "redirect:/taskmanage";
    }


}
