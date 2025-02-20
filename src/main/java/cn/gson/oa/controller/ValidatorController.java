package cn.gson.oa.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import cn.gson.oa.model.dao.book.DrawTypeDao;
import cn.gson.oa.model.dao.book.ProfessionDao;
import cn.gson.oa.model.entity.book.DetailDraw;
import cn.gson.oa.model.entity.book.DrawType;
import cn.gson.oa.model.entity.book.Profession;
import cn.gson.oa.model.entity.book.ThreeBook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import cn.gson.oa.common.formValid.BindingResultVOUtil;
import cn.gson.oa.common.formValid.MapToList;
import cn.gson.oa.common.formValid.ResultEnum;
import cn.gson.oa.common.formValid.ResultVO;
import cn.gson.oa.model.dao.roledao.RoleDao;
import cn.gson.oa.model.dao.system.StatusDao;
import cn.gson.oa.model.dao.system.TypeDao;

import cn.gson.oa.model.dao.user.DeptDao;
import cn.gson.oa.model.dao.user.UserDao;
import cn.gson.oa.model.entity.role.Role;
import cn.gson.oa.model.entity.system.SystemStatusList;
import cn.gson.oa.model.entity.system.SystemTypeList;
import cn.gson.oa.model.entity.task.Tasklist;
import cn.gson.oa.model.entity.user.Dept;
import cn.gson.oa.model.entity.user.User;


@Controller
@RequestMapping("/")
public class ValidatorController {

    Logger log = LoggerFactory.getLogger(getClass());

    @Autowired
    private StatusDao sdao;
    @Autowired
    private TypeDao tydao;
    @Autowired
    private UserDao udao;
    @Autowired
    private DeptDao ddao;
    @Autowired
    private RoleDao rdao;
    @Autowired
    private ProfessionDao pfDao;
    @Autowired
    private DrawTypeDao dtDao;

    @RequestMapping("ck_addtask")
    public String addtask(HttpServletRequest request, @Valid Tasklist tlist, @Valid ThreeBook threeBook, BindingResult br, HttpSession session,
                          @RequestParam(value = "page", defaultValue = "0") int page,
                          @RequestParam(value = "size", defaultValue = "10") int size) {
        request.setAttribute("tasklist", tlist);
        request.setAttribute("threeBook", threeBook);
        Pageable pa = new PageRequest(page, size);

        // 这里返回ResultVO对象，如果校验通过，ResultEnum.SUCCESS.getCode()返回的值为200；否则就是没有通过；
        ResultVO res = BindingResultVOUtil.hasErrors(br);
        System.out.println("tlist:" + tlist);
        if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
            List<Object> list = new MapToList<>().mapToList(res.getData());
            request.setAttribute("errormess", list.get(0).toString());
            System.out.println("list错误的实体类信息：" + tlist);
            System.out.println("list错误详情:" + list);
            System.out.println("list错误第一条:" + list.get(0));
            System.out.println("啊啊啊错误的信息——：" + list.get(0).toString());
            // 下面的info信息是打印出详细的信息
            log.info("getData:{}", res.getData());
            log.info("getCode:{}", res.getCode());
            log.info("getMsg:{}", res.getMsg());


            String userId = ((String) session.getAttribute("userId")).trim();
            Long userid = Long.parseLong(userId);


            // 查询类型表
            Iterable<SystemTypeList> typelist = tydao.findAll();
            // 查询状态表
            Iterable<SystemStatusList> statuslist = sdao.findAll();
            // 查询部门下面的员工
            Page<User> pagelist = udao.findByFatherId(userid, pa);
            List<User> emplist = pagelist.getContent();
            // 查询部门表
            Iterable<Dept> deptlist = ddao.findAll();
            // 查角色表
            Iterable<Role> rolelist = rdao.findAll();
            // 专业列表
            Iterable<Profession> professions = pfDao.findAll();
            // 图纸列表
            Iterable<DrawType> drawTypes = dtDao.findAll();
            request.setAttribute("typelist", typelist);
            request.setAttribute("statuslist", statuslist);
            request.setAttribute("emplist", emplist);
            request.setAttribute("page", pagelist);
            request.setAttribute("deptlist", deptlist);
            request.setAttribute("rolelist", rolelist);
            request.setAttribute("professions", professions);
            request.setAttribute("drawTypes", drawTypes);
            return "task/addtask";
        } else {

            return "forward:/addtasks";
        }


    }

    @RequestMapping("ck_addtaskdetail")
    public String addtaskdetail(HttpServletRequest request, @Valid Tasklist tlist, @Valid DetailDraw detailDraw, BindingResult br, HttpSession session,
                                @RequestParam(value = "page", defaultValue = "0") int page,
                                @RequestParam(value = "size", defaultValue = "10") int size) {
        request.setAttribute("tasklist", tlist);
        request.setAttribute("detailDraw", detailDraw);
        Pageable pa = new PageRequest(page, size);

        // 这里返回ResultVO对象，如果校验通过，ResultEnum.SUCCESS.getCode()返回的值为200；否则就是没有通过；
        ResultVO res = BindingResultVOUtil.hasErrors(br);
        System.out.println("tlist:" + tlist);
        if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
            List<Object> list = new MapToList<>().mapToList(res.getData());
            request.setAttribute("errormess", list.get(0).toString());
            System.out.println("list错误的实体类信息：" + tlist);
            System.out.println("list错误详情:" + list);
            System.out.println("list错误第一条:" + list.get(0));
            System.out.println("啊啊啊错误的信息——：" + list.get(0).toString());
            // 下面的info信息是打印出详细的信息
            log.info("getData:{}", res.getData());
            log.info("getCode:{}", res.getCode());
            log.info("getMsg:{}", res.getMsg());


            String userId = ((String) session.getAttribute("userId")).trim();
            Long userid = Long.parseLong(userId);


            // 查询类型表
            Iterable<SystemTypeList> typelist = tydao.findAll();
            // 查询状态表
            Iterable<SystemStatusList> statuslist = sdao.findAll();
            // 查询部门下面的员工
            Page<User> pagelist = udao.findByFatherId(userid, pa);
            List<User> emplist = pagelist.getContent();
            // 查询部门表
            Iterable<Dept> deptlist = ddao.findAll();
            // 查角色表
            Iterable<Role> rolelist = rdao.findAll();
            // 专业列表
            Iterable<Profession> professions = pfDao.findAll();
            // 图纸列表
            Iterable<DrawType> drawTypes = dtDao.findAll();
            request.setAttribute("typelist", typelist);
            request.setAttribute("statuslist", statuslist);
            request.setAttribute("emplist", emplist);
            request.setAttribute("page", pagelist);
            request.setAttribute("deptlist", deptlist);
            request.setAttribute("rolelist", rolelist);
            request.setAttribute("professions", professions);
            request.setAttribute("drawTypes", drawTypes);
            return "task/addtaskdetail";
        } else {

            return "forward:/addtasksdetail";
        }


    }

}
