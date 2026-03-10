
// #1
object cuentaCorriente{
    var saldo = 100

    method depositar(valor){
        saldo = saldo + valor
    }

    method extraer(valor){
        saldo = saldo - valor
    }

    method saldo(){
        return saldo
    }
}

// #2
object cuentaGastos{
    var saldo = 100
    var costoOperacion = 20

    method depositar(valor){
        saldo = saldo + valor - costoOperacion
    }

    method extraer(valor){
        saldo = saldo - valor
    }

    method saldo(){
        return saldo
    }
}