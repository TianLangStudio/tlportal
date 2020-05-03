/**
 * @Description:
 * @Author: tianlang
 * @Email: tianlangstudio@aliyun.com
 * @Date: 20-5-1 下午1:31
 */
package email.tianlangstudio.aliyun.com.portal.controller;

import email.tianlangstudio.aliyun.com.common.base.BaseController;
import email.tianlangstudio.aliyun.com.common.domain.AjaxResult;
import email.tianlangstudio.aliyun.com.portal.model.App;
import email.tianlangstudio.aliyun.com.portal.service.AppSre;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/portal/app")
@CrossOrigin(allowCredentials = "true")
public class AppCtrl extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(AppCtrl.class);
    @Autowired
    private AppSre appSre;

    @GetMapping("/view")
    public String viewApp() {
        return "/portal/list";
    }

    @GetMapping("/list/all/show")
    @ResponseBody
    public AjaxResult listAllShowApp() {
        return AjaxResult.successData(appSre.findAllShowApp());
    }


    @RequestMapping("/list/all")
    @ResponseBody
    public AjaxResult listAllApp() {
        return AjaxResult.successData(appSre.findAll());
    }
    @GetMapping("/list/category")
    @ResponseBody
    public AjaxResult listAllCategory() {
        return AjaxResult.successData(appSre.listAllAppCategory());
    }

    //添加修改App
    @PostMapping("/save")
    @ResponseBody
    @RequiresPermissions("portal:app:save")
    public AjaxResult saveApp(App app) {
        AjaxResult ajaxResult = null;
        try {
            ajaxResult = AjaxResult.successData(appSre.save(app));
        } catch (Exception e) {
            logger.error("saveApp error:", e);
            ajaxResult = AjaxResult.error(e.getMessage());
        }
        return ajaxResult;
    }

    //删除App
    @PostMapping("/remove")
    @ResponseBody
    @RequiresPermissions("portal:app:save")
    public AjaxResult removeApp(String id) {
        AjaxResult ajaxResult = null;
        try {
            appSre.removeAppById(id);
            ajaxResult = AjaxResult.success("删除成功");
        } catch (Exception e) {
            logger.error("removeApp error:", e);
            ajaxResult = AjaxResult.error(e.getMessage());
        }
        return ajaxResult;
    }


}
