package myhanh.com.dao;

import java.util.List;

import myhanh.com.entity.Bill;

public interface BillDAO {
	public boolean insertBillOrder(Bill bill);
	public List<Bill> getListBill();

}
