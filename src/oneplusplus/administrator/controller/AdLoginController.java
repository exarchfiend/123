package oneplusplus.administrator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oneplusplus.consumer.pojo.Cart;

@Controller
@RequestMapping("/adlogin")
public class AdLoginController {
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String get(Cart param,Model model) {
		model.addAttribute("malls");
		return "/WEB-INF/view/administrator/login.jsp";
	}
}