package myhanh.com.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import myhanh.com.entity.Product;

public interface ProductDAO {
	
	public List<Product> getListProduct(Integer offset,Integer maxResult);
	public List<Product> test();
	public List<Product> doSearch(Product product);
	public Product getProductById(Long id);
	public Product getProductByCodeProduct(String codeProduct);
	public Long Count();
	public Long insertProduct(Product product);

}
