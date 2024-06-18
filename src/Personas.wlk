import Cervezas.*
class Persona {
	const property peso
	const property jarrasCompradas = []
	const property escuchaMusicaTradicional
	const property nivelDeAguante
	const property marcas = #{}
	
	method cantAlcoholIngerido() {
		return jarrasCompradas.sum({jarra => jarra.cantAlcohol()})	
	}
	method estaEbria() = self.cantAlcoholIngerido() * peso > nivelDeAguante
	method leGustaLaCerveza()	
}

class Belga inherits Persona {
	override method leGustaLaCerveza(){
		return marcas.filter({marca => marca.lupulo() * marca.litros() > 4})
	}
}

class Checo inherits Persona {
	override method leGustaLaCerveza(){
		return marcas.filter({marca => marca.graduacionDeCerveza() > 0.08})
	}
}