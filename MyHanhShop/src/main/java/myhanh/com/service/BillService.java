package myhanh.com.service;

import java.util.List;

import org.springframework.stereotype.Service;

import myhanh.com.entity.Bill;

@Service
public interface BillService {
	public boolean insertBillOrder(Bill bill);
	public List<Bill> getListBillOrder();
}
