//
//  Solicitudes.swift
//  Afiliacion
//
//  Created by stefanini on 07/09/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class Solicitudes: BaseViewController{

    @objc var Id = ""
    @objc var BuzonActivo = ""
    @objc var identificador = 0
    @objc var margen = 0
    @objc var CatalogoActivo = ""
    @objc var Imagen = ""
    @objc var Imagent = ""
    
    @IBOutlet weak var Atras: UIBarButtonItem!
    
    @IBOutlet weak var Btgen: UILabel?
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
       /*
        //Etiquetas Redondas
        
        Btgen?.layer.masksToBounds = true
        Btgen?.layer.cornerRadius = 17.5

        Domicilio?.layer.masksToBounds = true
        Domicilio?.layer.cornerRadius = 17.5
        
        Datos.layer.masksToBounds = true
        Datos.layer.cornerRadius = 17.5
        
        Persona.layer.masksToBounds = true
        Persona.layer.cornerRadius = 17.5
        
        Referencias.layer.masksToBounds = true
        Referencias.layer.cornerRadius = 17.5
        
        Documentos.layer.masksToBounds = true
        Documentos.layer.cornerRadius = 17.5
        
        if identificador == 2 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
        }
        if identificador == 3 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
            LDatos.backgroundColor = UIColor.blue
            Datos.backgroundColor = UIColor.blue
        }
        if identificador == 4 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
            LDatos.backgroundColor = UIColor.blue
            Datos.backgroundColor = UIColor.blue
            Lpersona.backgroundColor = UIColor.blue
            Persona.backgroundColor = UIColor.blue
        }
        if identificador == 5 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
            LDatos.backgroundColor = UIColor.blue
            Datos.backgroundColor = UIColor.blue
            Lpersona.backgroundColor = UIColor.blue
            Persona.backgroundColor = UIColor.blue
            Lreferencias.backgroundColor = UIColor.blue
            Referencias.backgroundColor = UIColor.blue
        }
        if identificador == 6 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
            LDatos.backgroundColor = UIColor.blue
            Datos.backgroundColor = UIColor.blue
            Lpersona.backgroundColor = UIColor.blue
            Persona.backgroundColor = UIColor.blue
            Lreferencias.backgroundColor = UIColor.blue
            Referencias.backgroundColor = UIColor.blue
            Ldocumentos.backgroundColor = UIColor.blue
            Documentos.backgroundColor = UIColor.blue
        }
        Btgen?.backgroundColor = UIColor.blue
        print("Id de usuario:",Id)
        print("El buzon activo es:",BuzonActivo)
        print("El Catalogo activo es:",CatalogoActivo)
        */
       self.title = "ID SOLICITUD: " + Id
    }
   
@IBAction func Atras(_ sender: UIBarButtonItem) {
         //Accion programada para ir hacia atras
       // self.navigationController?.popViewController(animated: true)
    
        let destViewController : UIViewController = self.storyboard!.instantiateViewController(withIdentifier: "Home")
        
        let topViewController : UIViewController = self.navigationController!.topViewController!
        
        if (topViewController.restorationIdentifier! == destViewController.restorationIdentifier!){
            print("Same VC")
        } else {
            self.navigationController!.pushViewController(destViewController, animated: true)
        }
 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "General"{
            let Gen = segue.destination as! General
            Gen.Solicitud = Int(Id)!
            Gen.Buzon = BuzonActivo
            Gen.catalogoA = CatalogoActivo
            Gen.margeny = margen
            Gen.Identificador = identificador
            Gen.imagen = Imagen
            Gen.imagent = Imagent
        }
     }
}
