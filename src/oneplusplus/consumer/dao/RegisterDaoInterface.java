package oneplusplus.consumer.dao;

import java.util.List;

import oneplusplus.consumer.pojo.Consumer;

public interface RegisterDaoInterface {
	
    //	注册消费者
	int register(Consumer consumer);
	
    //	验证用户名是否存在
	List<Consumer> get(Consumer consumer);
}