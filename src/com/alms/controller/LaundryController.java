package com.alms.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.alms.bean.LaundryBean;
import com.alms.model.Laundry;
import com.alms.service.LaundryService;

import com.alms.twiliosms.TwilioSms;

@Controller
public class LaundryController {
	
	@Autowired
	private LaundryService laundryService;
	
	@RequestMapping(params="save",value = "/save", method = RequestMethod.POST)
	public ModelAndView saveLaundry(@ModelAttribute("command") LaundryBean laundryBean, 
			BindingResult result) {
		Laundry laundry = prepareModel(laundryBean);
		laundryService.addLaundry(laundry);
		return new ModelAndView("redirect:/laundries.html");
	}
	
	@RequestMapping(params="sms",value = "/save", method = RequestMethod.POST)
	public ModelAndView saveSMSLaundry(@ModelAttribute("command") LaundryBean laundryBean, 
			BindingResult result) {
		Laundry laundry = prepareModel(laundryBean);
		laundryService.addLaundry(laundry);
		sendSMS(laundryBean);
		return new ModelAndView("redirect:/laundries.html");
	}
	
	@RequestMapping(value="/laundries", method = RequestMethod.GET)
	public ModelAndView listLaundrys() {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("laundrys",  prepareListofBean(laundryService.listLaundrys()));
		return new ModelAndView("laundrysList", model);
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView addLaundry(@ModelAttribute("command")  LaundryBean laundryBean,
			BindingResult result) {
		return new ModelAndView("addLaundry");
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView welcome() {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView deleteLaundry(@ModelAttribute("command")  LaundryBean laundryBean,
			BindingResult result) {
		laundryService.deleteLaundry(prepareModel(laundryBean));
		return new ModelAndView("redirect:/laundries.html");
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView editLaundry(@ModelAttribute("command")  LaundryBean laundryBean,
			BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("laundry", prepareLaundryBean(laundryService.getLaundry(laundryBean.getId())));
		laundryService.deleteLaundry(prepareModel(laundryBean));
		return new ModelAndView("addLaundry", model);
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView updateLaundry (@ModelAttribute("command")  LaundryBean laundryBean, 
			BindingResult result ){
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("laundry", prepareLaundryBean(laundryService.getLaundry(laundryBean.getId())));
		return new ModelAndView("updateLaundry",model);
	}
	
	
	private Laundry prepareModel(LaundryBean laundryBean){
		Laundry laundry = new Laundry();
		laundry.setName(laundryBean.getName());
		laundry.setPhno(laundryBean.getPhno());
		laundry.setHostel(laundryBean.getHostel());
		laundry.setRoom(laundryBean.getRoom());
		laundry.setBatch(laundryBean.getBatch());
		laundry.setDate(laundryBean.getDate());
		laundry.setShirt(laundryBean.getShirt());
		laundry.setPant(laundryBean.getPant());
		laundry.setJeans(laundryBean.getJeans());
		laundry.setMundu(laundryBean.getMundu());
		laundry.setShorts(laundryBean.getShorts());
		laundry.setBedsheet(laundryBean.getBedsheet());
		laundry.setPillowcover(laundryBean.getPillowcover());
		laundry.setTowel(laundryBean.getTowel());
		laundry.setWashing(laundryBean.getWashing());
		laundry.setIroning(laundryBean.getIroning());
		laundry.setStatus(laundryBean.getStatus());
		laundry.setTotal_items(laundryBean.getTotal_items());
		laundry.setTotal_amount(laundryBean.getTotal_amount()); 		
		laundry.setId(laundryBean.getId());
		laundryBean.setId(null);
		return laundry;
	}
	
	private List<LaundryBean> prepareListofBean(List<Laundry> laundrys){
		List<LaundryBean> beans = null;
		if(laundrys != null && !laundrys.isEmpty()){
			beans = new ArrayList<LaundryBean>();
			LaundryBean bean = null;
			for(Laundry laundry : laundrys){
				bean = new LaundryBean();
				
				bean.setName(laundry.getName());
				bean.setPhno(laundry.getPhno());
				bean.setHostel(laundry.getHostel());
				bean.setRoom(laundry.getRoom());
				bean.setBatch(laundry.getBatch());
				bean.setDate(laundry.getDate());
				bean.setShirt(laundry.getShirt());
				bean.setPant(laundry.getPant());
				bean.setJeans(laundry.getJeans());
				bean.setMundu(laundry.getMundu());
				bean.setShorts(laundry.getShorts());
				bean.setBedsheet(laundry.getBedsheet());
				bean.setPillowcover(laundry.getPillowcover());
				bean.setTowel(laundry.getTowel());
				bean.setWashing(laundry.getWashing());
				bean.setIroning(laundry.getIroning());
				bean.setStatus(laundry.getStatus());
				bean.setTotal_items(laundry.getTotal_items());
				bean.setTotal_amount(laundry.getTotal_amount()); 		
				bean.setId(laundry.getId());
				beans.add(bean);
			}
		}
		return beans;
	}
	
	private LaundryBean prepareLaundryBean(Laundry laundry){
		LaundryBean bean = new LaundryBean();
		
		bean.setName(laundry.getName());
		bean.setPhno(laundry.getPhno());
		bean.setHostel(laundry.getHostel());
		bean.setRoom(laundry.getRoom());
		bean.setBatch(laundry.getBatch());
		bean.setDate(laundry.getDate());
		bean.setShirt(laundry.getShirt());
		bean.setPant(laundry.getPant());
		bean.setJeans(laundry.getJeans());
		bean.setMundu(laundry.getMundu());
		bean.setShorts(laundry.getShorts());
		bean.setBedsheet(laundry.getBedsheet());
		bean.setPillowcover(laundry.getPillowcover());
		bean.setTowel(laundry.getTowel());
		bean.setWashing(laundry.getWashing());
		bean.setIroning(laundry.getIroning());
		bean.setStatus(laundry.getStatus());
		bean.setTotal_items(laundry.getTotal_items());
		bean.setTotal_amount(laundry.getTotal_amount()); 		
		bean.setId(laundry.getId());
	
		return bean;
	}
	
	private void sendSMS(LaundryBean laundryBean) {
		String body = new String();
		String ph = laundryBean.getPhno();
		body = "Mr."+laundryBean.getName()+" your laundry status is updated to "+laundryBean.getStatus()+". Clothes Given: "+laundryBean.getTotal_items()+", Total Amount: Rs."+laundryBean.getTotal_amount();
		body = body+". -LMS";
		TwilioSms.sendSMS(ph,body);
		System.out.println("SMS Requested to Twilio");
	}

	

}
