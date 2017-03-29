package listadecorreo

import java.util.List

class ListaDeCorreo {
	
	List<String> miembros = newArrayList()
	val MailAdapter mailAdapter
	
	new(MailAdapter unMailAdapter) {
		mailAdapter = unMailAdapter
	} 
	
	def enviar(Mensaje mensaje) {
		miembros.forEach [
			mailAdapter.enviarEmailA(it, mensaje)
		]
	}
	
	def agregarMiembro(String unUsuario) {
		this.miembros.add(unUsuario)
	}
	
}


