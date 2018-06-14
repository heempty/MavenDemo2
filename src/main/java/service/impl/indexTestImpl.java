package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.sequence;
import service.IndexTest;

@Service
public class indexTestImpl implements IndexTest{

	@Autowired
	private dao.indexTestDao indexTestdao;
	
	@Override
	public List<sequence> getSequence() {
		// TODO Auto-generated method stub
		return indexTestdao.getSequence();
	}

}
