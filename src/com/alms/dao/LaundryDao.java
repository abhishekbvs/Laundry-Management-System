package com.alms.dao;

import java.util.List;

import com.alms.model.Laundry;

public interface LaundryDao {

	public void addLaundry(Laundry laundry);

	public List<Laundry> listLaundrys();

	public Laundry getLaundry(int id);

	public void deleteLaundry(Laundry laundry);

}
