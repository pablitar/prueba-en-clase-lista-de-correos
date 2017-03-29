package listadecorreo

import org.junit.Test

class ListaAbiertaSuite {

	@Test
	def enviarMailAListaAbierta() {
		//Lista: tiene que tener cuales son sus miembros
		//Mensaje: Cuerpo, título y adjuntos
		val testMailAdapter = new TestMailAdapter()
		val listaAbierta = new ListaDeCorreo(testMailAdapter)
		val usuario = "pablo@ciu.edu.ar"
		listaAbierta.agregarMiembro(usuario)
		
		val mensaje = crearMensaje()
		listaAbierta.enviar(mensaje)
		testMailAdapter.assertMensajeEnviado(mensaje, usuario)
	}
	
	def crearMensaje() {
		Mensaje.crear("Hola Mundo", "Hola gente, tengo mail", "yo@gmail.com")
	}
	
}
