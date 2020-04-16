package myhanh.com.daoImpl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.transform.Transformers;
import org.hibernate.type.DoubleType;
import org.hibernate.type.FloatType;
import org.hibernate.type.LongType;
import org.hibernate.type.StringType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import myhanh.com.dao.ProductDAO;
import myhanh.com.entity.Product;

@Repository("productDAO")
@Transactional
public class ProductImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getListProduct(Integer offset, Integer maxResults) {
		
		return sessionFactory.openSession()
                .createCriteria(Product.class)
                .setFirstResult(offset!=null?offset:0)
                .setMaxResults(maxResults!=null?maxResults:10)
                .list();
	}

	@Override
	public List<Product> test() {
		StringBuffer sql=new StringBuffer("select  "
				+ "p.id as id,"
				+ "p.thumbnail as thumbnail,"
				+ "p.ma_hang as codeProduct,"
				+ "p.ten_hang as nameProduct,"
				+ "p.nha_san_xuat as brand,"
				+ "p.ma_loai_hang as codeTypeProduct,"
				+ "p.so_luong as amount,"
				+ "p.kieu_dang as fashionType,"
				+ "p.chat_lieu as meterial,"
				+ "p.size as size,"
				+ "p.mo_ta_sp as descriptionProduct,"
				+ "p.thong_tin_chi_tiet as detailInformation,"
				+ "p.don_vi_tinh as unitCount,"
				+ "p.gia_hang as priceProduct "
				+ "from mathang as p "
				+ "where 1=1 limit 9 ");
		
		
		SQLQuery query=sessionFactory.getCurrentSession().createSQLQuery(sql.toString());
		query.addScalar("id",new LongType());
		query.addScalar("thumbnail",new StringType());
		query.addScalar("codeProduct",new StringType());
		query.addScalar("nameProduct",new StringType());
		query.addScalar("brand",new StringType());
		query.addScalar("codeTypeProduct",new StringType());
		query.addScalar("amount",new LongType());
		query.addScalar("fashionType",new StringType());
		query.addScalar("meterial",new StringType());
		query.addScalar("size",new StringType());
		query.addScalar("descriptionProduct",new StringType());
		query.addScalar("detailInformation",new StringType());
		query.addScalar("unitCount",new StringType());
		query.addScalar("priceProduct",new FloatType());
		
		query.setResultTransformer(Transformers.aliasToBean(Product.class));
		
		return query.list();
	}

	@Override
	public Long insertProduct(Product product) {
		Long id=(Long)sessionFactory.getCurrentSession().save(product);
		return id;
	}

	@Override
	public Long Count() {
		
		return (Long)sessionFactory.openSession()
                .createCriteria(Product.class)
                .setProjection(Projections.rowCount())
                .uniqueResult();
	}

	@Override
	public List<Product> doSearch(Product product) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product getProductById(Long id) {
		StringBuffer sql=new StringBuffer("select "
				+ "p.id as id,"
				+ "p.thumbnail as thumbnail,"
				+ "p.ma_hang as codeProduct,"
				+ "p.ten_hang as nameProduct,"
				+ "p.nha_san_xuat as brand,"
				+ "p.ma_loai_hang as codeTypeProduct,"
				+ "p.so_luong as amount,"
				+ "p.kieu_dang as fashionType,"
				+ "p.chat_lieu as meterial,"
				+ "p.size as size,"
				+ "p.mo_ta_sp as descriptionProduct,"
				+ "p.thong_tin_chi_tiet as detailInformation,"
				+ "p.don_vi_tinh as unitCount,"
				+ "p.gia_hang as priceProduct "
				+ "from mathang as p "
				+ "where 1=1 ");
		if(id!=null)
		{
			sql.append(" and p.id = :id");
		}
		
		SQLQuery query=sessionFactory.getCurrentSession().createSQLQuery(sql.toString());
		query.addScalar("id",new LongType());
		query.addScalar("thumbnail",new StringType());
		query.addScalar("codeProduct",new StringType());
		query.addScalar("nameProduct",new StringType());
		query.addScalar("brand",new StringType());
		query.addScalar("codeTypeProduct",new StringType());
		query.addScalar("amount",new LongType());
		query.addScalar("fashionType",new StringType());
		query.addScalar("meterial",new StringType());
		query.addScalar("size",new StringType());
		query.addScalar("descriptionProduct",new StringType());
		query.addScalar("detailInformation",new StringType());
		query.addScalar("unitCount",new StringType());
		query.addScalar("priceProduct",new FloatType());
		if(id !=null)
		{
			query.setParameter("id", id);
		}
		query.setResultTransformer(Transformers.aliasToBean(Product.class));
		return (Product)query.uniqueResult();
	}

	@Override
	public Product getProductByCodeProduct(String codeProduct) {
		StringBuffer sql=new StringBuffer("select "
				+ "p.id as id,"
				+ "p.thumbnail as thumbnail,"
				+ "p.ma_hang as codeProduct,"
				+ "p.ten_hang as nameProduct,"
				+ "p.nha_san_xuat as brand,"
				+ "p.ma_loai_hang as codeTypeProduct,"
				+ "p.so_luong as amount,"
				+ "p.kieu_dang as fashionType,"
				+ "p.chat_lieu as meterial,"
				+ "p.size as size,"
				+ "p.mo_ta_sp as descriptionProduct,"
				+ "p.thong_tin_chi_tiet as detailInformation,"
				+ "p.don_vi_tinh as unitCount,"
				+ "p.gia_hang as priceProduct "
				+ "from mathang as p "
				+ "where 1=1 ");
		if(StringUtils.isNotBlank(codeProduct))
		{
			sql.append(" and p.ma_hang = :codeProduct");
		}
		
		SQLQuery query=sessionFactory.getCurrentSession().createSQLQuery(sql.toString());
		query.addScalar("id",new LongType());
		query.addScalar("thumbnail",new StringType());
		query.addScalar("codeProduct",new StringType());
		query.addScalar("nameProduct",new StringType());
		query.addScalar("brand",new StringType());
		query.addScalar("codeTypeProduct",new StringType());
		query.addScalar("amount",new LongType());
		query.addScalar("fashionType",new StringType());
		query.addScalar("meterial",new StringType());
		query.addScalar("size",new StringType());
		query.addScalar("descriptionProduct",new StringType());
		query.addScalar("detailInformation",new StringType());
		query.addScalar("unitCount",new StringType());
		query.addScalar("priceProduct",new FloatType());
		if(StringUtils.isNotBlank(codeProduct))
		{
			query.setParameter("codeProduct", codeProduct);
		}
		query.setResultTransformer(Transformers.aliasToBean(Product.class));
		return (Product)query.uniqueResult();
	}
	
	

}
