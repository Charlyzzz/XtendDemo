package voladores

import org.eclipse.xtend.lib.annotations.Accessors
import excepciones.NoPuedoVolarException

@Accessors
class Golondrina implements Volador {

	int energia = 0
	demo.Ubicacion lugarActual

	override volarA(demo.Ubicacion destino) {
		restarEnergia(lugarActual.distanciaHasta(destino))
		lugarActual = destino
	}

	def restarEnergia(int cantidadEnergia) {
		verificarEnergiaSuficiente(cantidadEnergia)
		energia -= cantidadEnergia
	}

	def verificarEnergiaSuficiente(int cantidadEnergia) {
		if (cantidadEnergia > energia)
			throw new NoPuedoVolarException
	}

	override energia() {
		energia
	}

	override estaCansado() {
		energia < 50
	}

}
