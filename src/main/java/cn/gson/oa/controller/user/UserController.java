package cn.gson.oa.controller.user;

import java.util.List;

import cn.gson.oa.model.dao.system.StatusDao;
import cn.gson.oa.model.dao.system.TypeDao;
import cn.gson.oa.model.dao.user.*;
import cn.gson.oa.model.entity.system.SystemStatusList;
import cn.gson.oa.model.entity.system.SystemTypeList;
import cn.gson.oa.model.entity.user.Dept;
import cn.gson.oa.model.entity.user.UserLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.github.pagehelper.util.StringUtil;
import com.github.stuxuhai.jpinyin.PinyinException;
import com.github.stuxuhai.jpinyin.PinyinFormat;
import com.github.stuxuhai.jpinyin.PinyinHelper;

import cn.gson.oa.model.dao.roledao.RoleDao;
import cn.gson.oa.model.entity.role.Role;
import cn.gson.oa.model.entity.user.Position;
import cn.gson.oa.model.entity.user.User;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    UserDao udao;
    @Autowired
    UserLogDao userLogDao;
    @Autowired
    UserLogRecordDao userLogRecordDao;
    @Autowired
    DeptDao ddao;
    @Autowired
    PositionDao pdao;
    @Autowired
    RoleDao rdao;
    @Autowired
    private TypeDao tydao;
    @Autowired
    private StatusDao sdao;

    @Value("${user.first.password}")
    private String password;

    @RequestMapping("userlogmanage")
    public String userlogmanage() {
        return "user/userlogmanage";
    }

    @RequestMapping("usermanage")
    public String usermanage(Model model, @RequestParam(value = "page", defaultValue = "0") int page,
                             @RequestParam(value = "size", defaultValue = "10") int size
    ) {
        Sort sort = new Sort(new Order(Direction.ASC, "role"));
        Pageable pa = new PageRequest(page, size, sort);
        Page<User> userspage = udao.findByIsLock(0, pa);
        List<User> users = userspage.getContent();
        model.addAttribute("users", users);
        model.addAttribute("page", userspage);
        model.addAttribute("url", "usermanagepaging");
        return "user/usermanage";
    }

    @RequestMapping("names")
    public ModelAndView chaname(@SessionAttribute("userId") Long userId, @RequestParam(value = "page", defaultValue = "0") int page,
                                @RequestParam(value = "size", defaultValue = "10") int size,
                                @RequestParam(value = "title", required = false) String title,
                                @RequestParam(value = "qufen", required = false) String qufen) {
        System.out.println(title);
        System.out.println(qufen);
        Sort sort = new Sort(new Order(Direction.ASC, "dept"));
        Pageable pa = new PageRequest(page, size, sort);
        System.out.println("11111111111");
        Page<User> userspage = null;
        if (StringUtil.isEmpty(title)) {
            userspage = udao.findByIsLock(0, pa);
        } else {
            System.out.println(title);
            userspage = udao.findnamelike(title, pa);
        }
        List<User> users = userspage.getContent();
        Iterable<SystemTypeList> typelist = tydao.findAll();
        // 查询状态表
        Iterable<SystemStatusList> statuslist = sdao.findAll();

        Page<User> pagelist = userspage;
        List<User> emplist = userspage.getContent();
        // 查询部门表
        Iterable<Dept> deptlist = ddao.findAll();
        // 查职位表
        Iterable<Position> poslist = pdao.findAll();
        ModelAndView mav = new ModelAndView("common/recivers");
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

    @RequestMapping("usermanagepaging")
    public String userPaging(Model model, @RequestParam(value = "page", defaultValue = "0") int page,
                             @RequestParam(value = "size", defaultValue = "10") int size,
                             @RequestParam(value = "usersearch", required = false) String usersearch
    ) {
        Sort sort = new Sort(new Order(Direction.ASC, "dept"));
        Pageable pa = new PageRequest(page, size, sort);
        Page<User> userspage = null;
        if (StringUtil.isEmpty(usersearch)) {
            userspage = udao.findByIsLock(0, pa);
        } else {
            System.out.println(usersearch);
            userspage = udao.findnamelike(usersearch, pa);
        }
        List<User> users = userspage.getContent();
        model.addAttribute("users", users);
        model.addAttribute("page", userspage);
        model.addAttribute("url", "usermanagepaging");

        return "user/usermanagepaging";
    }

    // 用户管理-编辑
    @RequestMapping(value = "useredit", method = RequestMethod.GET)
    public String usereditget(@RequestParam(value = "userid", required = false) Long userid, Model model) {
        if (userid != null) {
            User user = udao.findOne(userid);
            model.addAttribute("where", "xg");
            model.addAttribute("user", user);
        }
        List<Dept> depts = (List<Dept>) ddao.findAll();
        List<Position> positions = (List<Position>) pdao.findAll();
        List<Role> roles = rdao.findAll();

        model.addAttribute("depts", depts);
        model.addAttribute("positions", positions);
        model.addAttribute("roles", roles);
        return "user/edituser";
    }

    @RequestMapping(value = "useredit", method = RequestMethod.POST)
    public String usereditpost(User user,
                               @RequestParam("deptid") Long deptid,
                               @RequestParam("positionid") Long positionid,
                               @RequestParam("roleid") Long roleid,
                               @RequestParam(value = "isbackpassword", required = false) boolean isbackpassword,
                               Model model) throws PinyinException {
        Dept dept = ddao.findOne(deptid);
        Position position = pdao.findOne(positionid);
        Role role = rdao.findOne(roleid);
        if (user.getUserId() == null) {
            String pinyin = PinyinHelper.convertToPinyinString(user.getUserName(), "", PinyinFormat.WITHOUT_TONE);
            user.setPinyin(pinyin);
            user.setRealName(user.getUserName());
            user.setPassword(this.password);
            user.setDept(dept);
            user.setRole(role);
            user.setPosition(position);
            user.setFatherId(dept.getDeptmanager());
            udao.save(user);
        } else {
            User user2 = udao.findOne(user.getUserId());
            user2.setUid(user.getUid());
            user2.setUserTel(user.getUserTel());
            user2.setRealName(user.getUserName());
            user2.setEmail(user.getEmail());
            user2.setAddress(user.getAddress());
            user2.setUserEdu(user.getUserEdu());
            user2.setSchool(user.getSchool());
            user2.setIdCard(user.getIdCard());
            user2.setBank(user.getBank());
            user2.setThemeSkin(user.getThemeSkin());
            user2.setSalary(user.getSalary());
            user2.setFatherId(dept.getDeptmanager());
            if (isbackpassword) {
                user2.setPassword(this.password);
            }
            user2.setDept(dept);
            user2.setRole(role);
            user2.setPosition(position);
            udao.save(user2);
        }


        model.addAttribute("success", 1);
        return "/usermanage";
    }


    @RequestMapping("deleteuser")
    public String deleteuser(@RequestParam("userid") Long userid, Model model) {
        User user = udao.findOne(userid);
        List<UserLog> list = userLogDao.findByUser2(userid);
        list.forEach(x -> userLogDao.delete(x.getId()));
        userLogRecordDao.findbasekey2(userid).forEach(x -> userLogRecordDao.delete(x.getId()));
//        user.setIsLock(1);l

        udao.delete(user);

        model.addAttribute("success", 1);
        return "/usermanage";

    }

    @RequestMapping("useronlyname")
    public @ResponseBody
    boolean useronlyname(@RequestParam("username") String username) {
        System.out.println(username);
        User user = udao.findByUserName(username);
        System.out.println(user);
        if (user == null) {
            return true;
        }
        return false;
    }

    @RequestMapping("selectdept")
    public @ResponseBody
    List<Position> selectdept(@RequestParam("selectdeptid") Long deptid) {

        return pdao.findByDeptidAndNameNotLike(deptid, "%经理");
    }


}
