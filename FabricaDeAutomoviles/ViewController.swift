//
//  ViewController.swift
//  FabricaDeAutomoviles
//
//  Created by wendy manrique on 4/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let automovil = Automovil()
        
        print("El boleano que respresenta el automovil encendido es: \(automovil.encender())")
        
    }
    
}

