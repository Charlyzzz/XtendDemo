package voladores

import excepciones.NoPuedoVolarException

class AvionDePapelMalHecho implements Volador {

	override volarA(demo.Ubicacion destino) {
		throw new NoPuedoVolarException
	}

	override energia() {
		0
	}
	
	override estaCansado(){
		false
	}

}
