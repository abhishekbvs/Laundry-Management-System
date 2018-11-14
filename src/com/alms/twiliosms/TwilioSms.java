package com.alms.twiliosms;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class TwilioSms {
	public static final String ACCOUNT_SID = "";
	public static final String AUTH_TOKEN = "";
	public static void sendSMS(String ph, String body) {
	    Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
	    Message message = Message.creator(new PhoneNumber("+91"+ph), new PhoneNumber("+12537859095"), body).create();
	   	System.out.println("Msg Sent with body "+body+" and the msg id is "+message.getSid());
	  }
}
