package oneplusplus.consumer.service;

import oneplusplus.consumer.pojo.Consumer;

public interface RegisterServiceInterface {
	int register(Consumer consumer);
	
	Boolean get(Consumer consumer);
}
