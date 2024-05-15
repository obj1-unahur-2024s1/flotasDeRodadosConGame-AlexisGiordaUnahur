class Pedido{
	var distanciaRequerida // int
	var tiempoMax // int
	var pasajeros // int
	var coloresIncompatibles // []
	
	method distanciaRequerida() = distanciaRequerida
	method distanciaRequerida(nuevaDistancia){distanciaRequerida = nuevaDistancia}
	method tiempoMax() = tiempoMax
	method tiempoMax(nuevaTiempoMax) {tiempoMax = nuevaTiempoMax}
	method pasajeros() = pasajeros
	method pasajeros(cantidad){pasajeros = cantidad}
	method coloresIncompatibles() = coloresIncompatibles
	method coloresIncompatibles(listaColores){coloresIncompatibles = listaColores}
	method velocidadRequerida() = self.distanciaRequerida() / self.tiempoMax()
	method puedeSatisfacerElPedido(unAuto) = 
		unAuto.velocidadMax() >= self.velocidadRequerida() and 
		unAuto.capacidad() >= self.pasajeros() and 
		not self.coloresIncompatibles().contains(unAuto.color())
	method acelerar(){self.tiempoMax(self.tiempoMax()-1)}
	method relajar(){self.tiempoMax(self.tiempoMax()+1)}
	
}
