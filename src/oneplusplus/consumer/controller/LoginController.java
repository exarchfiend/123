package oneplusplus.consumer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import oneplusplus.consumer.pojo.Consumer;
import oneplusplus.consumer.service.LoginServiceInterface;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	LoginServiceInterface loginServiceInterface;
	
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String get(Consumer param,Model model) {
		param.setUsername("1");
		param.setPassword("2");
		if(loginServiceInterface.login(param).isEmpty()) {
			System.out.println("��¼ʧ�ܣ�");
			return "/WEB-INF/view/consumer/commoditymall.jsp";
//			��ת��ҳ1 �����û���
		}else {
			System.out.println("��¼�ɹ���");
			return "/WEB-INF/view/consumer/commoditymall.jsp";
//			��ת��ҳ2
		}
	}
}
