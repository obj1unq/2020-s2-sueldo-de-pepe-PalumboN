// REQUERIMIENTOS
// - Calcular el sueldo

object pepe {
	var categoria = gerente
	var bonoResultados = nulo
	
	method categoria(nuevaCategoria) {
		categoria = nuevaCategoria
	}
	method bonoResultados(nuevoBono) {
		bonoResultados = nuevoBono
	}
	
	method sueldo() {
		return self.sueldoNeto() + self.sueldoPorResultados() + self.sueldoPorPresentismo() 
	}
	
	method sueldoNeto() {
		return categoria.neto()
	}
	
	method sueldoPorResultados() {
		return bonoResultados.montoResultados(self)
	}
	
	method sueldoPorPresentismo() {
		return 0 
	}
}

// CATEGORIAS
object gerente {
	method neto() { return 15000 }
}

object cadete {
	method neto() { return 20000 }
}

object presidente {
	method neto() { return 100000000 }
}
// CATEGORIAS


// RESULTADOS

// Formas que tiene un objeto de conocer a otro
// 1) globalmente -> hardcodeado
// 2) atributo 
// 3) parámetro
// ó pedirselo a otro objeto que conoce
object porcentaje {
	method montoResultados(empleado) {
		return empleado.sueldoNeto() * 0.1
	}
}

// El método lookup (que determina qué método responde a qué mensaje)
// tiene en cuenta el nombre + cantidad de parámetros
object montoFijo { 
	method montoResultados(empleado) {
		return 800
	}
}

object nulo {
	method montoResultados(empleado) {
		return 0
	}
}
// RESULTADOS

