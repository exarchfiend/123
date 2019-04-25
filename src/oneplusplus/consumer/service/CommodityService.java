package oneplusplus.consumer.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import oneplusplus.consumer.dao.CommodityDaoInterface;
import oneplusplus.consumer.pojo.Commodity;

@Component
public class CommodityService implements CommodityServiceInterface{
	
	@Autowired
	CommodityDaoInterface commodityDao;
	
	@Override
	public List<Commodity> get(Commodity m) {
		List<Commodity> result = commodityDao.get(m);
		return result;
	}	
}
