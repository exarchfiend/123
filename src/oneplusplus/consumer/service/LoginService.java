package oneplusplus.consumer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import oneplusplus.consumer.dao.LoginDaoInterface;
import oneplusplus.consumer.pojo.Consumer;

@Component
public class LoginService implements LoginServiceInterface{
	
	@Autowired
	LoginDaoInterface loginDaoInterface;

	@Override
	public List<Consumer> login(Consumer consumer) {
        //假是有用户   真是无用户
		return loginDaoInterface.get(consumer);
	}
}
