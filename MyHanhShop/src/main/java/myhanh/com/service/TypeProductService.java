package myhanh.com.service;

import java.util.List;

import org.springframework.stereotype.Service;

import myhanh.com.entity.TypeProduct;

@Service
public interface TypeProductService {

	public List<TypeProduct> getTypeProducts();
}
