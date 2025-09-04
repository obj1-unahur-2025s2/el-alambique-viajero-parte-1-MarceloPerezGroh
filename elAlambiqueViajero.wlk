
object luke {
  var cuantoVisito = 0
  var ultimoRecuerdo = null

  method viajarA(unaCiudad) {
    cuantoVisito = cuantoVisito + 1
    ultimoRecuerdo = unaCiudad.ultimoRecuerdo()
  }
  method cantidadLugares() = cuantoVisito
  method recuerdoActual() = ultimoRecuerdo
}

object alambiqueVeloz {
  
  method combustibleSuficiente() = true
  method esRapido() = true

  method puedeIrA(unaCiudad) {
    if (unaCiudad.nombre() == "París") {
      return self.combustibleSuficiente()      
    } else if (unaCiudad.nombre() == "Buenos Aires") {
      return self.esRapido()                
    } else if (unaCiudad.nombre() == "Bagdad") {
      return true
    } else if (unaCiudad.nombre() == "Las Vegas") {
      return self.puedeIrA(paris)   // usa el objeto paris ya definido
    } else {
      return false
    }
  }

  method visitar(unaCiudad) {
    if (self.puedeIrA(unaCiudad)) {            
      luke.viajarA(unaCiudad)
    }
  }
}

object paris {
  method ultimoRecuerdo() = "llavero de la torre eiffel"
  method puedeVisitar(vehiculo) = vehiculo.combustibleSuficiente()
}

object buenosAires {
  method ultimoRecuerdo() = "mate"
  method puedeVisitar(vehiculo) = vehiculo.esRapido()
}

object bagdad {
  method ultimoRecuerdo() = "petróleo crudo"
  method puedeVisitar(vehiculo) = true
}

object lasVegas {
  var ciudadHomenaje = paris // al inicio homenajea a París por defecto
  method ultimoRecuerdo() = ciudadHomenaje.ultimoRecuerdo()
  method puedeVisitar(vehiculo) = ciudadHomenaje.puedeVisitar(vehiculo)
}

