package oneplusplus.consumer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oneplusplus.consumer.pojo.Order;
import oneplusplus.consumer.service.OrderServiceInterface;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	OrderServiceInterface orderServiceInterface;
	
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String get(Order param,Model model) {
		model.addAttribute("malls");
		return "/WEB-INF/view/consumer/order.jsp";
	}
}
