object casa{
    var viveres = 50
    var monto = 0

    method monto(valor){
        monto = valor
    }

    method monto() {
      return monto
    }
    
    method viveresSuficientes() {
      return viveres > 40
    }

    method necesitaReparaciones() {
        return monto > 0
      
    }

    method estaEnOrden() {
        return self.viveresSuficientes() and not self.necesitaReparaciones()
      
    }
}