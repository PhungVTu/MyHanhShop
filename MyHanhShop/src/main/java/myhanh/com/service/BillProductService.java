package myhanh.com.service;

import java.util.List;

import org.springframework.stereotype.Service;

import myhanh.com.entity.BillProduct;

@Service
public interface BillProductService {
	public boolean insertBillProduct(BillProduct billProduct);
	public List<BillProduct> getListBillOrderById(String billId);

}
