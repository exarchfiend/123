package oneplusplus.consumer.dao;

import java.util.List;

import oneplusplus.consumer.pojo.Consumer;

public interface LoginDaoInterface {
    //	消费者登陆及验证
	List<Consumer> get(Consumer c);
}
