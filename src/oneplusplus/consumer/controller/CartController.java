package oneplusplus.consumer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oneplusplus.consumer.pojo.Cart;
import oneplusplus.consumer.service.CartServiceInterface;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	CartServiceInterface cartServiceInterface;
	
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String get(Cart param,Model model) {
		cartServiceInterface.get(param);
		return "/WEB-INF/view/consumer/cart.jsp";
	}
}
