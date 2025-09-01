object pepe {
  var property categoria = cadete
  var property tipoBonoResultados = bonoFijo
  var property tipoBonoPresentismo = normalPresentismo
  var property diasFaltados = 3

  method neto() = categoria.neto()
  method bonoResultados() = tipoBonoResultados.bono(self)
  method bonoPresentismo() = tipoBonoPresentismo.bono(self)

  method sueldo() = self.neto() + self.bonoResultados() + self.bonoPresentismo()
}

object gerente {
  method neto() = 15000
}

object cadete {
  method neto() = 20000
}

object bonoPorcentaje {
  method bono(empleado) = empleado.neto() * (10/100)
}

object bonoFijo {
  method bono(empleado) = 800
}

object bonoNulo {
  method bono(empleado) = 0
}

object normalPresentismo {
  method bono(empleado) = 
    if (empleado.diasFaltados() == 0) {
      2000
    } else if (empleado.diasFaltados() == 1) {
      1000
    } else {
      0
    }
}

object ajustePresentismo {
  method bono(empleado) = 
    if (empleado.diasFaltados() == 0) {
      100
    } else {
      0
    }
}

object demagogicoPresentismo {
  method bono(empleado) = 
    if (empleado.neto() < 18000) {
      500
    } else {
      300
    }
}

object nuloPresentismo {
  method bono(empleado) = 0
}