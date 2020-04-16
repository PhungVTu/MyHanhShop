package myhanh.com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "mathang")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	@Column(name = "thumbnail")
	private String thumbnail;
	@Column(name = "ma_hang")
	private String codeProduct;
	@Column(name = "ten_hang")
	private String nameProduct;
	@Column(name = "nha_san_xuat")
	private String brand;
	@Column(name = "ma_loai_hang")
	private String codeTypeProduct;
	@Column(name = "so_luong")
	private Long amount;
	@Column(name = "kieu_dang")
	private String fashionType;
	@Column(name = "chat_lieu")
	private String meterial;
	@Column(name = "size")
	private String size;
	@Column(name = "mo_ta_sp")
	private String descriptionProduct;
	@Column(name = "thong_tin_chi_tiet")
	private String detailInformation;
	@Column(name = "don_vi_tinh")
	private String unitCount;
	@Column(name = "gia_hang")
	private float priceProduct;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getCodeProduct() {
		return codeProduct;
	}

	public void setCodeProduct(String codeProduct) {
		this.codeProduct = codeProduct;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getCodeTypeProduct() {
		return codeTypeProduct;
	}

	public void setCodeTypeProduct(String codeTypeProduct) {
		this.codeTypeProduct = codeTypeProduct;
	}

	public Long getAmount() {
		return amount;
	}
	public String getNameProduct() {
		return nameProduct;
	}

	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}

	public String getMeterial() {
		return meterial;
	}

	public void setMeterial(String meterial) {
		this.meterial = meterial;
	}

	public void setAmount(Long amount) {
		this.amount = amount;
	}

	public String getFashionType() {
		return fashionType;
	}

	public void setFashionType(String fashionType) {
		this.fashionType = fashionType;
	}

	public String getMaterial() {
		return meterial;
	}

	public void setMaterial(String meterial) {
		this.meterial = meterial;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getDescriptionProduct() {
		return descriptionProduct;
	}

	public void setDescriptionProduct(String descriptionProduct) {
		this.descriptionProduct = descriptionProduct;
	}

	public String getDetailInformation() {
		return detailInformation;
	}

	public void setDetailInformation(String detailInformation) {
		this.detailInformation = detailInformation;
	}

	public String getUnitCount() {
		return unitCount;
	}

	public void setUnitCount(String unitCount) {
		this.unitCount = unitCount;
	}

	public float getPriceProduct() {
		return priceProduct;
	}

	public void setPriceProduct(Float priceProduct) {
		this.priceProduct = priceProduct;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", thumbnail=" + thumbnail + ", codeProduct=" + codeProduct + ", brand=" + brand
				+ ", codeTypeProduct=" + codeTypeProduct + ", amount=" + amount + ", fashionType=" + fashionType
				+ ", material=" + meterial + ", size=" + size + ", descriptionProduct=" + descriptionProduct
				+ ", detailInformation=" + detailInformation + ", unitCount=" + unitCount + ", PriceProduct="
				+ priceProduct + "]";
	}
}
