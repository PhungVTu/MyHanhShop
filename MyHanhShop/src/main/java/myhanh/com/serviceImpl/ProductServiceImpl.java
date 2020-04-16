package myhanh.com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myhanh.com.dao.ProductDAO;
import myhanh.com.entity.Product;
import myhanh.com.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDAO productDAO;
	@Override
	public List<Product> getListProducts() {
		List<Product> test=productDAO.test();
		return test;
	}
	@Override
	public Long insertProduct(Product product) {
		Long id=productDAO.insertProduct(product);
		return id;
	}
	@Override
	public List<Product> findAll(Integer offset, Integer maxResult) {
		
		return productDAO.getListProduct(offset, maxResult);
	}
	@Override
	public Long count() {
	
		return productDAO.Count();
	}
	@Override
	public Product getProductbyId(Long id) {
		
		return productDAO.getProductById(id);
	}
	@Override
	public Product getProductbyCodeProduct(String codeProduct) {
		// TODO Auto-generated method stub
		return productDAO.getProductByCodeProduct(codeProduct);
	}

}
