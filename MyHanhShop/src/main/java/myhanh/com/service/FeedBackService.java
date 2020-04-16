package myhanh.com.service;

import org.springframework.stereotype.Service;

import myhanh.com.entity.FeedBack;

@Service
public interface FeedBackService {
	public boolean addFeedBack(FeedBack feedBack);
}
