package com.alms.service;

import java.util.List;

import com.alms.model.Laundry;

public interface LaundryService {
	
	public void addLaundry(Laundry laundry);

	public List<Laundry> listLaundrys();
	
	public Laundry getLaundry(int id);

	public void deleteLaundry(Laundry laundry);
}
