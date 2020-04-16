package myhanh.com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myhanh.com.dao.BillDAO;
import myhanh.com.entity.Bill;
import myhanh.com.service.BillService;

@Service
public class BillServiceImpl implements BillService{

	@Autowired
	private BillDAO billDAO;
	@Override
	public boolean insertBillOrder(Bill bill) {

		return billDAO.insertBillOrder(bill);
	}

	@Override
	public List<Bill> getListBillOrder() {

		return billDAO.getListBill();
	}

}
