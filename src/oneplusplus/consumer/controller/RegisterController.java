package oneplusplus.consumer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oneplusplus.consumer.pojo.Consumer;
import oneplusplus.consumer.service.RegisterServiceInterface;

@Controller
@RequestMapping("/register")
public class RegisterController {
	
	@Autowired
	RegisterServiceInterface registerServiceInterface;
	
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String get(Consumer param,Model model) {
		param.setUsername("1");
		param.setPassword("1");
		if(registerServiceInterface.register(param) == 0) {
			System.out.println("ע��ʧ�ܣ�");
		}else {
			System.out.println("ע��ɹ���");
		}
		if(registerServiceInterface.get(param)) {
			System.out.println("�û������ã�");
		}else {
			System.out.println("�û����Ѵ��ڣ�");
		}
		return "/WEB-INF/view/consumer/commoditymall.jsp";
	}
}
