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
import cn.gson.oa.model.entity.book.ThreeBookProcess;
import cn.gson.oa.model.entity.role.Role;
import cn.gson.oa.model.entity.system.SystemStatusList;
import cn.gson.oa.model.entity.system.SystemTypeList;
import cn.gson.oa.model.entity.task.Tasklist;
import cn.gson.oa.model.entity.task.Tasklogger;
import cn.gson.oa.model.entity.user.Dept;
import cn.gson.oa.model.entity.user.User;
import cn.gson.oa.services.task.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/")
public class ShenqingController {

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


    @RequestMapping("shenqingbefore")
    public ModelAndView myseetask(HttpServletRequest req, @SessionAttribute("userId") Long userId, @RequestParam(value = "page", defaultValue = "0") int page,
                                  @RequestParam(value = "size", defaultValue = "10") int size) {
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
}
