package demo

import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Ubicacion {

	int kilometraje

	new(int kilometrajeDeMiCiudad) {

		kilometraje = kilometrajeDeMiCiudad

	}

	def distanciaHasta(Ubicacion otroLugar) {

		/*Si bien los mensajes de clase como abs se pueden mandar con un punto
		 * tipo Math.abs, el dos puntos lo hace notar mejor		 
		 */
		Math::abs(kilometraje - otroLugar.kilometraje)
	}

}
