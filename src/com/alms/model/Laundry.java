package com.alms.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Laundry")
public class Laundry implements Serializable {
	
	private static final long serialVersionUID = -723583058586873479L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "id")
	private Integer id;
	private String name;
	private String hostel;
	private String room;
	private String batch;
	private Date date;
	private Integer shirt;
	private Integer pant;
	private Integer jeans;
	private Integer mundu;
	private Integer shorts;
	private Integer bedsheet;
	private Integer pillowcover;
	private Integer towel;
	private Integer total_items;
	private Integer total_amount;
	private String washing;
	private String ironing;
	private String status;
	private String phno;

	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHostel() {
		return hostel;
	}
	public void setHostel(String hostel) {
		this.hostel = hostel;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Integer getShirt() {
		return shirt;
	}
	public void setShirt(Integer shirt) {
		this.shirt = shirt;
	}
	public Integer getPant() {
		return pant;
	}
	public void setPant(Integer pant) {
		this.pant = pant;
	}
	public Integer getJeans() {
		return jeans;
	}
	public void setJeans(Integer jeans) {
		this.jeans = jeans;
	}
	public Integer getMundu() {
		return mundu;
	}
	public void setMundu(Integer mundu) {
		this.mundu = mundu;
	}
	public Integer getShorts() {
		return shorts;
	}
	public void setShorts(Integer shorts) {
		this.shorts = shorts;
	}
	public Integer getBedsheet() {
		return bedsheet;
	}
	public void setBedsheet(Integer bedsheet) {
		this.bedsheet = bedsheet;
	}
	public Integer getPillowcover() {
		return pillowcover;
	}
	public void setPillowcover(Integer pillowcover) {
		this.pillowcover = pillowcover;
	}
	public Integer getTowel() {
		return towel;
	}
	public void setTowel(Integer towel) {
		this.towel = towel;
	}
	public Integer getTotal_items() {
		return total_items;
	}
	public void setTotal_items(Integer total_items) {
		this.total_items = total_items;
	}
	public Integer getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(Integer total_amount) {
		this.total_amount = total_amount;
	}
	public String getWashing() {
		return washing;
	}
	public void setWashing(String washing) {
		this.washing = washing;
	}
	public String getIroning() {
		return ironing;
	}
	public void setIroning(String ironing) {
		this.ironing = ironing;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
