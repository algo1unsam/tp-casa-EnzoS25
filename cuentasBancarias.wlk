
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

// #3

object cuentaCombi{
    var primaria= cuentaCorriente 
    var costoOperacion = 50
    var saldoSecundaria= cuentaGastos
    var saldoTotal = primaria+ saldoSecundaria

    method depositar(valor){
        primaria.depositar(valor)
    }

    method extraer(valor){
        if (primaria.saldo() >= valor){
            primaria.depositar(valor)
        }
        else {
            saldoSecundaria.extraer(valor)
        }
    }

    method chequeoPrimaria(valor){
        return primaria.saldo()
    }

}