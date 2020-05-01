package email.tianlangstudio.aliyun.com.controller.admin;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import email.tianlangstudio.aliyun.com.common.base.BaseController;


/**
 * 图片验证码（支持算术形式）
 * @author fc
 */
@Api(value = "验证码")
@Controller
@RequestMapping("/captcha")
public class CaptchaController extends BaseController
{


    
    /**
     * 滚动条验证码
     * @param datas
     * @return
     * @author fuce
     * @Date 2019年11月23日 下午6:12:27
     */
    @ApiOperation(value = "滚动条验证码", notes = "滚动条验证码")
    @PostMapping("/isVerify")
    @ResponseBody
	public boolean isVerify(@RequestBody List<Integer> datas) {
		int sum = 0;  
		for (Integer data : datas) {
			sum += data;
		}
		double avg = sum * 1.0 / datas.size();
		
		double sum2 = 0.0;
		for (Integer data : datas) {
			sum2 += Math.pow(data - avg, 2);
		}
		
		double stddev = sum2 / datas.size();
		return stddev != 0;
	}
	
}