//
//  Automovil.swift
//  FabricaDeAutomoviles
//
//  Created by wendy manrique on 4/05/22.
//

import Foundation

class Automovil{
    
    var color = "neutro"
    var numeroLlantas = 4
    var precio = 8000
    
    func encender() -> Bool {
        return true
    }
    func acelerar() -> String {
        return "Aceleración Exitosa"
    }
    
    func apagar() -> Bool{
        return false
    }
}
