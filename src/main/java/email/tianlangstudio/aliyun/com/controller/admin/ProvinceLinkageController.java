package email.tianlangstudio.aliyun.com.controller.admin;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import email.tianlangstudio.aliyun.com.common.base.BaseController;
import email.tianlangstudio.aliyun.com.model.auto.SysArea;
import email.tianlangstudio.aliyun.com.model.auto.SysAreaExample;
import email.tianlangstudio.aliyun.com.model.auto.SysCity;
import email.tianlangstudio.aliyun.com.model.auto.SysCityExample;
import email.tianlangstudio.aliyun.com.model.auto.SysProvinceExample;
import email.tianlangstudio.aliyun.com.model.auto.SysStreet;
import email.tianlangstudio.aliyun.com.model.auto.SysStreetExample;
import email.tianlangstudio.aliyun.com.model.custom.TitleVo;
import email.tianlangstudio.aliyun.com.service.SysAreaService;
import email.tianlangstudio.aliyun.com.service.SysCityService;
import email.tianlangstudio.aliyun.com.service.SysProvinceService;
import email.tianlangstudio.aliyun.com.service.SysStreetService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * 省份联动controller
 * @ClassName: ProvinceLinkageController
 * @author fuce
 * @date 2019-10-05 11:19
 */
@Api(value = "省份联动controller")
@Controller
@RequestMapping("/ProvinceLinkageController")
public class ProvinceLinkageController  extends BaseController{
	@Autowired
	private SysProvinceService sysProvinceService;
	@Autowired
	private SysCityService sysCityService;
	@Autowired
	private SysAreaService sysAreaService;
	
	@Autowired
	private SysStreetService sysStreetService;
	
	private String prefix = "admin/province";
	
	/**
	 * 分页list页面
	 * @param model
	 * @param dictId
	 * @return
	 */
	@ApiOperation(value = "分页跳转", notes = "分页跳转")
	@GetMapping("/view")
    public String view(ModelMap model)
    {	
		String str="省份联动";
		setTitle(model, new TitleVo("列表", str+"管理", true,"欢迎进入"+str+"页面", true, false));
		model.addAttribute("provinceList",sysProvinceService.selectByExample(new SysProvinceExample()));
        return prefix + "/list";
    }
	
	/**
	 * 市查询
	 * @param pid
	 * @return
	 */
	@ApiOperation(value = "市查询", notes = "市查询")
	@GetMapping("/getCity")
	@ResponseBody
	public List<SysCity> getCity(String pid){
		SysCityExample example=new SysCityExample();
		example.createCriteria().andProvinceCodeEqualTo(pid);
		return sysCityService.selectByExample(example);
		
	}
	
	/**
	 * 区查询
	 * TODO(请说明这个方法的作用).
	 * @param pid
	 * @return
	 */
	@ApiOperation(value = "区查询", notes = "区查询")
	@GetMapping("/getArea")
	@ResponseBody
	public List<SysArea> getArea(String pid){
		SysAreaExample example=new SysAreaExample();
		example.createCriteria().andCityCodeEqualTo(pid);
		return sysAreaService.selectByExample(example);
		
	}
	
	/**
	 * 街道查询
	 * @param pid
	 * @return
	 */
	@ApiOperation(value = "街道查询", notes = "街道查询")
	@GetMapping("/getStreet")
	@ResponseBody
	public List<SysStreet> getStreet(String pid){
		SysStreetExample example=new SysStreetExample();
		example.createCriteria().andAreaCodeEqualTo(pid);
		return sysStreetService.selectByExample(example);
		
	}
		
	
}
