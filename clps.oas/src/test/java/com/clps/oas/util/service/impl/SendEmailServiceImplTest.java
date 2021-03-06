
package com.clps.oas.util.service.impl;



import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;

import org.apache.log4j.Logger;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.clps.oas.util.sendEmail.pojo.SendEmail;
import com.clps.oas.util.sendEmail.service.ISendEmailService;
import com.clps.oas.util.spring.SpringTestBase;


public class SendEmailServiceImplTest extends SpringTestBase {
	
	@Autowired
	private ISendEmailService ism;
	
	private SendEmail sendemail = null;
	private Logger log=Logger.getLogger(SendEmailServiceImplTest.class);

	
	@Before
	public void setUp() throws Exception {
		
		this.sendemail =new SendEmail();
		sendemail.setEmailSubject("girlfriend");
		sendemail.setEmailRecipient("wjy");
		sendemail.setEmailRecipientId(3);
		sendemail.setEmailSendtime(new Timestamp(new Date().getTime()));
		sendemail.setEmailStatus(true);
		sendemail.setEmailDefault1("");
		sendemail.setEmailDefault2("");
		sendemail.setEmailIsVisable(true);
		sendemail.setEmailContent(" i love ");
	}

	
	@After
	public void tearDown() throws Exception {
	}

	
	@Test
	public void testQueryAllSendEmail() {
		Iterator<SendEmail> its = ism.queryAllSendEmail().iterator();
		while(its.hasNext()){
			log.info(its.next());
		}
		
	}

	
	@Test
	public void testInsertSendEmail() {
		ism.insertSendEmail(sendemail);
	}

	@Test
	public void testDeleteByEmailId() {
		ism.deleteByEmailId(3);
	}


	@Test
	public void testUpdateSendMail() {
		sendemail.setEmailId(3);
		ism.updateSendEmail(sendemail);
	}

}
