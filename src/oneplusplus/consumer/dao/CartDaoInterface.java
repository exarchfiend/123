package oneplusplus.consumer.dao;

import java.util.List;

import oneplusplus.consumer.pojo.Cart;

public interface CartDaoInterface {
	List<Cart> get(Cart cart);
}
