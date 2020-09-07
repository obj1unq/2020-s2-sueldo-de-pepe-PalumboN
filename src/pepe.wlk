// REQUERIMIENTOS
// - Calcular el sueldo

object pepe {
	var categoria = gerente
	
	method categoria(nuevaCategoria) {
		categoria = nuevaCategoria
	}
	
	method sueldo() {
		return self.sueldoNeto() + self.sueldoPorResultados() + self.sueldoPorPresentismo() 
	}
	
	method sueldoNeto() {
		return categoria.valor()
	}
	
	method sueldoPorResultados() {
		return 0 
	}
	
	method sueldoPorPresentismo() {
		return 0 
	}
}

// CATEGORIAS

object gerente {
	method valor() { return 15000 }
}

object cadete {
	method valor() { return 20000 }
}

object presidente {
	method valor() { return 100000000 }
}

// CATEGORIAS
