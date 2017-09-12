//
//  Solicitudes.swift
//  Afiliacion
//
//  Created by stefanini on 07/09/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class Solicitudes: BaseViewController {

    var Id = ""
    var BuzonActivo = ""
    @IBOutlet weak var Atras: UIBarButtonItem!
    
    

    
    @IBOutlet weak var BtGen: UILabel!
    @IBOutlet weak var Ldomicilio: UILabel!
    @IBOutlet weak var Domicilio: UILabel!
    @IBOutlet weak var Ldatos: UILabel!
    @IBOutlet weak var Datos: UILabel!
    @IBOutlet weak var Lpersona: UILabel!
    @IBOutlet weak var Persona: UILabel!
    @IBOutlet weak var Lreferencias: UILabel!
    @IBOutlet weak var Referencias: UILabel!
    @IBOutlet weak var Ldocumentos: UILabel!
    @IBOutlet weak var Documentos: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         addSlideMenuButton()
        //Etiquetas Redondas
        
        BtGen.layer.masksToBounds = true
        BtGen.layer.cornerRadius = 17.5

        Domicilio.layer.masksToBounds = true
        Domicilio.layer.cornerRadius = 17.5
        
        Datos.layer.masksToBounds = true
        Datos.layer.cornerRadius = 17.5
        
        Persona.layer.masksToBounds = true
        Persona.layer.cornerRadius = 17.5
        
        Referencias.layer.masksToBounds = true
        Referencias.layer.cornerRadius = 17.5
        
        Documentos.layer.masksToBounds = true
        Documentos.layer.cornerRadius = 17.5
        
        
        print("Id de usuario:",Id)
        print("El buzon activo es:",BuzonActivo)
        self.title = "ID SOLICITUD: " + Id
               
       
    }
    
   
    @IBAction func Atras(_ sender: UIBarButtonItem) {
         //Accion programada para ir hacia atras
        self.navigationController?.popViewController(animated: true)
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "General"{
            let Gen = segue.destination as! General
            Gen.Solicitud = Int(Id)!
            Gen.Buzon = BuzonActivo
        }
     }
}
