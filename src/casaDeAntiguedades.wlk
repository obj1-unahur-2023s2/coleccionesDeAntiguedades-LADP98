import antiguedades.*

object casaDeAntiguedades{
	const antiguedades = [juguete,arco,galera]
	
	method antiguedades() = antiguedades
	method adquirir(unaAntiguedad) {
		antiguedades.add(unaAntiguedad)
	}
	method adquirirLote(lote) {
		antiguedades.addAll(lote)
	}
	method tieneAntiguedadEnStock() = antiguedades.size() > 0
	method cantidadDeAntiguedades() = antiguedades.size()
	method ultimaAdquirida() = antiguedades.last()
	method esMuyAntigua(unaAntiguedad) = unaAntiguedad.antiguedad() > 100
	method antiguedadEnLaPosicion(unaPosicion) = antiguedades.get(unaPosicion).antiguedad()
	method restaurarPrimerAntiguedad() = antiguedades.first().restaurar()
	method restaurarUltimaAntiguedad() = antiguedades.last().restaurar()
	method restaurarAntiguedadEnLaPosicion(unaPosicion) = antiguedades.get(unaPosicion).restaurar()
	method restaurarAntiguedadSiSePuede(unaAntiguedad){
		if(unaAntiguedad.estaEnEstado().negate()){
			unaAntiguedad.restaurar()
		}
	}
	method venderTodo() = antiguedades.clear()
}