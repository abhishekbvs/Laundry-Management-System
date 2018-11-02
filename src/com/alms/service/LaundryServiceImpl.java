package com.alms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.alms.dao.LaundryDao;
import com.alms.model.Laundry;


@Service("laundryService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class LaundryServiceImpl implements LaundryService {

	@Autowired
	private LaundryDao laundryDao;

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addLaundry(Laundry laundry) {
		laundryDao.addLaundry(laundry);
	}

	public List<Laundry> listLaundrys(){
		return laundryDao.listLaundrys();
	}

	public Laundry getLaundry(int id) {
		return laundryDao.getLaundry(id);
	}

	public void deleteLaundry(Laundry laundry) {
		laundryDao.deleteLaundry(laundry);
	}

}
