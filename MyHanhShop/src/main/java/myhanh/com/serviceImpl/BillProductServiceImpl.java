package myhanh.com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myhanh.com.dao.BillProductDAO;
import myhanh.com.entity.BillProduct;
import myhanh.com.service.BillProductService;
import myhanh.com.service.BillService;

@Service
public class BillProductServiceImpl implements BillProductService{

	@Autowired
	private BillProductDAO billProductDAO;

	@Override
	public boolean insertBillProduct(BillProduct billProduct) {
		// TODO Auto-generated method stub
		return billProductDAO.insertBillProduct(billProduct);
	}

	@Override
	public List<BillProduct> getListBillOrderById(String billId) {
		// TODO Auto-generated method stub
		return billProductDAO.getListByOrderId(billId);
	}

}
