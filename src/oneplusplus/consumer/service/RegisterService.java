package oneplusplus.consumer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import oneplusplus.consumer.dao.RegisterDaoInterface;
import oneplusplus.consumer.pojo.Consumer;

@Component
public class RegisterService implements RegisterServiceInterface{
	
	@Autowired
	RegisterDaoInterface registerDaoInterface;
	
	@Override
	public int register(Consumer consumer) {
		return registerDaoInterface.register(consumer);
	}

	@Override
	public Boolean get(Consumer consumer) {
//		假是存在 不可用  真是不存在 可用
		return registerDaoInterface.get(consumer).isEmpty();
	}
}
