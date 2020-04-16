package myhanh.com.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import myhanh.com.dao.BillDAO;
import myhanh.com.entity.Bill;

@Repository
public class BillDAOImpl implements BillDAO{

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public boolean insertBillOrder(Bill bill) {
		Long idLong=(Long)sessionFactory.openSession().save(bill);
		if(idLong ==null)
		{
			return false;
		}
		return true;
	}

	@Override
	public List<Bill> getListBill() {
		return sessionFactory.openSession().createCriteria(Bill.class).list();
	}

}
