class Corsa{
	var color //string
	
	method capacidad() = 4
	method velocidadMax() = 150
	method peso() = 1300
	method color() = color
	method color(unColor){color = unColor}
}

class Kwind{
	var tieneTanqueAdicional = false
	
	method capacidad() = if (tieneTanqueAdicional) 3 else 4
	method velocidadMax() = if (tieneTanqueAdicional) 120 else 110
	method peso() = if (tieneTanqueAdicional) 1350 else 1200
	method color() = "azul"
	method agregarTanqueAdicional(){tieneTanqueAdicional = true}
}

class Trafic{
	var interior
	var motor
	
	method interior(unInterior){interior = unInterior}
	method motor(unMotor){motor = unMotor}
	method capacidad() = interior.capacidadInterior()
	method velocidadMax() = motor.velocidadMaxMotor()
	method peso() = 4000 + interior.pesoInterior() + motor.pesoMotor()
	method color() = "blanco"
}

class AutoEspecial{
	var capacidad = 0
	var velocidadMax = 0
	var peso = 0
	var color = ""
	
	method capacidad() = capacidad
	method velocidadMax() = velocidadMax
	method peso() = peso
	method color() = color
	method capacidad(nuevaCapacidad){capacidad=nuevaCapacidad}
	method velocidadMax(nuevaVelocidad){velocidadMax=nuevaVelocidad}
	method peso(nuevoPeso){peso = nuevoPeso}
	method color(unColor){color = unColor} 
}

object interiorComodo{	
	method capacidadInterior() = 5
	method pesoInterior() = 700
}

object interiorPopular{	
	method capacidadInterior() = 12
	method pesoInterior() = 1000
}

object motorPotente{
	method pesoMotor() = 800
	method velocidadMaxMotor() = 130
}

object motorBarato{
	method pesoMotor() = 500
	method velocidadMaxMotor() = 80
}













