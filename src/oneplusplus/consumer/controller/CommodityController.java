package oneplusplus.consumer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oneplusplus.consumer.pojo.Commodity;
import oneplusplus.consumer.service.CommodityServiceInterface;

@Controller
@RequestMapping("/commodity")
public class CommodityController {
	
	@Autowired
	CommodityServiceInterface commodityService;
	
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String get(Commodity commodity,Model model) {
		model.addAttribute("commodity", commodityService.get(commodity));
		return "/WEB-INF/view/consumer/commoditymall.jsp";
	}
}