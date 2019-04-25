package oneplusplus.consumer.dao;

import java.util.List;

import oneplusplus.consumer.pojo.Order;

public interface OrderDaoInterface {
	List<Order> get(Order order);
}
