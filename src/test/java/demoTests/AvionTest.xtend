package demoTests

import voladores.AvionDePapelMalHecho
import org.junit.Before
import org.junit.Test
import excepciones.NoPuedoVolarException
import demo.Ubicacion

import static org.junit.Assert.assertThat
import static org.hamcrest.CoreMatchers.*;

class AvionTest {

	AvionDePapelMalHecho f115

	@Before
	def void setUp() {

		f115 = new AvionDePapelMalHecho
	}

	@Test
	def testLosAvionesNuncaEstaCansados() {

		assertThat(f115.estaCansado, is(equalTo(false)))
	}

	@Test(expected=NoPuedoVolarException)
	def testQuererHacerVolarUnAvionLanzaUnaExcepcion() {

		val miami = new Ubicacion(7092)

		f115.volarA(miami)
	}

}
