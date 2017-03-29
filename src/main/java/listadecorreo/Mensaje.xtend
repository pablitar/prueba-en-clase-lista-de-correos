package listadecorreo

import org.eclipse.xtend.lib.annotations.Data
import java.io.File

@Data
class Mensaje {
	String titulo
	String cuerpo
	String remitente
	File[] adjuntos
	
	static def crear(String titulo, String cuerpo, String remitente) {
		new Mensaje(titulo, cuerpo, remitente, #[])
	}
}