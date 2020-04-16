package myhanh.com.exception;

public class ProductNotFoundException extends RuntimeException {
	private static final long serialVersionUID = -4940652196131005577L;
	private String codeProduct;
	
	public ProductNotFoundException(String codeProduct)
	{
		this.codeProduct=codeProduct;
	}
	
	public String getCodeProduct() {
		return codeProduct;
	}
	public void setCodeProduct(String codeProduct) {
		this.codeProduct = codeProduct;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
