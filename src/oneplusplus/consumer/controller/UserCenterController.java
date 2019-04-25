package oneplusplus.consumer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oneplusplus.consumer.pojo.Consumer;

@Controller
@RequestMapping("/usercenter")
public class UserCenterController {	
	
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String get(Consumer param,Model model) {
//		用户名和地址从Session里拿
		return "/WEB-INF/view/consumer/usercenter.jsp";
	}
}
