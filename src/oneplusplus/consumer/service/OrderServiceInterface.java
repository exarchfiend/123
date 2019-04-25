package oneplusplus.consumer.service;

import java.util.List;

import oneplusplus.consumer.pojo.Order;

public interface OrderServiceInterface {
	List<Order> get(Order order);
}
