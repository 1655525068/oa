package cn.gson.oa.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.util.StringUtil;
import com.github.stuxuhai.jpinyin.PinyinException;
import com.github.stuxuhai.jpinyin.PinyinFormat;
import com.github.stuxuhai.jpinyin.PinyinHelper;

import cn.gson.oa.model.dao.roledao.RoleDao;
import cn.gson.oa.model.dao.user.DeptDao;
import cn.gson.oa.model.dao.user.PositionDao;
import cn.gson.oa.model.dao.user.UserDao;
import cn.gson.oa.model.entity.role.Role;
import cn.gson.oa.model.entity.user.Dept;
import cn.gson.oa.model.entity.user.Position;
import cn.gson.oa.model.entity.user.User;

@Controller
@RequestMapping("/")
public class UserController {
	
	@Autowired
	UserDao udao;
	@Autowired
	DeptDao ddao;
	@Autowired
	PositionDao pdao;
	@Autowired
	RoleDao rdao;
	
	@RequestMapping("userlogmanage")
	public String userlogmanage() {
		return "user/userlogmanage";
	}
	
	@RequestMapping("usermanage")
	public String usermanage(Model model,@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="size",defaultValue="10") int size
			) {
		Sort sort=new Sort(new Order(Direction.ASC,"dept"));
		Pageable pa=new PageRequest(page, size,sort);
		Page<User> userspage = udao.findByIsLock(0, pa);
		List<User> users=userspage.getContent();
		model.addAttribute("users",users);
		model.addAttribute("page", userspage);
		model.addAttribute("url", "usermanagepaging");
		return "user/usermanage";
	}
	
	@RequestMapping("usermanagepaging")
	public String userPaging(Model model,@RequestParam(value="page",defaultValue="0") int page,
			@RequestParam(value="size",defaultValue="10") int size,
			@RequestParam(value="usersearch",required=false) String usersearch
			){
		Sort sort=new Sort(new Order(Direction.ASC,"dept"));
		Pageable pa=new PageRequest(page, size,sort);
		Page<User> userspage = null;
		if(StringUtil.isEmpty(usersearch)){
			userspage =  udao.findByIsLock(0, pa);
		}else{
			System.out.println(usersearch);
			userspage = udao.findnamelike(usersearch, pa);
		}
		List<User> users=userspage.getContent();
		model.addAttribute("users",users);
		model.addAttribute("page", userspage);
		model.addAttribute("url", "usermanagepaging");
		
		return "user/usermanagepaging";
	}
	
	// 用户管理-编辑
	@RequestMapping(value="useredit",method = RequestMethod.GET)
	public String usereditget(@RequestParam(value = "userid",required=false) Long userid,Model model) {
		if(userid!=null){
			User user = udao.findOne(userid);
			model.addAttribute("where","xg");
			model.addAttribute("user",user);
		}
//		List<Dept> depts = (List<Dept>) ddao.findAll();
//		List<Position> positions = (List<Position>) pdao.findAll();
		List<Role> roles = rdao.findAll();

		model.addAttribute("roles", roles);
		return "user/edituser";
	}
	
	@RequestMapping(value="useredit",method = RequestMethod.POST)
	public String usereditpost(User user,
			@RequestParam("roleid") Long roleid,
			@RequestParam(value = "isbackpassword",required=false) boolean isbackpassword,
			Model model) throws PinyinException {
		Role role = rdao.findOne(roleid);
		if(user.getUserId()==null){
			String pinyin=PinyinHelper.convertToPinyinString(user.getUserName(), "", PinyinFormat.WITHOUT_TONE);
			user.setPinyin(pinyin);
			user.setPassword("123456");
			user.setRole(role);
			udao.save(user);
		}else{
			User user2 = udao.findOne(user.getUserId());
			user2.setUserTel(user.getUserTel());
			user2.setRealName(user.getRealName());
			user2.setEamil(user.getEamil());
			user2.setAddress(user.getAddress());
			user2.setUserEdu(user.getUserEdu());
			user2.setSchool(user.getSchool());
			user2.setIdCard(user.getIdCard());
			user2.setBank(user.getBank());
			user2.setThemeSkin(user.getThemeSkin());
			user2.setSalary(user.getSalary());
			if(isbackpassword){
				user2.setPassword("123456");
			}
			user2.setRole(role);
			udao.save(user2);
		}
		
		model.addAttribute("success",1);
		return "/usermanage";
	}
	
	
	@RequestMapping("deleteuser")
	public String deleteuser(@RequestParam("userid") Long userid,Model model){
		User user = udao.findOne(userid);
		
		user.setIsLock(1);
		
		udao.save(user);
		
		model.addAttribute("success",1);
		return "/usermanage";
		
	}
	
	@RequestMapping("useronlyname")
    public @ResponseBody boolean useronlyname(@RequestParam("username") String username){
		System.out.println(username);
		User user = udao.findByUserName(username);
		System.out.println(user);
		if(user==null){
			return true;
		}
		return false;
    }
	
	@RequestMapping("selectdept")
	public @ResponseBody List<Position> selectdept(@RequestParam("selectdeptid") Long deptid){
		
		return pdao.findByDeptidAndNameNotLike(deptid, "%经理");
	}
	
	

}
