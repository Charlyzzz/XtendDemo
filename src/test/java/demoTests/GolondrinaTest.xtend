package demoTests

import demo.Ubicacion
import org.junit.Before
import org.junit.Test
import voladores.Golondrina
import excepciones.NoPuedoVolarException

import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

class GolondrinaTest {

	Golondrina pepita
	Ubicacion buenosAires
	Ubicacion rosario

	@Before
	def void setUp() {

		buenosAires = new Ubicacion(0)
		rosario = new Ubicacion(300)

		/*O también 
		 * pepita.energia = 300
		 * pepita.lugarActual = buenosAires
		 */
		pepita = new Golondrina => [
			energia = 300
			lugarActual = buenosAires
		]
	}

	@Test
	def testSeInstanciaUnaGolondrinaYLaEnergiaEsCero() {

		pepita = new Golondrina
		assertThat(pepita.energia(), is(equalTo(0)))

	}

	@Test
	def testSeRestaEnergiaCorrectamente() {

		pepita.restarEnergia(50)
		assertThat(pepita.energia(), is(equalTo(250)))
	}

	@Test
	def testVolarRestaEnergia() {

		pepita.volarA(rosario)
		assertThat(pepita.energia(), is(equalTo(0)))
	}

	@Test
	def testVolarCambiaLaUbicacionActual() {

		pepita.volarA(rosario)
		assertThat(pepita.lugarActual, is(rosario))
	}

	@Test(expected=NoPuedoVolarException)
	def testVolarSinSuficienteEnergiaLanzaUnaExcepcion() {

		pepita.energia = 0
		pepita.volarA(rosario)
	}

}
