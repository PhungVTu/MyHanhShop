package myhanh.com.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.viettel.security.i;

import myhanh.com.entity.Bill;
import myhanh.com.entity.BillProduct;
import myhanh.com.entity.Product;
import myhanh.com.service.BillProductService;
import myhanh.com.service.BillService;
import myhanh.com.service.ProductService;
import myhanh.com.utils.Item;
import myhanh.com.utils.Order;

@RestController
@RequestMapping("/")
public class OrderController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private BillService billService;
	@Autowired
	private BillProductService billProductService;
	
	@RequestMapping("/checkout")
	public ModelAndView getCheckout(HttpServletRequest request) {
		addToCart(request);
		return new ModelAndView("checkout");
	}	
	@RequestMapping("/cart/delete")
	public void deleteCart(HttpServletRequest request)
	{
		request.getSession().removeAttribute("order");
	}
	
	@POST
	@RequestMapping(value="/cart/removeCart",method = RequestMethod.POST)
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public  void removeCart(@RequestBody Product product,HttpServletRequest request)
	{
		
		Order order=(Order)request.getSession().getAttribute("order");
		List<Item> listProduct=order.getItems();
		int length=listProduct.size();
		for(int i=0;i<length;i++)
		{
			if(listProduct.get(i).getProduct().getNameProduct().equals(product.getNameProduct()))
			{
				listProduct.remove(listProduct.get(i));
			}
		}
		order.setItems(listProduct);
		
		
	}
	
	@POST
	@RequestMapping(value = "/bill/pay",method = RequestMethod.POST)
	@Consumes({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public ModelAndView order(@RequestBody Bill billOrder,HttpServletRequest request)
	{
		DateTimeFormatter formatter=DateTimeFormatter.BASIC_ISO_DATE;

		Order order=(Order)request.getSession().getAttribute("order");
		List<Item> listProduct=order.getItems();
		String createAccount = request.getParameter("createAccount");
		String dateOrder=formatter.format(LocalDate.now());
		String billID=new StringBuilder().append(billOrder.getPhone()).append('_').append(dateOrder).toString();
		billOrder.setBillId(billID);
		billOrder.setDateOrder(dateOrder);
		//billService.insertBillOrder(bill);
		BillProduct billProduct=new BillProduct();
		if(listProduct != null)
		{
			for(Item item :listProduct)
			{
				
				billProduct.setBillId(billID);
				billProduct.setPrice(item.getPrice());
				billProduct.setAmount(item.getQuantity());
				billProduct.setCodeProduct(item.getProduct().getCodeProduct());
				//billProductService.insertBillProduct(billProduct);
			}
		}
		
		request.getSession().removeAttribute("order");
		return new ModelAndView("orderSuccess"); 
	}
	
	
	public void addToCart(HttpServletRequest request)
	{
		int quantity=1;
		String codeProduct=request.getParameter("codeProduct");
		if(StringUtils.isNotBlank(codeProduct))
		{
			Product product =productService.getProductbyCodeProduct(codeProduct);
			if(product !=null)
			{
				if(request.getParameter("quantity")!=null)
				{
					quantity=Integer.parseInt(request.getParameter("quantity"));
				}
				HttpSession session=request.getSession();
				if(session.getAttribute("order") ==null) {
					Order order=new Order();
					List<Item> listItems=new ArrayList<Item>();
					Item item=new Item();
					item.setQuantity(quantity);
					item.setProduct(product);
					item.setPrice(product.getPriceProduct());
					listItems.add(item);
					order.setItems(listItems);
					session.setAttribute("order", order);
				}else {
					Order order=(Order) session.getAttribute("order");
					List<Item> listItems=order.getItems();
					boolean check=false;
					for(Item item :listItems)
					{
						if(item.getProduct().getCodeProduct().equalsIgnoreCase(product.getCodeProduct()))
						{
							item.setQuantity(quantity+item.getQuantity());
							item.setPrice(item.getProduct().getPriceProduct()*item.getQuantity());
							check=true;
		
						}
					}
					if(!check) {
						Item item=new Item();
						item.setQuantity(quantity);
						item.setPrice(product.getPriceProduct());
						item.setProduct(product);
						listItems.add(item);
					}
					session.setAttribute("order", order);
				}
				
			}
		}
	}
	@RequestMapping("/order/success")
	public ModelAndView orderSuccess()
	{
		return new ModelAndView("orderSuccess");
	}

}

