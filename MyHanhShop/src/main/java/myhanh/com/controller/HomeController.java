package myhanh.com.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import myhanh.com.entity.FeedBack;
import myhanh.com.entity.Login;
import myhanh.com.entity.Product;
import myhanh.com.service.FeedBackService;
import myhanh.com.service.ProductService;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private ProductService productService;
	@Autowired
	private FeedBackService feedBackService;

	@RequestMapping(value = "/trangchu")
	public String getHome( Model model,HttpServletRequest request) {
		List<Product> test = productService.getListProducts();
		model.addAttribute("listProduct", test);
		return "trangchu";
	}
	@GET
	@RequestMapping("/login")
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public String doLogin(HttpServletRequest request, Model model) {
		String userName = request.getParameter("userName");
		String pass = request.getParameter("passWord");
		Login login = new Login();
		login.setUserName(userName);
		login.setPassWord(pass);
		return "login";
	}

	@RequestMapping("/shop")
	public String showShop(HttpServletRequest request, Model model) {
		List<Product> test = productService.getListProducts();

		model.addAttribute("listProduct", test);
		
		return "shop";
	}

	@RequestMapping("/contact")
	public String getContact() {
		return "contact";
	}	
	

	@RequestMapping("/blog")
	public String getBlog() {
		return "blog";
	}

	@RequestMapping("/blog/blogDetail")
	public String getBlogDetail() {
		return "blogDetail";
	}
	@RequestMapping("/followProduct")
	public String getFollowProduct() {
		return "followProduct";
	}
	@RequestMapping("/productDetail")
	public String getProductDetail(HttpServletRequest request,Model model)
	{
		Long id=Long.parseLong(request.getParameter("id"));
		Product product=productService.getProductbyId(id);
		model.addAttribute("productDetail", product);
		return "productDetail";
	}
	@RequestMapping("/register")
	public String getRegister() {
		return "register";
	}
	/*
	 * @RequestMapping("/thanhtoan") public String getCheckOut() { return
	 * "checkout"; }
	 */


	@RequestMapping("/contact/feedback")
	public String getFeedBack(HttpServletRequest request)
	{
		String email=request.getParameter("email");
		String fullName=request.getParameter("fullName");
		String contend=request.getParameter("contend");
		FeedBack feedBack=new FeedBack();
		feedBack.setEmail(email);
		feedBack.setFullName(fullName);
		feedBack.setContendFeedBack(contend);
		feedBackService.addFeedBack(feedBack);
		return "forward:MyHanhShop/trangchu";
	}
	


}
