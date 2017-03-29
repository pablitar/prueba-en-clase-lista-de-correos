package listadecorreo

import org.eclipse.xtend.lib.annotations.Data
import java.util.List
import org.junit.Assert

@Data
class MensajeEnviado {
	Mensaje mensaje
	String destinatario
}

class TestMailAdapter implements MailAdapter {
	
	val List<MensajeEnviado> mensajesEnviados = newArrayList()
	
	override enviarEmailA(String destinatario, Mensaje mensaje) {
		this.mensajesEnviados.add(new MensajeEnviado(mensaje, destinatario))
	}
	
	def assertMensajeEnviado(Mensaje mensaje, String destinatario) {
		Assert.assertTrue("El mensaje " + mensaje + " debió ser enviado al " + destinatario,
			this.mensajesEnviados.contains(new MensajeEnviado(mensaje, destinatario))
		)
	}
	
}