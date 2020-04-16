package myhanh.com.serviceImpl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myhanh.com.dao.FeedBackDAO;
import myhanh.com.entity.FeedBack;
import myhanh.com.service.FeedBackService;

@Service
public class FeedBackServiceImpl implements FeedBackService {

	@Autowired
	private FeedBackDAO feedBackDAO;
	@Override
	public boolean addFeedBack(FeedBack feedBack) {
		if(StringUtils.isNotBlank(feedBack.getEmail()))
		{
			feedBackDAO.addFeedBack(feedBack);
			return true;
		}
		return false;
	}
	

}
