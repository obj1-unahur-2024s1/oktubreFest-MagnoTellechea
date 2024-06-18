class Marca {
	const property lupulo
	const property paisDondeSeFabrica
	
	method graduacionDeCerveza()
}

class Corona inherits Marca {
	var property graduacionDeCerveza
	
}

class Guiness inherits Marca {
	override method graduacionDeCerveza(){
		return graduacionReglamentaria.graduacionMundial().min(lupulo*2) 
	}
}

object graduacionReglamentaria{
	var property graduacionMundial = 5
}

class Hofbrau inherits Guiness {
	override method graduacionDeCerveza(){
		return super() * 1.25
	}
}

class Jarra {
	const property litros
	var property marca
	method cantAlcohol() {
		return(litros * marca.graduacionDeCerveza())
	}
}