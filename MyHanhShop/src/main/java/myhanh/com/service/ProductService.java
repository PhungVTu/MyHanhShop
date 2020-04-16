package myhanh.com.service;

import java.util.List;

import org.springframework.stereotype.Service;

import myhanh.com.entity.Product;

@Service
public interface ProductService {
	public List<Product> getListProducts();
	public Product getProductbyId(Long id);
	public Product getProductbyCodeProduct(String codeProduct);
	public Long insertProduct(Product product);
	public List<Product> findAll(Integer offset, Integer maxResult);
    public Long count();
}
