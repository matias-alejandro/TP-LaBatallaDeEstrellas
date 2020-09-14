object pamela {
	var inventario = ["algodón", "agua oxigenada", "cinta de papel","cinta de papel"]
	var energia = 6000
	const gritoDeVictoria = "Acá pasó la Pamela"
	const rol = "La Doctora"
	
	method lucharManoAMano(contrincante) {
		energia += 400
	}
	
	method quitarPorcentajeEnergia(porcentaje) {
		energia = energia*porcentaje/100
	}
	method quitarPuntosDeEnergia(puntos) {
		energia -= puntos
	}
	
	method quitarUltimoItem() {
		const ultimoITem = inventario.last()
		inventario.remove(ultimoITem)
		return ultimoITem
	}
	
	method verUltimoItem() {
		return inventario.last()
	}
	
	method energia(){
		return energia
	}
	
	method gritoDeVictoria() {
		return gritoDeVictoria
	}
	
	method itemsDelInventario() {
		return inventario
	}
}

object pocardo {
	var inventario = ["guitarra", "curitas", "cotonetes"]
	var energia = 5600
	const gritoDeVictoria = "¡Siente el poder de la música!"
	const rol = "El Musicoterapeuta"
	
	method lucharManoAMano(contrincante) {
		energia += 500
	}
	
	method quitarPorcentajeEnergia(porcentaje) {
		energia = energia*porcentaje/100
	}
	method quitarPuntosDeEnergia(puntos) {
		energia -= puntos
	}
	
	method quitarUltimoItem() {
		const ultimoITem = inventario.last()
		inventario.remove(ultimoITem)
		return ultimoITem
	}
	
	method verUltimoItem() {
		return inventario.last()
	}
	
	method energia(){
		return energia
	}
	
	method gritoDeVictoria() {
		return gritoDeVictoria
	}
	
	method itemsDelInventario() {
		return inventario
	}
}

object tulipan {
	var inventario = ["rastrillo", "macetas", "macetas", "manguera"]
	var energia = 8400
	const gritoDeVictoria = "Hora de cuidar a las plantas"
	const rol = "La Guerrera"
	
	method lucharManoAMano(contrincante) {
		contrincante.quitarPorcentajeEnergia(50)
	}
	
	method quitarPorcentajeEnergia(porcentaje) {
		energia = energia*porcentaje/100
	}
	method quitarPuntosDeEnergia(puntos) {
		energia -= puntos
	}
	
	method quitarUltimoItem() {
		const ultimoITem = inventario.last()
		inventario.remove(ultimoITem)
		return ultimoITem
	}
	
	method verUltimoItem() {
		return inventario.last()
	}
	
	method energia(){
		return energia
	}
	
	method gritoDeVictoria() {
		return gritoDeVictoria
	}
	
	method itemsDelInventario() {
		return inventario
	}
}

object toro {
	var inventario = []
	var energia = 7800
	const gritoDeVictoria = "No se metan con el toro"
	const rol = "El Tanque"
	
	method lucharManoAMano(contrincante) {
		contrincante.quitarPuntosDeEnergia(200)
		if(!inventario.contains(contrincante.verUltimoItem()))
			inventario.add(contrincante.quitarUltimoItem())
	}
	
	method quitarPorcentajeEnergia(porcentaje) {
		energia = energia*porcentaje/100
	}
	method quitarPuntosDeEnergia(puntos) {
		energia -= puntos
	}
	
	method quitarUltimoItem() {
		const ultimoITem = inventario.last()
		inventario.remove(ultimoITem)
		return ultimoITem
	}
	
	method verUltimoItem() {
		return inventario.last()
	}
	
	method energia(){
		return energia
	}
	
	method gritoDeVictoria() {
		return gritoDeVictoria
	}
	
	method itemsDelInventario() {
		return inventario
	}
}
