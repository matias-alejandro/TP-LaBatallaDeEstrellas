import personajes.*

object equipo1 {
	const integrantes = #{pamela, tulipan}
	
	method integrantes() {
		return integrantes
	}
	
	method combatir(equipoOpuesto) {
		integrantes.forEach({integrante => 
			equipoOpuesto.integrantes().forEach({adversario => 
				integrante.lucharManoAMano(adversario)
			})
		})
	}
	
	method energiaDelEquipo() {
		return integrantes.sum({integrante => integrante.energia()})
	}
	
	method gritosDeVictoria() {
		return integrantes.map({integrante => integrante.gritoDeVictoria()})
	}
}

object equipo2 {
	const integrantes = #{toro, pocardo}
	
	method integrantes() {
		return integrantes
	}
	
	method combatir(equipoOpuesto) {
		integrantes.forEach({integrante => 
			equipoOpuesto.integrantes().forEach({adversario => 
				integrante.lucharManoAMano(adversario)
			})
		})
	}
	
	method energiaDelEquipo() {
		return integrantes.sum({integrante => integrante.energia()})
	}
	
	method gritosDeVictoria() {
		return integrantes.map({integrante => integrante.gritoDeVictoria()})
	}
}

object competencia {
	var equipos = #{equipo1, equipo2}
	
	method combatir() {
		equipo1.combatir(equipo2)
		equipo2.combatir(equipo1)
		
		return self.equipoGanador().gritosDeVictoria()
	} 
	
	method equipoGanador() {
		return equipos.max({equipo => equipo.energiaDelEquipo()})
	}
}