import rodados.*

class Dependencia{
	const flota = []
	var empleados = 0
	
	method flota() = flota
	method empleados() = empleados
	method empleados(num){empleados = num}
	method agregarAFlota(rodado){flota.add(rodado)}
	method quitarDeFlota(rodado){if (flota.contains(rodado)) flota.remove(rodado)}
	method pesoTotalFlota() = flota.sum({r => r.peso()})
	method estaBienEquipada() = flota.size()>=3 and flota.all({r=>r.velocidadMax() >= 100})
	method capacidadTotalEnColor(color){
		const flotaColor = flota.filter({r=>r.color() == color})
		return flotaColor.sum({r=>r.capacidad()})
	}
	method colorDelRodadoMasRapido(){
		const rodadoMasRapido = flota.max({r=>r.velocidadMax()})
		return rodadoMasRapido.color()
	}
	method capacidadTotal() = flota.sum({r=>r.capacidad()})
	//method capacidadFaltante() = self.empleados() - self.capacidadTotal() 
	method capacidadFaltante(){
		var faltante = 0
		if (self.empleados() - self.capacidadTotal()>0){
			faltante = self.empleados() - self.capacidadTotal()
		}else{
			faltante = "Hay más capacidad que empleados"
		}
		return faltante
	}
	method esGrande() = flota.size()>=5 and self.empleados()>=40
}
