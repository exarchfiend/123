package oneplusplus.consumer.dao;

import java.util.List;

import oneplusplus.consumer.pojo.Consumer;

public interface RegisterDaoInterface {
	
    //	ע��������
	int register(Consumer consumer);
	
    //	��֤�û����Ƿ����
	List<Consumer> get(Consumer consumer);
}