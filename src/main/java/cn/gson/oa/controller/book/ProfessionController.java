package cn.gson.oa.controller.book;


import cn.gson.oa.common.formValid.BindingResultVOUtil;
import cn.gson.oa.common.formValid.MapToList;
import cn.gson.oa.common.formValid.ResultEnum;
import cn.gson.oa.common.formValid.ResultVO;
import cn.gson.oa.model.dao.book.ProfessionDao;
import cn.gson.oa.model.entity.book.Profession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class ProfessionController {
    @Autowired
    private ProfessionDao prDao;

    /**
     * 专业表格界面
     *
     * @param req
     * @return
     */
    @RequestMapping("testsysprofession")
    public String testsysprofession(HttpServletRequest req) {
        Iterable<Profession> professionList = prDao.findAll();
        req.setAttribute("professionList", professionList);
        return "book/professionmanage";
    }


    /**
     * 查找专业表格
     *
     * @param req
     * @return
     */
    @RequestMapping("professiontable")
    public String professiontable(HttpServletRequest req) {

        if (!StringUtils.isEmpty(req.getParameter("name"))) {
            String name = req.getParameter("name");
            req.setAttribute("professionList", prDao.findAllByLikeProName(name));
        } else {
            Iterable<Profession> professionList = prDao.findAll();
            req.setAttribute("professionList", professionList);
        }
        return "book/professiontable";
    }

    /**
     * 专业编辑界面
     *
     * @param req
     * @return
     */
    @RequestMapping("professionedit")
    public String professionedit(HttpServletRequest req) {
        if (!StringUtils.isEmpty(req.getParameter("proId"))) {
            Long proId = Long.parseLong(req.getParameter("proId"));
            Profession profession = prDao.findByProId(proId);
            req.setAttribute("profession", profession);
            HttpSession session = req.getSession();
            session.setAttribute("proId", proId);
        }
        return "book/professionedit";
    }

    /**
     * 系统管理表单验证
     *
     * @param req
     * @param pro
     * @param br  后台校验表单数据，不通过则回填数据，显示错误信息；通过则直接执行业务，例如新增、编辑等；
     * @return
     */
    @RequestMapping("professioncheck")
    public String professioncheck(HttpServletRequest req, @Valid Profession pro, BindingResult br) {
        req.setAttribute("menuObj", pro);
        System.out.println(pro);
        // 这里返回ResultVO对象，如果校验通过，ResultEnum.SUCCESS.getCode()返回的值为200；否则就是没有通过；
        ResultVO res = BindingResultVOUtil.hasErrors(br);
        // 校验失败
        if (!ResultEnum.SUCCESS.getCode().equals(res.getCode())) {
            List<Object> list = new MapToList<>().mapToList(res.getData());
            req.setAttribute("errormess", list.get(0).toString());
            // 代码调试阶段，下面是错误的相关信息；
            System.out.println("list错误的实体类信息：" + pro);
            System.out.println("list错误详情:" + list);
            System.out.println("list错误第一条:" + list.get(0));
            System.out.println("啊啊啊错误的信息——：" + list.get(0).toString());
        }
        // 校验通过，下面写自己的逻辑业务
        else {
            HttpSession session = req.getSession();
            // 判断是否从编辑界面进来的，前面有"session.setAttribute("getId",getId);",在这里获取，并remove掉；
            if (!StringUtils.isEmpty(session.getAttribute("proId"))) {
                Long proId = (Long) session.getAttribute("proId"); // 获取进入编辑界面的menuID值
                pro.setProId(proId);
                session.removeAttribute("proId");
            }
            // 执行业务代码
            Iterable<Profession> professions = prDao.findAllByProName(pro.getProName());
            if (((ArrayList) professions).size() == 0) {
                prDao.save(pro);
                System.out.println("此操作是正确的");
                req.setAttribute("success", "后台验证成功");
            } else {
                req.setAttribute("errormess", "名称已存在");
            }

        }
        System.out.println("是否进入最后的实体类信息：" + pro);
        return "book/professionedit";
    }

    /**
     * 删除方法
     */
    @RequestMapping("deleteprofession")
    public String deleteprofession(HttpServletRequest req) {
        Long proId = Long.parseLong(req.getParameter("proId"));
        prDao.delete(proId);
        return "forward:/testsysprofession";
    }

}