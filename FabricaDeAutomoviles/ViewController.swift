//
//  ViewController.swift
//  FabricaDeAutomoviles
//
//  Created by wendy manrique on 4/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    var tipoAutomovilInicio: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
                
    }
    @IBAction func crearAutomovil(_ sender: Any) {
        tipoAutomovilInicio = 0
        performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }
    
    @IBAction func crearAutomovilMazda(_ sender: Any) {
        tipoAutomovilInicio = 1
        performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destino = segue.destination as?
            ViewControllerSegundaPantalla {
            destino.tipoAutomovil = self.tipoAutomovilInicio
        
        }
    }
}

