package demoTests

import org.junit.Test
import org.junit.Before

/*El import static nos deja importar métodos de clase y usarlos 
 * sin mencionar a la clase.
 * 
 * Assert.assertThat 
 * vs
 * Assert::assertThat
 * vs
 * assertThat
 */
import static org.junit.Assert.assertThat
import static org.hamcrest.CoreMatchers.*;
import demo.Ubicacion

class UbicacionTest {

	Ubicacion santaFe
	Ubicacion yapeyu

	@Before
	def void setUp() {
		santaFe = new Ubicacion(200)
		yapeyu = new Ubicacion(700)
	}

	@Test
	def testDistanciaEntreDosCiudadesContinuasEsPositiva() {

		assertThat(yapeyu.distanciaHasta(santaFe), is(equalTo(500)))

	}

	@Test
	def testDistanciaEntreDosCiudadesNoContinuasEsPositiva() {

		assertThat(santaFe.distanciaHasta(yapeyu), is(equalTo(500)))

	}

}
