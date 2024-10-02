package cn.gson.oa.controller.task;

import cn.gson.oa.model.dao.book.DetailDrawDao;
import cn.gson.oa.model.dao.book.DetailDrawQuestionDao;
import cn.gson.oa.model.dao.book.ThreeBookDao;
import cn.gson.oa.model.dao.book.ThreeBookProcessDao;
import cn.gson.oa.model.dao.roledao.RoleDao;
import cn.gson.oa.model.dao.system.StatusDao;
import cn.gson.oa.model.dao.system.TypeDao;
import cn.gson.oa.model.dao.taskdao.TaskDao;
import cn.gson.oa.model.dao.taskdao.TaskloggerDao;
import cn.gson.oa.model.dao.taskdao.TaskuserDao;
import cn.gson.oa.model.dao.user.DeptDao;
import cn.gson.oa.model.dao.user.PositionDao;
import cn.gson.oa.model.dao.user.UserDao;
import cn.gson.oa.model.entity.book.DetailDrawQuestion;
import cn.gson.oa.model.entity.book.ThreeBook;
import cn.gson.oa.model.entity.book.ThreeBookProcess;
import cn.gson.oa.model.entity.role.Role;
import cn.gson.oa.model.entity.system.SystemStatusList;
import cn.gson.oa.model.entity.system.SystemTypeList;
import cn.gson.oa.model.entity.task.Tasklist;
import cn.gson.oa.model.entity.task.Tasklogger;
import cn.gson.oa.model.entity.task.Taskuser;
import cn.gson.oa.model.entity.user.Dept;
import cn.gson.oa.model.entity.user.User;
import cn.gson.oa.services.book.BookServices;
import cn.gson.oa.services.task.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping("/")
public class ShenqingController {
    @Autowired
    private ThreeBookDao tbdao;
    @Autowired
    private DetailDrawDao dddao;

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
    private TaskloggerDao tldao;

    @Autowired
    private RoleDao rdao;

    @Autowired
    private ThreeBookProcessDao tbpDao;

    @Autowired
    private DetailDrawQuestionDao ddqDao;

    @Autowired
    private TaskService tservice;


    @RequestMapping("shenqingbefore")
    public ModelAndView shenqingbefore(HttpServletRequest req, @SessionAttribute("userId") Long userId, @RequestParam(value = "page", defaultValue = "0") int page,
                                       @RequestParam(value = "size", defaultValue = "50") int size) {
        Pageable pa = new PageRequest(page, size);

        ModelAndView mav = new ModelAndView("task/shenqing");
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


        mav.addObject("task", task);
        mav.addObject("user", user);
        mav.addObject("c_user", c_user);
        mav.addObject("status", status);
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
        mav.addObject("url", "paixu");

        return mav;

    }

    @RequestMapping("shenqingzhong")
    public String shenqingzhong(Tasklogger logger, @SessionAttribute("userId") Long userId, @Valid ThreeBook tb) {


        Tasklist task = tdao.getOne(logger.getTaskId().getTaskId());

        // 修改任务状态
        tservice.updateStatusid(logger.getTaskId().getTaskId(), 6);


        User user = udao.findid(tb.getAuditPerson());
        if (user != null) {
            if (task.getTypeId() == 1) {
                //
                task.getThreeBook().setAuditPerson(tb.getAuditPerson());
                tbdao.save(task.getThreeBook());
            } else {
                //
                task.getDetailDraw().setAuditPerson(tb.getAuditPerson());
                dddao.save(task.getDetailDraw());
            }
        }

        Long pkid = udao.findpkId(logger.getTaskId().getTaskId(), userId);
        Taskuser taskuser = tudao.findByuserIdAndTaskId2(userId, logger.getTaskId().getTaskId());

        if (pkid != null && taskuser != null && user != null) {
            if (taskuser.getUserId().getUserId().equals(userId)) {
                taskuser.setStatusId(6);
            }
            tudao.save(taskuser);
            Taskuser taskuser1 = tudao.findByuserIdAndTaskId2(user.getUserId(), logger.getTaskId().getTaskId());
            if (taskuser1 == null) {
                Taskuser tasku1 = new Taskuser();
                tasku1.setTaskId(task);
                tasku1.setUserId(user);
                tasku1.setStatusId(6);
                tudao.save(tasku1);
            }
        } else {
            Taskuser tasku1 = new Taskuser();
            tasku1.setTaskId(task);
            tasku1.setUserId(user);
            tasku1.setStatusId(6);
            tudao.save(tasku1);
        }

        List<Taskuser> tus = udao.findpkIdList(logger.getTaskId().getTaskId());
        tus.forEach((x -> {
            x.setStatusId(6);
            tudao.save(x);
        }));

        return "redirect:/mytask";


    }

    /**
     * 审核管理
     */
    @RequestMapping("shenqingmanage")
    public String index5(@SessionAttribute("userId") Long userId, Model model,
                         @RequestParam(value = "page", defaultValue = "0") int page,
                         @RequestParam(value = "size", defaultValue = "50") int size) {
        Pageable pa = new PageRequest(page, size);
        Page<Tasklist> tasklist = tservice.index33(userId, null, page, size);

        Page<Tasklist> tasklist2 = tdao.findByTickingIsNotNull(pa);
        if (tasklist != null) {
            List<Map<String, Object>> list = tservice.index44(tasklist, userId);
            model.addAttribute("page", tasklist);
            model.addAttribute("tasklist", list);
        } else {
            List<Map<String, Object>> list2 = tservice.index44(tasklist2, userId);
            model.addAttribute("page", tasklist2);
            model.addAttribute("tasklist", list2);
        }
        model.addAttribute("url", "mychaxun");
        return "task/myshenqing";

    }


}
