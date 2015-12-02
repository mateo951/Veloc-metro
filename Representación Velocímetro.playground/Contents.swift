// Representacion de un Velocímetro

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        
        self = velocidadInicial
    }
}

class Auto {

    var velocidad = Velocidades(velocidadInicial: .Apagado)

    init(){
        Velocidades(velocidadInicial: .Apagado)
    }
    func cambioDeVelocidad( ) -> ( actual: Int, velocidadEnCadena: String) {
        var velocidadEnCadena = ""
        let actual = self.velocidad
        
        if actual == .Apagado {
            velocidadEnCadena = "Apagado"
            velocidad = .VelocidadBaja
            
        } else if actual == .VelocidadBaja {
            velocidadEnCadena = "Velocidad Baja"
            velocidad = .VelocidadMedia
            
        } else if actual == .VelocidadMedia {
            velocidadEnCadena = "Velocidad Media"
            velocidad = .VelocidadAlta
        } else {
            velocidadEnCadena = "Velocdiad Alta"
            velocidad = .VelocidadMedia
            
        }
        let resultado = (actual.rawValue,velocidadEnCadena)
        return resultado
    }
    }

var auto = Auto()
/*
auto.cambioDeVelocidad()
auto.velocidad
auto.cambioDeVelocidad()
auto.velocidad
auto.cambioDeVelocidad()
auto.velocidad
auto.cambioDeVelocidad()
auto.velocidad
auto.cambioDeVelocidad()
auto.velocidad
*/

for numero in 0...20 {
    print(auto.cambioDeVelocidad())
}

