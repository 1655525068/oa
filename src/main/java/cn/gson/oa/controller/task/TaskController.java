package cn.gson.oa.controller.task;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;


import java.text.SimpleDateFormat;
import java.util.*;


import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import cn.gson.oa.common.OfficeUtils;
import cn.gson.oa.model.dao.book.*;
import cn.gson.oa.model.dao.roledao.RoleDao;
import cn.gson.oa.model.entity.book.*;
import cn.gson.oa.model.entity.file.FileList;
import cn.gson.oa.model.entity.role.Role;
import cn.gson.oa.services.file.FileServices;
import com.jfinal.plugin.activerecord.Record;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.util.StringUtil;

import cn.gson.oa.model.dao.system.StatusDao;
import cn.gson.oa.model.dao.system.TypeDao;
import cn.gson.oa.model.dao.taskdao.TaskDao;
import cn.gson.oa.model.dao.taskdao.TaskloggerDao;
import cn.gson.oa.model.dao.taskdao.TaskuserDao;
import cn.gson.oa.model.dao.user.DeptDao;
import cn.gson.oa.model.dao.user.PositionDao;
import cn.gson.oa.model.dao.user.UserDao;
import cn.gson.oa.model.entity.system.SystemStatusList;
import cn.gson.oa.model.entity.system.SystemTypeList;
import cn.gson.oa.model.entity.task.Tasklist;
import cn.gson.oa.model.entity.task.Tasklogger;
import cn.gson.oa.model.entity.task.Taskuser;
import cn.gson.oa.model.entity.user.Dept;
import cn.gson.oa.model.entity.user.Position;
import cn.gson.oa.model.entity.user.User;
import cn.gson.oa.services.task.TaskService;

@Controller
@RequestMapping("/")
public class TaskController {

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
    private ThreeBookDao bdao;

    @Autowired
    private RoleDao rdao;

    @Autowired
    private ThreeBookProcessDao tbpDao;

    @Autowired
    private DetailDrawQuestionDao ddqDao;

    @Autowired
    private DetailDrawDao ddDao;

    @Autowired
    private ProfessionDao pfDao;

    @Autowired
    private DrawTypeDao dtDao;

    @Value("${file.root.path}")
    private String rootPath;


    /**
     * 任务管理表格
     *
     * @return
     */
    @RequestMapping("taskmanage")
    public String index(Model model,
                        @SessionAttribute("userId") Long userId,
                        @RequestParam(value = "page", defaultValue = "0") int page,
                        @RequestParam(value = "size", defaultValue = "50") int size) {

        // 通过发布人id找用户
        User tu = udao.findOne(userId);
        // 根据发布人id查询任务
        Page<Tasklist> tasklist = tservice.index(page, size, null, tu);
        List<Map<String, Object>> list = tservice.index2(tasklist, tu);

        model.addAttribute("tasklist", list);
        model.addAttribute("page", tasklist);
        model.addAttribute("url", "paixu");
        return "task/taskmanage";
    }

    /**
     * 各种排序
     */
    @RequestMapping("paixu")
    public String paixu(HttpServletRequest request,
                        @SessionAttribute("userId") Long userId, Model model,
                        @RequestParam(value = "page", defaultValue = "0") int page,
                        @RequestParam(value = "size", defaultValue = "50") int size) {

        // 通过发布人id找用户
        User tu = udao.findOne(userId);
        String val = null;
        if (!StringUtil.isEmpty(request.getParameter("val"))) {
            val = request.getParameter("val").trim();
            model.addAttribute("sort", "&val=" + val);
        }

        Page<Tasklist> tasklist = tservice.index(page, size, val, tu);
        List<Map<String, Object>> list = tservice.index2(tasklist, tu);
        model.addAttribute("tasklist", list);
        model.addAttribute("page", tasklist);
        model.addAttribute("url", "paixu");

        return "task/managetable";

    }


    /**
     * 点击新增任务(三单)
     */
    @RequestMapping("addtask")
    public ModelAndView index2(@SessionAttribute("userId") Long userId,
                               @RequestParam(value = "page", defaultValue = "0") int page,
                               @RequestParam(value = "size", defaultValue = "50") int size) {
        Pageable pa = new PageRequest(page, size);
        ModelAndView mav = new ModelAndView("task/addtask");
        // 查询类型表
        Iterable<SystemTypeList> typelist = tydao.findAll();
        // 查询状态表
        Iterable<SystemStatusList> statuslist = sdao.findAll();
        // 查询部门下面的员工
        Page<User> pagelist = udao.findByFatherId(userId, pa);
        if (pagelist.getTotalPages() == 0) {
            pagelist = udao.findAll(pa);
        }
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
        Sort sort = new Sort(new Sort.Order(Sort.Direction.ASC, "bookId"));
        Pageable pa2 = new PageRequest(page, size, sort);
        Page<DetailDraw> detailDraws = ddDao.findAllByIsLock(0, pa2);
        mav.addObject("page2", detailDraws);
        mav.addObject("details", detailDraws.getContent());

        mav.addObject("url2", "details");
        mav.addObject("qufen", "任务");
        // 专业列表
        Iterable<Profession> professions = pfDao.findAll();
        mav.addObject("professions", professions);
        // 图纸列表
        Iterable<DrawType> drawTypes = dtDao.findAll();
        mav.addObject("drawTypes", drawTypes);
        return mav;
    }

    /**
     * 新增任务保存(三单)
     */
    @RequestMapping("addtasks")
    public String addtask(@SessionAttribute("userId") Long userId, HttpServletRequest request) {
        User userlist = udao.findOne(userId);
        ThreeBook threeBook = (ThreeBook) request.getAttribute("threeBook");
        threeBook.setType(request.getParameter("threeType"));

        Tasklist list = (Tasklist) request.getAttribute("tasklist");
        request.getAttribute("success");
        list.setUsersId(userlist);
        list.setPublishTime(new Date());
        list.setModifyTime(new Date());
        list.setTypeId(1L);
        //三单
        threeBook.setIdentifyResponsiblePerson(list.getReciverlist());
        ThreeBook result = bdao.save(threeBook);
        list.setThreeBook(result);
        if (threeBook.getProcessPerson() != null) {
            list.setStatusId(5);
        }
        tdao.save(list);
        // 分割任务接收人
        StringTokenizer st = new StringTokenizer(list.getReciverlist() + (threeBook.getProcessPerson() != null ? ";" + threeBook.getProcessPerson() : ""), ";");
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

    /**
     * 修改任务(三单)
     */
    @RequestMapping("edittasks")
    public ModelAndView index3(HttpServletRequest req, @SessionAttribute("userId") Long userId,
                               @RequestParam(value = "page", defaultValue = "0") int page,
                               @RequestParam(value = "size", defaultValue = "50") int size) {
        Pageable pa = new PageRequest(page, size);
        ModelAndView mav = new ModelAndView("task/edittask");
        // 得到链接中的任务id
        String taskid = req.getParameter("id");
        Long ltaskid = Long.parseLong(taskid);
        // 通过任务id得到相应的任务
        Tasklist task = tdao.findOne(ltaskid);
        // 得到状态id
        Long statusid = task.getStatusId().longValue();
        // 得到类型id
        Long typeid = task.getTypeId();
        // 查看状态表
        SystemStatusList status = sdao.findOne(statusid);
//		// 查询类型表
//		SystemTypeList type = tydao.findOne(typeid);

        // 查询部门下面的员工
        Page<User> pagelist = udao.findByFatherId(userId, pa);
        List<User> emplist = pagelist.getContent();

        // 查询部门表
        Iterable<Dept> deptlist = ddao.findAll();
        // 查职位表
        Iterable<Position> poslist = pdao.findAll();
//		mav.addObject("type", type);
        mav.addObject("status", status);
        mav.addObject("emplist", emplist);
        mav.addObject("deptlist", deptlist);
        mav.addObject("poslist", poslist);
        mav.addObject("task", task);
        mav.addObject("page", pagelist);
        mav.addObject("url", "names");
        mav.addObject("qufen", "任务");
        return mav;
    }

    /**
     * 修改任务确定(三单)
     */
    @RequestMapping("update")
    public String update(Tasklist task, HttpSession session) {
        String userId = session.getAttribute("userId").toString().trim();
        Long userid = Long.parseLong(userId);
        User user = udao.findOne(userid);
        task.setUsersId(user);
        task.setPublishTime(new Date());
        task.setModifyTime(new Date());
        Tasklist tasklist = tdao.findOne(task.getTaskId());
        if (tasklist.getTypeId() == 1) {
            task.setThreeBook(tasklist.getThreeBook());
        } else {
            task.setDetailDraw(tasklist.getDetailDraw());
        }

        tservice.save(task);

        // 分割任务接收人 还要查找联系人的主键
        StringTokenizer st = new StringTokenizer(task.getReciverlist(), ";");
        while (st.hasMoreElements()) {
            User reciver = udao.findid(st.nextToken());
            Long pkid = udao.findpkId(task.getTaskId(), reciver.getUserId());
            Taskuser tasku = new Taskuser();
            tasku.setPkId(pkid);
            tasku.setTaskId(task);
            tasku.setUserId(reciver);
            tasku.setStatusId(task.getStatusId());
            // 存任务中间表
            tudao.save(tasku);
        }

        return "redirect:/taskmanage";
    }

    /**
     * 查看任务
     */
    @RequestMapping("seetasks")
    public ModelAndView index4(HttpServletRequest req, @SessionAttribute("userId") Long userId, @RequestParam(value = "page", defaultValue = "0") int page,
                               @RequestParam(value = "size", defaultValue = "50") int size) {
        Pageable pa = new PageRequest(page, size);
        ModelAndView mav = new ModelAndView("task/seetask");
        // 得到任务的 id
        String taskid = req.getParameter("id");
        Long ltaskid = Long.parseLong(taskid);
        // 通过任务id得到相应的任务
        Tasklist task = tdao.findOne(ltaskid);
        if (task != null && task.getTypeId() == 1) {
            List<ThreeBookProcess> list = tbpDao.findAllByTbs(task.getThreeBook());
            task.getThreeBook().setProcesses(list);
        } else if (task != null && task.getTypeId() == 2) {
            List<DetailDrawQuestion> list = ddqDao.findAllByDds(task.getDetailDraw());
            task.getDetailDraw().setQuestions(list);
        }

        Long statusid = task.getStatusId().longValue();

        // 根据状态id查看状态表
        SystemStatusList status = sdao.findOne(statusid);
        // 查看状态表
        Iterable<SystemStatusList> statuslist = sdao.findAll();
        // 查看发布人
        User user = udao.findOne(task.getUsersId().getUserId());

        // 查看参加人员
        User c_user = udao.findid(task.getReciverlist());
        // 查看当前人员
        User user2 = udao.findOne(userId);
        // 查看任务日志表
        List<Tasklogger> logger = tldao.findByTaskId(ltaskid);
        mav.addObject("task", task);
        mav.addObject("user", user);
        mav.addObject("c_user", c_user);
        mav.addObject("user2", user2);
        mav.addObject("status", status);
        mav.addObject("loggerlist", logger);
        mav.addObject("statuslist", statuslist);

        // 查询部门下面的员工
        Page<User> pagelist = udao.findByFatherId(1L, pa);
        // 查询类型表
        Iterable<SystemTypeList> typelist = tydao.findAll();
        List<User> emplist = pagelist.getContent();
        // 查询部门表
        Iterable<Dept> deptlist = ddao.findAll();
        // 查角色表
        Iterable<Role> rolelist = rdao.findAll();
        mav.addObject("typelist", typelist);
        mav.addObject("statuslist", statuslist);
        mav.addObject("emplist", emplist);
        mav.addObject("deptlist", deptlist);
        mav.addObject("rolelist", rolelist);
        mav.addObject("page", pagelist);
        mav.addObject("url", "names");
        // 专业列表
        Iterable<Profession> professions = pfDao.findAll();
        mav.addObject("professions", professions);
        // 图纸列表
        Iterable<DrawType> drawTypes = dtDao.findAll();
        mav.addObject("drawTypes", drawTypes);
        return mav;
    }

    /**
     * 存反馈日志
     */
    @RequestMapping("tasklogger")
    public String tasklogger(Tasklogger logger, @SessionAttribute("userId") Long userId, HttpServletRequest req, @Valid ThreeBook tb, @Valid DetailDraw dd) {
        User userlist = udao.findOne(userId);
        logger.setCreateTime(new Date());
        logger.setUsername(userlist.getUserName());

        Tasklist task = tdao.getOne(logger.getTaskId().getTaskId());
        String identifyResponsiblePerson = "";
        String processPerson = "";
        if (task.getTypeId() == 1) {
            identifyResponsiblePerson = task.getThreeBook().getIdentifyResponsiblePerson();
            processPerson = task.getThreeBook().getProcessPerson();
        } else {
            identifyResponsiblePerson = task.getDetailDraw().getIdentifyResponsiblePerson();
            processPerson = task.getDetailDraw().getProcessPerson();
        }
        userlist = udao.findByUserName(identifyResponsiblePerson);
        Taskuser taskuser = null;
        if (task.getTypeId() == 1) {
            //更新三单
            System.out.println(task.getThreeBook());
            task.getThreeBook().setShouldHandle(tb.getShouldHandle());
            tdao.save(task);

            // 填写处理
            System.out.println(tb.getProcesses());
            if (tb.getProcesses() != null) {
                for (ThreeBookProcess process : tb.getProcesses()) {
                    process.setTbs(task.getThreeBook());
                    if (process.getTbId() != null) {
                        tbpDao.save(process);
                    } else if (!(process.getHandleMethod().trim().length() == 0 && process.getProcessOrderNumber().trim().length() == 0 && process.getRemarks().trim().length() == 0)) {
                        tbpDao.save(process);
                    }
                }
            }

            // 获取原三单处理人
            taskuser = tudao.findByuserNameAndTaskId(task.getThreeBook().getProcessPerson(), task.getTaskId());
            tservice.updateThreeBook(req, task.getThreeBook());
            // 更新日志
            logger = tservice.updateLogger(req, logger, "three");
        } else {
            System.out.println(task.getDetailDraw());
            // 处理方式
            task.getDetailDraw().setHandleMethod(dd.getHandleMethod());
            // 细化处理人
            task.getDetailDraw().setProcessPerson(dd.getProcessPerson());
            // 处理单号
            tdao.save(task);

            // 填写问题
            System.out.println(dd.getQuestions());
            if (dd.getQuestions() != null) {
                for (DetailDrawQuestion question : dd.getQuestions()) {
                    question.setDds(task.getDetailDraw());
                    if (question.getDdId() != null) {
                        ddqDao.save(question);
                    } else if (!(question.getProblemDescription().trim().length() == 0 && question.getProblemCount().trim().length() == 0)) {
                        ddqDao.save(question);
                    }
                }
            }
            // 获取原细化处理人
            taskuser = tudao.findByuserNameAndTaskId(task.getDetailDraw().getProcessPerson(), task.getTaskId());
            tservice.updateDetailDraw(req, task.getDetailDraw());
            // 更新日志
            logger = tservice.updateLogger(req, logger, "xihua");
        }
        // 存日志
        tldao.save(logger);
        // 修改任务状态
        tservice.updateStatusid(logger.getTaskId().getTaskId(), logger.getLoggerStatusid());

        User findUser = null;
        if (task.getTypeId() == 1) {
            findUser = udao.findid(task.getThreeBook().getProcessPerson());
        } else {
            findUser = udao.findid(task.getDetailDraw().getProcessPerson());
        }

        Taskuser taskuser1 = taskuser;
        if (taskuser1 != null) {
            if (!identifyResponsiblePerson.equals(processPerson)) {
                tudao.delete(taskuser1);
                taskuser1.setUserId(findUser);
                Taskuser t = tudao.findByuserIdAndTaskId2(udao.findByUserName(req.getParameter("processPerson")).getUserId(), task.getTaskId());
                if (t == null) {
                    tudao.save(taskuser1);
                }
            } else {
                Taskuser tasku2 = new Taskuser();
                tasku2.setTaskId(task);
                tasku2.setUserId(findUser);
                if (!Objects.isNull(logger.getLoggerStatusid())) {
                    tasku2.setStatusId(logger.getLoggerStatusid());
                }
                tudao.save(tasku2);
            }

        } else {
            Taskuser tasku2 = new Taskuser();
            tasku2.setTaskId(task);
            tasku2.setUserId(findUser);
            if (!Objects.isNull(logger.getLoggerStatusid())) {

                tasku2.setStatusId(logger.getLoggerStatusid());
            }
            tudao.save(tasku2);
        }
        List<Taskuser> tus = udao.findpkIdList(logger.getTaskId().getTaskId());
        Tasklogger finalLogger = logger;
        tus.forEach((x -> {
            x.setStatusId(finalLogger.getLoggerStatusid());
            tudao.save(x);
        }));

        return "redirect:/taskmanage";

    }

    /**
     * 我的任务
     */
    @RequestMapping("mytask")
    public String index5(@SessionAttribute("userId") Long userId, Model model,
                         @RequestParam(value = "page", defaultValue = "0") int page,
                         @RequestParam(value = "size", defaultValue = "50") int size) {
        Pageable pa = new PageRequest(page, size);
        Page<Tasklist> tasklist = tservice.index3(userId, null, page, size);

        Page<Tasklist> tasklist2 = tdao.findByTickingIsNotNull(pa);
        if (tasklist != null) {
            List<Map<String, Object>> list = tservice.index4(tasklist, userId);
            model.addAttribute("page", tasklist);
            model.addAttribute("tasklist", list);
        } else {
            List<Map<String, Object>> list2 = tservice.index4(tasklist2, userId);
            model.addAttribute("page", tasklist2);
            model.addAttribute("tasklist", list2);
        }
        model.addAttribute("url", "mychaxun");
        return "task/mytask";

    }

    /**
     * 在我的任务里面进行查询
     *
     * @throws ParseException
     */
    @RequestMapping("mychaxun")
    public String select(HttpServletRequest request, @SessionAttribute("userId") Long userId, Model model,
                         @RequestParam(value = "page", defaultValue = "0") int page,
                         @RequestParam(value = "size", defaultValue = "50") int size) throws ParseException {

        String title = null;
        if (!StringUtil.isEmpty(request.getParameter("title"))) {
            title = request.getParameter("title").trim();
        }
        Page<Tasklist> tasklist = tservice.index3(userId, title, page, size);
        List<Map<String, Object>> list = tservice.index4(tasklist, userId);
        model.addAttribute("tasklist", list);
        model.addAttribute("page", tasklist);
        model.addAttribute("url", "mychaxun");
//        model.addAttribute("sort", "&title=" + title);
        return "task/mytasklist";
    }


    @RequestMapping("myseetasks")
    public ModelAndView myseetask(HttpServletRequest req, @SessionAttribute("userId") Long userId, @RequestParam(value = "page", defaultValue = "0") int page,
                                  @RequestParam(value = "size", defaultValue = "50") int size) {
        Pageable pa = new PageRequest(page, size);

        ModelAndView mav = new ModelAndView("task/myseetask");
        // 得到任务的 id
        String taskid = req.getParameter("id");

        Long ltaskid = Long.parseLong(taskid);
        // 通过任务id得到相应的任务
        Tasklist task = tdao.findOne(ltaskid);

        if (task.getTypeId() == 1) {
            List<ThreeBookProcess> list = tbpDao.findAllByTbs(task.getThreeBook());
            task.getThreeBook().setProcesses(list);
        }
        if (task.getTypeId() == 2) {
            List<DetailDrawQuestion> list = ddqDao.findAllByDds(task.getDetailDraw());
            task.getDetailDraw().setQuestions(list);
        }


        // 查看状态表
        Iterable<SystemStatusList> statuslist = sdao.findAll();
        // 查询接收人的任务状态
        Long ustatus = tudao.findByuserIdAndTaskId(userId, ltaskid);

        SystemStatusList status = sdao.findOne(ustatus);

        // 查看发布人
        User user = udao.findOne(task.getUsersId().getUserId());

        //查看参加人员
        User c_user = udao.findid(task.getReciverlist());

        // 查看当前人员
        User user2 = udao.findOne(userId);

        // 查看任务日志表
        List<Tasklogger> logger = tldao.findByTaskId(ltaskid);

        mav.addObject("task", task);
        mav.addObject("user", user);
        mav.addObject("c_user", c_user);
        mav.addObject("user2", user2);
        mav.addObject("status", status);
        mav.addObject("statuslist", statuslist);
        mav.addObject("loggerlist", logger);

        // 查询部门下面的员工
        Page<User> pagelist = udao.findByFatherId(1L, pa);
        // 查询类型表
        Iterable<SystemTypeList> typelist = tydao.findAll();
        List<User> emplist = pagelist.getContent();
        // 查询部门表
        Iterable<Dept> deptlist = ddao.findAll();
        // 查角色表
        Iterable<Role> rolelist = rdao.findAll();

        mav.addObject("typelist", typelist);
        mav.addObject("statuslist", statuslist);
        mav.addObject("emplist", emplist);
        mav.addObject("deptlist", deptlist);
        mav.addObject("rolelist", rolelist);
        mav.addObject("page", pagelist);
        mav.addObject("url", "paixu");
        // 专业列表
        Iterable<Profession> professions = pfDao.findAll();
        mav.addObject("professions", professions);
        // 图纸列表
        Iterable<DrawType> drawTypes = dtDao.findAll();
        mav.addObject("drawTypes", drawTypes);

        return mav;

    }

    /**
     * 从我的任务查看里面修改状态和日志
     */
    @RequestMapping("uplogger")
    public String updatelo(Tasklogger logger, @SessionAttribute("userId") Long userId, HttpServletRequest req, @Valid ThreeBook tb, @Valid DetailDraw dd, @RequestParam(value = "commit", defaultValue = "") String commit) {

        System.out.println(commit);
        if ("access".equals(commit)) {
            logger.setLoggerStatusid(7);
        }
        if ("notaccess".equals(commit)) {
            logger.setLoggerStatusid(5);
        }
        if (commit.isEmpty() && req.getParameter("processPerson") != null) {
            logger.setLoggerStatusid(5);
        }
        if ("否".equals(tb.getShouldHandle()) || "否".equals(dd.getShouldHandle())) {
            if (tb != null) {
                tb.setProcessPerson("");
            }
            if (dd != null) {
                dd.setProcessPerson("");
            }
            logger.setLoggerStatusid(7);
        }

        // 查找用户
        User user = udao.findOne(userId);
        // 查任务
        Tasklist task = tdao.findOne(logger.getTaskId().getTaskId());
        String identifyResponsiblePerson = "";
        String processPerson = "";
        if (task.getTypeId() == 1) {
            identifyResponsiblePerson = task.getThreeBook().getIdentifyResponsiblePerson();
            processPerson = task.getThreeBook().getProcessPerson();
        } else {
            identifyResponsiblePerson = task.getDetailDraw().getIdentifyResponsiblePerson();
            processPerson = task.getDetailDraw().getProcessPerson();
        }
        logger.setCreateTime(new Date());
        logger.setUsername(user.getUserName());

        DetailDraw detailDraw = null;
        ThreeBook threeBook = null;

        Taskuser taskuser1 = null;
        if (task.getTypeId() == 1) {
            // 查三单
            threeBook = task.getThreeBook();
            // 获取原三单处理人
            Taskuser taskuser = tudao.findByuserNameAndTaskId(task.getThreeBook().getProcessPerson(), task.getTaskId());
            taskuser1 = taskuser;
            // 更新三单
            threeBook = tservice.updateThreeBook(req, threeBook);
            // 专业
            task.getThreeBook().setProfessionalType(tb.getProfessionalType());
            // 是否需要处理
            task.getThreeBook().setShouldHandle(tb.getShouldHandle());
            if ("否".equals(tb.getShouldHandle())) {
                task.getThreeBook().setProcessPerson("");
            }
            if ("access".equals(commit)) {
                task.getThreeBook().setCompletionTime(new SimpleDateFormat("yyyy-M-d").format(new Date()));
            }
            tdao.save(task);
            if (tb.getProcesses() != null) {
                for (ThreeBookProcess process : tb.getProcesses()) {
                    process.setTbs(task.getThreeBook());
                    if (process.getTbId() != null) {
                        tbpDao.save(process);
                    } else if (!(process.getHandleMethod().trim().length() == 0 && process.getProcessOrderNumber().trim().length() == 0 && process.getRemarks().trim().length() == 0)) {
                        tbpDao.save(process);
                    }
                }
            }
            bdao.save(threeBook);
            tservice.updateLogger(req, logger, "three");
        }
        if (task.getTypeId() == 2) {
            // 查细化
            detailDraw = task.getDetailDraw();
            Taskuser taskuser = tudao.findByuserNameAndTaskId(detailDraw.getProcessPerson(), task.getTaskId());
            taskuser1 = taskuser;
            // 专业
            task.getDetailDraw().setProfessionalType(dd.getProfessionalType());
            // 图纸类型
            task.getDetailDraw().setDrawingType(dd.getDrawingType());
            // 是否需要处理
            task.getDetailDraw().setShouldHandle(dd.getShouldHandle());
            if ("否".equals(dd.getShouldHandle())) {
                task.getDetailDraw().setProcessPerson("");
            }
            Tasklogger finalLogger1 = logger;
            task.getDetailDraw().getQuestions().forEach(x -> {
                if (x.getHandleMethod().isEmpty() && task.getDetailDraw().getAuditPerson() != null) {
                    finalLogger1.setLoggerStatusid(8);
                }
            });
            if ("access".equals(commit)) {
                if (finalLogger1.getLoggerStatusid() != 8 && (task.getDetailDraw().getCompletionTime() == null || task.getDetailDraw().getCompletionTime().isEmpty()))
                    task.getDetailDraw().setCompletionTime(new SimpleDateFormat("yyyy-M-d").format(new Date()));
            }
            // 处理单号
            tdao.save(task);
            // 填写问题
            if (dd.getQuestions() != null) {
                for (DetailDrawQuestion question : dd.getQuestions()) {
                    question.setDds(task.getDetailDraw());
                    if (question.getDdId() != null) {
                        ddqDao.save(question);
                    } else if (!(question.getProblemDescription().trim().length() == 0 && question.getHandleMethod().trim().length() == 0 && question.getProcessOrderNumber().trim().length() == 0 && question.getModify().trim().length() == 0 && question.getRemarks().trim().length() == 0)) {
                        ddqDao.save(question);
                    }
                }
            }
            tservice.updateDetailDraw(req, task.getDetailDraw());
            // 更新日志
            logger = tservice.updateLogger(req, finalLogger1, "xihua");
        }


        // 修改任务中间表状态
        Long pkid = udao.findpkId(logger.getTaskId().getTaskId(), userId);
        Taskuser tu = tudao.findByuserIdAndTaskId2(userId, logger.getTaskId().getTaskId());
        if (tu == null) {
            Taskuser tasku = new Taskuser();
            tasku.setPkId(pkid);
            tasku.setTaskId(task);
            tasku.setUserId(user);
            if (!Objects.isNull(logger.getLoggerStatusid())) {
                tasku.setStatusId(logger.getLoggerStatusid());
            }
            // 存任务中间表
            tudao.save(tasku);
        } else {
            tu.setPkId(pkid);
            tu.setTaskId(task);
            tu.setUserId(user);
            if (!Objects.isNull(logger.getLoggerStatusid())) {

                tu.setStatusId(logger.getLoggerStatusid());
            }
            // 存任务中间表
            tudao.save(tu);
        }

        User findUser = null;
        if (task.getTypeId() == 1) {
            findUser = udao.findid(task.getThreeBook().getProcessPerson());
        }
        if (task.getTypeId() == 2) {
            findUser = udao.findid(task.getDetailDraw().getProcessPerson());
        }
        if (taskuser1 != null) {
            if (!req.getParameter("processPerson").equals(user.getUserName()) && !identifyResponsiblePerson.equals(processPerson)) {
                tudao.delete(taskuser1);
                taskuser1.setUserId(findUser);
                Taskuser t = tudao.findByuserIdAndTaskId2(udao.findByUserName(req.getParameter("processPerson")).getUserId(), task.getTaskId());
                if (t == null) {
                    tudao.save(taskuser1);
                }
            } else {
                Taskuser tasku2 = new Taskuser();
                tasku2.setTaskId(task);
                tasku2.setUserId(findUser);
                if (!Objects.isNull(logger.getLoggerStatusid())) {
                    tasku2.setStatusId(logger.getLoggerStatusid());
                }
                Taskuser t = tudao.findByuserIdAndTaskId2(tasku2.getUserId().getUserId(), tasku2.getTaskId().getTaskId());
                if (t == null) {
                    tudao.save(tasku2);
                }

            }
        } else {
            if (findUser == null ||
                    task.getTypeId() == 1 && !findUser.getUserName().equals(task.getThreeBook().getIdentifyResponsiblePerson())
                    ||
                    task.getTypeId() == 2 && !findUser.getUserName().equals(task.getDetailDraw().getIdentifyResponsiblePerson())
            ) {
                if ("是".equals(dd.getShouldHandle())) {
                    Taskuser tasku2 = new Taskuser();
                    tasku2.setTaskId(task);
                    tasku2.setUserId(findUser);
                    if (!Objects.isNull(logger.getLoggerStatusid())) {

                        tasku2.setStatusId(logger.getLoggerStatusid());
                    }
                    tudao.save(tasku2);
                }
            }

        }
        // logger.getLoggerStatusid()
        List<Taskuser> tus = udao.findpkIdList(logger.getTaskId().getTaskId());
        Tasklogger finalLogger = logger;
        tus.forEach((x -> {
            x.setStatusId(finalLogger.getLoggerStatusid());
            tudao.save(x);
        }));
        // 修改任务状态
        // 存日志
        tldao.save(finalLogger);
        // 通过任务id查看总状态

        List<Integer> statu = tudao.findByTaskId(finalLogger.getTaskId().getTaskId());
        System.out.println(statu);
        // 选出最小的状态id 修改任务表里面的状态
        Integer min = statu.get(0);
        for (Integer integer : statu) {
            if (integer.intValue() < min) {
                min = integer;
            }
        }
        int up = tservice.updateStatusid(finalLogger.getTaskId().getTaskId(), min);

        if (up > 0) {
            System.out.println("任务状态修改成功!");
        }

        if ("notaccess".equals(commit)) {
            if (task.getTypeId() == 1) {
                if (!threeBook.getAuditPerson().equals(task.getReciverlist())) {
                    Taskuser deletetu = tudao.findByuserNameAndTaskId(threeBook.getAuditPerson(), task.getTaskId());
                    tudao.delete(deletetu);
                }
                threeBook.setAuditPerson("");
                bdao.save(threeBook);
            } else {
                if (!detailDraw.getAuditPerson().equals(task.getReciverlist())) {
                    Taskuser deletetu = tudao.findByuserNameAndTaskId(detailDraw.getAuditPerson(), task.getTaskId());
                    tudao.delete(deletetu);
                }
                detailDraw.setAuditPerson("");
                ddDao.save(detailDraw);
            }
        }
        if ("commit".equals(commit)) {
            return "/shenqingbefore?id=" + task.getTaskId();
        }

        return "redirect:/mytask";

    }

    /**
     * 根据发布人这边删除任务和相关联系
     */
    @RequestMapping("shanchu")
    public String delete(HttpServletRequest req, @SessionAttribute("userId") Long userId) {
        // 得到任务的 id
        String taskid = req.getParameter("id");
        Long ltaskid = Long.parseLong(taskid);

        // 根据任务id找出这条任务
        Tasklist task = tdao.findOne(ltaskid);
        if (task.getUsersId().getUserId().equals(userId)) {
            // 删除日志表
            int i = tservice.detelelogger(ltaskid);
            System.out.println(i + "mmmmmmmmmmmm");
            // 分割任务接收人 还要查找联系人的主键并删除接收人中间表
            if (task.getThreeBook() != null) {
                StringTokenizer st = new StringTokenizer(task.getReciverlist() + ";" + task.getThreeBook().getProcessPerson(), ";");
                while (st.hasMoreElements()) {
                    User reciver = udao.findid(st.nextToken());
                    if (reciver != null) {
                        Long pkid = udao.findpkId(task.getTaskId(), reciver.getUserId());
                        if (pkid != null) {
                            int m = tservice.delete(pkid);
                            System.out.println(m + "sssssssssss111");
                        }
                    }


                }
            }
            if (task.getDetailDraw() != null) {
                StringTokenizer st = new StringTokenizer(task.getReciverlist() + ";" + task.getDetailDraw().getProcessPerson(), ";");
                while (st.hasMoreElements()) {
                    User reciver = udao.findid(st.nextToken());
                    if (reciver != null) {
                        Long pkid = udao.findpkId(task.getTaskId(), reciver.getUserId());
                        if (pkid != null) {
                            int m = tservice.delete(pkid);
                            System.out.println(m + "sssssssssss2222");
                        }
                    }

                }

            }

            // 删除这条任务
            tservice.deteletask(task);

            if (task.getThreeBook() != null) {
                bdao.delete(task.getThreeBook());
            }
            if (task.getDetailDraw() != null) {
                ddDao.delete(task.getDetailDraw());
            }

        } else {
            System.out.println("权限不匹配，不能删除");
            return "redirect:/notlimit";

        }
        return "redirect:/taskmanage";

    }

    /**
     * 接收人这边删除
     */
    @RequestMapping("myshanchu")
    public String mydelete(HttpServletRequest req, @SessionAttribute("userId") Long userId) {
        // 用户id
        // 得到任务的 id
        String taskid = req.getParameter("id");
        Long ltaskid = Long.parseLong(taskid);
        Long pkid = udao.findpkId(ltaskid, userId);
        tservice.delete(pkid);

        return "redirect:/mytask";

    }

    /**
     * 修改处理过程
     */
    @RequestMapping("processedit")
    public String processEdit(@Valid ThreeBookProcess pro) {
        System.out.println(pro);
        ThreeBookProcess tp = tbpDao.findByAndTbId(pro.getTbId());
        tp.setHandleMethod(pro.getHandleMethod());
        tp.setProcessOrderNumber(pro.getProcessOrderNumber());
        tp.setRemarks(pro.getRemarks());
        tbpDao.save(tp);
        return "";
    }

    /**
     * 删除处理过程
     */
    @RequestMapping("processremove")
    public String processremove(@RequestParam(value = "tbId") Long tbId, @RequestParam(value = "id") String id, @RequestParam(value = "type") String type) {
        ThreeBookProcess tp = tbpDao.findByAndTbId(tbId);
        tbpDao.delete(tp);
        if ("1".equals(type)) {
            return "redirect:/myseetasks?id=" + id;
        } else {
            return "redirect:/seetasks?id=" + id;
        }
    }


    /**
     * 修改问题
     */
    @RequestMapping("questionedit")
    public String questionedit(@Valid DetailDrawQuestion question) {
        DetailDrawQuestion q = ddqDao.findByDdId(question.getDdId());
        q.setProblemDescription(question.getProblemDescription());
        q.setProblemCount(question.getProblemCount());
        q.setHandleMethod(question.getHandleMethod());
        q.setProcessOrderNumber(question.getProcessOrderNumber());
        q.setModify(question.getModify());
        q.setRemarks(question.getRemarks());
        ddqDao.save(q);
        return "";
    }

    /**
     * 删除问题
     */
    @RequestMapping("questionremove")
    public String questionremove(@RequestParam(value = "ddId") Long ddId, @RequestParam(value = "id") String id, @RequestParam(value = "type") String type) {
        DetailDrawQuestion q = ddqDao.findByDdId(ddId);
        ddqDao.delete(q);
        if ("1".equals(type)) {
            return "redirect:/myseetasks?id=" + id;
        } else {
            return "redirect:/seetasks?id=" + id;
        }
    }

    @RequestMapping("readthreebook")
    public String uploadfile(@RequestParam("file") MultipartFile file,
                             HttpSession session, Model model) throws IllegalStateException, IOException {
        Long userid = Long.parseLong(session.getAttribute("userId") + "");
        User user = udao.findOne(userid);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        File root = new File(this.rootPath, simpleDateFormat.format(new Date()));

        File savepath = new File(root, user.getUserName());

        if (!file.getOriginalFilename().contains("三单")) {
            model.addAttribute("errormess", "需要导入三单文件");
            return "forward:/taskmanage";
        }

        if (!savepath.exists()) {
            savepath.mkdirs();
        }

        String shuffix = FilenameUtils.getExtension(file.getOriginalFilename());
        String newFileName = UUID.randomUUID().toString().toLowerCase() + "." + shuffix;
        File targetFile = new File(savepath, newFileName);
        file.transferTo(targetFile);


        String[] threebookcol = new String[]{
                "序号", "类型", "份数", "三单号", "中文名称", "FCR版本", "状态", "编制人", "最新版", "接收时间", "分发时间", "作废标识", "相关文件编码", "相关文件内部编码", "图纸版本", "专业", "责任方", "识别责任人", "处理人"};


        List<Record> records = OfficeUtils.readOffice(targetFile, threebookcol);
        List<Tasklist> list = new ArrayList<Tasklist>();
        for (Record record : records) {
            Map<String, Object> map = record.getColumns();
            Tasklist tl = new Tasklist();
            ThreeBook tb = new ThreeBook();
            map.forEach((s1, o) -> {

                        switch (s1) {
                            case "类型":
                                tb.setType(o.toString());
                                break;
                            case "三单号":
                                tb.setThreeBookNumbers(o.toString());
                                break;
                            case "中文名称":
                                tb.setChineseName(o.toString());
                                break;
                            case "FCR版本":
                                tb.setFcrVersion(o.toString());
                                break;
                            case "状态":
                                tb.setState(o.toString());
                                break;
                            case "编制人":
                                tb.setPreparedBy(o.toString());
                                break;
                            case "最新版":
                                tb.setLatestVersion(o.toString());
                                break;
                            case "接收时间":
                                tb.setReceivingTime(o.toString());
                                break;
                            case "分发时间":
                                tb.setDistributionTime(o.toString());
                                break;
                            case "作废标识":
                                tb.setInvalidIdentification(o.toString());
                                break;
                            case "相关文件编码":
                                tb.setRelatedDocumentCodes(o.toString());
                                break;
                            case "相关文件内部编码":
                                tb.setInternalCodes(o.toString());
                                break;
                            case "图纸版本":
                                tb.setDrawVersion(o.toString());
                                break;
                            case "专业":
                                tb.setProfessionalType(o.toString());
                                break;
                            case "责任方":
                                tb.setResponsibleParty(o.toString());
                                break;
                            case "识别责任人":
                                tb.setIdentifyResponsiblePerson(o.toString());
                                break;
                            case "处理人":
                                tb.setProcessPerson(o.toString());
                                break;
                        }
                    }

            );
            tl.setThreeBook(tb);
            list.add(tl);
        }

        if (targetFile.exists()) {
            targetFile.delete();
        }

        for (Tasklist tasklist : list) {
            if (tasklist.getThreeBook().getIdentifyResponsiblePerson().equals("") || tasklist.getThreeBook().getIdentifyResponsiblePerson().equals("/")) {
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
            tasklist.setTypeId(1L);
            tasklist.setTaskDescribe("@@");
            tasklist.setStatusId(5);
            tasklist.setReciverlist(tasklist.getThreeBook().getIdentifyResponsiblePerson());
            // 三单
            // 查询三单，如果无，则新建任务
            ThreeBook querythreeBook = bdao.findByThreeBookNumbersAndDrawVersion(tasklist.getThreeBook().getThreeBookNumbers(), tasklist.getThreeBook().getRelatedDocumentCodes(), tasklist.getThreeBook().getDrawVersion());
            if (querythreeBook == null) {
                ThreeBook result = bdao.save(tasklist.getThreeBook());
                tdao.save(tasklist);
                // 分割任务接收人
                StringTokenizer st = new StringTokenizer(tasklist.getReciverlist() + (tasklist.getThreeBook().getProcessPerson() != null && !tasklist.getReciverlist().equals(tasklist.getThreeBook().getProcessPerson()) ? ";" + tasklist.getThreeBook().getProcessPerson() : ""), ";");
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

        }


        model.addAttribute("success", "文件导入成功");


        return "redirect:/taskmanage";
    }


    @RequestMapping("readthreebookAll")
    public String uploadfileAll(@RequestParam("file") MultipartFile file,
                                HttpSession session, Model model) throws IllegalStateException, IOException {
        Long userid = Long.parseLong(session.getAttribute("userId") + "");
        User user = udao.findOne(userid);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
        File root = new File(this.rootPath, simpleDateFormat.format(new Date()));

        File savepath = new File(root, user.getUserName());

        if (!file.getOriginalFilename().contains("三单")) {
            model.addAttribute("errormess", "需要导入三单文件");
            return "forward:/threebookmanage";
        }

        if (!savepath.exists()) {
            savepath.mkdirs();
        }

        String shuffix = FilenameUtils.getExtension(file.getOriginalFilename());
        String newFileName = UUID.randomUUID().toString().toLowerCase() + "." + shuffix;
        File targetFile = new File(savepath, newFileName);
        file.transferTo(targetFile);


        String[] threebookcol = new String[]{
                "序号", "类型", "份数", "三单号", "中文名称", "FCR版本", "状态", "编制人", "最新版", "接收时间", "分发时间", "作废标识", "相关文件编码", "相关文件内部编码", "图纸版本", "专业", "责任方", "识别责任人",
                "处理人", "审核人", "是否需要处理", "处理方式(ICR / 细化)", "处理单号", "处理完成时间", "责任方2", "备注", "是否涉及索赔", "计划关闭时间（CR关闭时间）直接关闭/转FCR/转DEN", "预警", "实际关闭时间", "未关闭原因", "设计点值", "审核点值"
        };


        List<Record> records = OfficeUtils.readOffice(targetFile, threebookcol);
        List<ThreeBook> list = new ArrayList<>();
        for (Record record : records) {
            Map<String, Object> map = record.getColumns();
            ThreeBook tb = new ThreeBook();
            map.forEach((s1, o) -> {
                        switch (s1) {
                            case "类型":
                                tb.setType(o.toString());
                                break;
                            case "三单号":
                                tb.setThreeBookNumbers(o.toString());
                                break;
                            case "中文名称":
                                tb.setChineseName(o.toString());
                                break;
                            case "FCR版本":
                                tb.setFcrVersion(o.toString());
                                break;
                            case "状态":
                                tb.setState(o.toString());
                                break;
                            case "编制人":
                                tb.setPreparedBy(o.toString());
                                break;
                            case "最新版":
                                tb.setLatestVersion(o.toString());
                                break;
                            case "接收时间":
                                tb.setReceivingTime(o.toString());
                                break;
                            case "分发时间":
                                tb.setDistributionTime(o.toString());
                                break;
                            case "作废标识":
                                tb.setInvalidIdentification(o.toString());
                                break;
                            case "相关文件编码":
                                tb.setRelatedDocumentCodes(o.toString());
                                break;
                            case "相关文件内部编码":
                                tb.setInternalCodes(o.toString());
                                break;
                            case "图纸版本":
                                tb.setDrawVersion(o.toString());
                                break;
                            case "专业":
                                tb.setProfessionalType(o.toString());
                                break;
                            case "责任方":
                                tb.setResponsibleParty(o.toString());
                                break;
                            case "识别责任人":
                                tb.setIdentifyResponsiblePerson(o.toString());
                                break;
                            case "处理人":
                                tb.setProcessPerson(o.toString());
                                break;
                            case "审核人":
                                tb.setAuditPerson(o.toString());
                                break;
                            case "是否需要处理":
                                tb.setShouldHandle(o.toString());
                                break;
                            case "处理方式(ICR / 细化)":
                                tb.setHandleMethod(o.toString());
                                break;
                            case "处理单号":
                                tb.setProcessOrderNumber(o.toString());
                                break;
                            case "处理完成时间":
                                tb.setProcessCompletionTime(o.toString());
                                break;
                            case "责任方2":
                                tb.setProcessResponsibleParty(o.toString());
                                break;
                            case "备注":
                                tb.setRemarks(o.toString());
                                break;
                            case "是否涉及索赔":
                                tb.setShouldClaim(o.toString());
                                break;
                            case "计划关闭时间（CR关闭时间）直接关闭/转FCR/转DEN":
                                tb.setPlanToCloseTime(o.toString());
                                break;
                            case "预警":
                                break;
                            case "实际关闭时间":
                                tb.setActualCloseTime(o.toString());
                                break;
                            case "未关闭原因":
                                break;
                            case "设计点值":
                                tb.setDesignPointValue(o.toString());
                                break;
                            case "审核点值":
                                tb.setAuditPointValue(o.toString());
                                break;
                        }
                    }

            );
            list.add(tb);
        }

        if (targetFile.exists()) {
            targetFile.delete();
        }


        for (ThreeBook threeBook : list) {
            System.out.println(threeBook);

            // 三单
            // 查询三单，如果无，则新建任务
            ThreeBook querythreeBook = bdao.findByThreeBookNumbersAndDrawVersion(threeBook.getThreeBookNumbers(), threeBook.getRelatedDocumentCodes(), threeBook.getDrawVersion());
            if (querythreeBook == null) {
                ThreeBook result = bdao.save(threeBook);
            }

        }


        model.addAttribute("success", "文件导入成功");


        return "redirect:/threebookmanage";
    }


}
