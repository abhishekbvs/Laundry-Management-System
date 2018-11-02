package com.alms.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alms.model.Laundry;

@Repository("laundryDao")
public class LaundryDaoImpl implements LaundryDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addLaundry(Laundry laundry) {
		sessionFactory.getCurrentSession().saveOrUpdate(laundry);
	}

	@SuppressWarnings("unchecked")
	public List<Laundry> listLaundrys(){
		return (List<Laundry>) sessionFactory.getCurrentSession().createCriteria(Laundry.class).list();		
	}
	
	public Laundry getLaundry(int id) {
		return (Laundry) sessionFactory.getCurrentSession().get(Laundry.class, id);
	}
	
	public void deleteLaundry(Laundry laundry) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Laundry WHERE id = "+laundry.getId()).executeUpdate();
	}

	

}
