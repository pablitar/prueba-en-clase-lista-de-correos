package listadecorreo

import external.MailSender

interface MailAdapter {	
	def void enviarEmailA(String string, Mensaje mensaje)
}

class MailSenderAdapter implements MailAdapter {
	
	String smtpHost
	
	new(String smtpHost) {
		this.smtpHost = smtpHost	
	}
	
	override enviarEmailA(String destinatario, Mensaje mensaje) {
		val mailSender = MailSender.createInstance(smtpHost, mensaje.remitente)
		
		mailSender.sendEmail(destinatario, mensaje.titulo, mensaje.cuerpo, mensaje.adjuntos)
	}
	
	//Usar MailSender
}