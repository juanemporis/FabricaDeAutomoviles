//
//  AutomovilElectrico.swift
//  FabricaDeAutomoviles
//
//  Created by wendy manrique on 5/05/22.
//

import Foundation
class AutomovilElectrico: Automovil{
    
    var porcentajeBateria = 100
    func cargarBateria() -> String{
        
        porcentajeBateria = 100
        return "Carga exitosa"
    }
}
