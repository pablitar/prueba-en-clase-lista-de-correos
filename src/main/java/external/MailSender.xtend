package external

import java.io.File

/*
 * class MailSender
static:: MailSender createInstance(String smtpHost, String from);
void sendEmail(String to, String title, String body, File[] attachments);
void sendEmail(String[] tos, String title, String body, File[] attachments);
 */

class MailSender {
	static def MailSender createInstance(String smtpHost, String from) {
		throw new UnsupportedOperationException("Not implemented")		
	}
	
    def void sendEmail(String to, String title, String body, File[] attachments) {
    	throw new UnsupportedOperationException("Not implemented")
    }
    def void sendEmail(String[] tos, String title, String body, File[] attachments) {
    	throw new UnsupportedOperationException("Not implemented")
    }	
}