//
//  ViewControllerSegundaPantalla.swift
//  FabricaDeAutomoviles
//
//  Created by wendy manrique on 4/05/22.
//

import UIKit

class ViewControllerSegundaPantalla: ViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var tipoAutomovil: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch tipoAutomovil! {
        case 0:
            print("Voy a crear un objeto automovil sencillo")
            
        case 1:
            print("Voy a crear un objeto automovil Mazda")
            
        default:
            print("Error")
        }
    }
    @IBAction func mostrarInformacion(_ sender: Any) {
    }
    @IBAction func encender(_ sender: Any) {
    }
    @IBAction func apagar(_ sender: Any) {
    }
    @IBAction func acelerar(_ sender: Any) {
    }
}
