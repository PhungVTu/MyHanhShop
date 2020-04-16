package myhanh.com.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import myhanh.com.dao.BillProductDAO;
import myhanh.com.entity.BillProduct;

@Repository
public class BillProductDAOImpl implements BillProductDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public boolean insertBillProduct(BillProduct billProduct) {
		boolean tag=false;
		if((Long)sessionFactory.openSession().save(billProduct) !=null)
		{
			tag=true;
		}
		return tag;
	}

	@Override
	public List<BillProduct> getListByOrderId(String billI) {

		return sessionFactory.openSession().createCriteria(BillProduct.class).add(Restrictions.eq("bill_id", billI)).list();
	}

}
