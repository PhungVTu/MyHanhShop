package myhanh.com.daoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import myhanh.com.dao.FeedBackDAO;
import myhanh.com.entity.FeedBack;

@Transactional
@Repository
public class FeedBackDAOImpl implements FeedBackDAO{

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public boolean addFeedBack(FeedBack feedBack)
	{
		try {
			sessionFactory.getCurrentSession().save(feedBack);
		} catch (Exception e) {
			return false;
		}
		return true;
		
	}
}
