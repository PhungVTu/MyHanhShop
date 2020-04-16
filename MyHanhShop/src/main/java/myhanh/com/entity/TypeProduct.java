package myhanh.com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "loaihang")
public class TypeProduct {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private Long Id;
	@Column(name = "ma_loai_hang")
	private String codeTypeProduct;
	@Column(name = "ten_loai_hang")
	private String nameTypeProduct;
	public Long getId() {
		return Id;
	}
	public void setId(Long id) {
		Id = id;
	}
	public String getCodeTypeProduct() {
		return codeTypeProduct;
	}
	public void setCodeTypeProduc(String codeTypeProduct) {
		this.codeTypeProduct = codeTypeProduct;
	}
	public String getNameTypeProduct() {
		return nameTypeProduct;
	}
	public void setNameTypeProduct(String nameTypeProduct) {
		this.nameTypeProduct = nameTypeProduct;
	}
	@Override
	public String toString() {
		return "TypeProduct [Id=" + Id + ", codeTypeProduc=" + codeTypeProduct + ", nameTypeProduct=" + nameTypeProduct
				+ ", getId()=" + getId() + ", getCodeTypeProduc()=" + getCodeTypeProduct() + ", getNameTypeProduct()="
				+ getNameTypeProduct() + "]";
	}
	
	

}
