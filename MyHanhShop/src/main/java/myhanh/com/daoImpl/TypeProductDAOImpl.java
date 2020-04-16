package myhanh.com.daoImpl;

import java.io.Serializable;
import java.util.List;


import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.hibernate.type.LongType;
import org.hibernate.type.StringType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import myhanh.com.dao.TypeProductDAO;
import myhanh.com.entity.TypeProduct;

@Repository("typeProductDAO")
@Transactional
public class TypeProductDAOImpl implements TypeProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<TypeProduct> getListTypeProduct() {
		StringBuffer sql=new StringBuffer("select "
				+ "tp.id as id,"
				+ "tp.ma_loai_hang as codeTypeProduct,"
				+ "tp.ten_loai_hang as nameTypeProduct"
				+ " from loaihang as tp "
				+ "where 1=1 ");
		
		SQLQuery query=sessionFactory.getCurrentSession().createSQLQuery(sql.toString());
		
		query.addScalar("id",new LongType());
		query.addScalar("codeTypeProduct",new StringType());
		query.addScalar("nameTypeProduct",new StringType());
		
		query.setResultTransformer(Transformers.aliasToBean(TypeProduct.class));
		
		
		return query.list();
	}
	

}
