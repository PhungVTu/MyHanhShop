package myhanh.com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myhanh.com.dao.TypeProductDAO;
import myhanh.com.entity.TypeProduct;
import myhanh.com.service.TypeProductService;

@Service
public class TypeProductServiceImpl implements TypeProductService{

	@Autowired
	private TypeProductDAO typeProductDAO;
	@Override
	public List<TypeProduct> getTypeProducts() {
		
		return typeProductDAO.getListTypeProduct();
	}
	

}
