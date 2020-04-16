package myhanh.com.dao;

import java.util.List;

import myhanh.com.entity.BillProduct;

public interface BillProductDAO {
	public boolean insertBillProduct(BillProduct billProduct);
	
	public List<BillProduct> getListByOrderId(String billId);
}
