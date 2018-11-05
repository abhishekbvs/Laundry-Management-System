package com.alms.twiliosms;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class TwilioSms {
	public static final String ACCOUNT_SID = "ACbc15a09513a050bc85cc1bc88c311974";
	public static final String AUTH_TOKEN = "86619a9fdc4c325ff7b237a22e2f724a";
	public static void sendSMS(String ph, String body) {
	    Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
	    Message message = Message.creator(new PhoneNumber("+91"+ph), new PhoneNumber("+12537859095"), body).create();
	   	System.out.println("Msg Sent with body "+body+" with id "+message.getSid());
	  }
}
