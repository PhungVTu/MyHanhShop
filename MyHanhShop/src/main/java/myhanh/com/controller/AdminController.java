package myhanh.com.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import myhanh.com.entity.Login;
import myhanh.com.entity.Product;
import myhanh.com.entity.TypeProduct;
import myhanh.com.service.ProductService;
import myhanh.com.service.TypeProductService;

@RestController
@RequestMapping("/admin/")
public class AdminController {

	@Autowired
	private TypeProductService typeProductService;
	@Autowired
	private ProductService productService;

	@POST
	@RequestMapping("/addProduct")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public ModelAndView addProduct(Model model) {
		List<TypeProduct> getListTypeProducts = typeProductService.getTypeProducts();
		model.addAttribute("typeProducts", getListTypeProducts);
		return new ModelAndView("addProduct");
	}

	@POST
	@RequestMapping(value="/registerProduct")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public @ResponseBody ModelAndView registerProduct(@RequestBody Product productAdd,HttpServletRequest request) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		Product news=productAdd;
		System.out.println(news);
//		productService.insertProduct(productAdd);
		return new ModelAndView("productList");
	}

	@POST
	@RequestMapping("/productList")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public ModelAndView getListProduct(Model model, Integer offset, Integer maxResults) {

		List<Product> test = productService.findAll(0, 0);
		model.addAttribute("listProduct",test);
	
		return new ModelAndView("productList");
	}
	@GET
	@RequestMapping("/getData")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public List<Product> getData()
	{
		List<Product> test = productService.findAll(0, 0);
		
		return test;
	}

}
