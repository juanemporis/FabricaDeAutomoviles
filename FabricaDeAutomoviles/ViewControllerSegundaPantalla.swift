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
    var automovilNormal : Automovil?
    var autoElectrico : AutomovilElectrico?
    
    var estadoAutomovil = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switch tipoAutomovil!{
        case 0:
            automovilNormal = Automovil()
            ImageView.image = UIImage(named: "Automovil normal")
            label.text = "Se creo el auto normal correctamente"
            
            
            
        case 1:
            autoElectrico = AutomovilElectrico()
            ImageView.image = UIImage(named: "Mazda Electrico")

            autoElectrico!.color = "Azul"
            autoElectrico!.precio = 8000
            label.text = "Se creo el automovil electrico mazda correctamente"
            
        default:
            print("Error")
        }
    }
    @IBAction func mostrarInformacion(_ sender: Any) {
        switch tipoAutomovil! {
        case 0 :
            label.text = """
                        El automovil tiene \(automovilNormal!.numeroLlantas)LLantas ,
                        es de clor \(automovilNormal!.color),
                        su precio es de \(automovilNormal!.precio) USD
            """
        case 1 :
            label.text = """
                        El automovil tiene \(autoElectrico!.numeroLlantas) llantas,
                        es de color \(autoElectrico!.color),
                        su precio es de  \(autoElectrico!.precio) USD y
                        su carga esta al \(autoElectrico!.porcentajeBateria) de bateria
            """
        default:
            print("Error")
        }
        
    }
    @IBAction func encender(_ sender: Any) {
        switch tipoAutomovil!{
        case 0 :
            if(!estadoAutomovil){
                estadoAutomovil = automovilNormal!.encender()
                label.text = "El automovil encendio correctamente"
            }else{
                label.text = "El automovil ya esta encendido"
            }
        case 1 :
            if(!estadoAutomovil){
                estadoAutomovil = autoElectrico!.encender()
                label.text = "El automovil encendido correctamente"
                autoElectrico!.porcentajeBateria = 75
            }else{
                label.text = "El automovil ya esta encendido"
            }
        default:
            print("Error")
            
        }
    }
    @IBAction func apagar(_ sender: Any) {
    
        switch tipoAutomovil! {
        case 0 :
        if(estadoAutomovil){
        estadoAutomovil = automovilNormal!.apagar()
        label.text = "El automovil se apago correctamente"
        }else{
            label.text = "El automovil ya esta apagado"
        }
        case 1 :
            if (estadoAutomovil){
                estadoAutomovil = autoElectrico!.apagar()
                label.text = "El automovil se apago correctamente"
            }else{
                label.text = "El automovil electrico ya esta apagado"
            }
        default:
            print("Error")
    }
       
}
    @IBAction func acelerar(_ sender: Any) {
        switch tipoAutomovil!{
        case 0 :
            if (estadoAutomovil){
                label.text = automovilNormal!.acelerar()
            }else{
                label.text = "El automovil tiene que estar encendido para poder acelerar"
            }
        case 1:
            if (estadoAutomovil){
                label.text = autoElectrico!.acelerar()
                autoElectrico!.porcentajeBateria = autoElectrico!.porcentajeBateria - 10
            }else{
                label.text = "El automovil electrico tiene que estar encendido para poder acelerar"
            }
        default:
            print("Error")
    }
}
}

