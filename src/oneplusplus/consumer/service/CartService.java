package oneplusplus.consumer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import oneplusplus.consumer.dao.CartDaoInterface;
import oneplusplus.consumer.pojo.Cart;

@Component
public class CartService implements CartServiceInterface{
	
	@Autowired
	CartDaoInterface cartDaoInterface;
	
	@Override
	public List<Cart> get(Cart cart) {
		return cartDaoInterface.get(cart);
	}

}
