//
//  Solicitudes.swift
//  Afiliacion
//
//  Created by stefanini on 07/09/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class Solicitudes: BaseViewController,Miscambios{

    var Id = ""
    var BuzonActivo = ""
    var identificador = 0
    var margen = -63
    var CatalogoActivo = ""
    @IBOutlet weak var Atras: UIBarButtonItem!
    
    @IBOutlet weak var Btgen: UILabel?
   
    @IBOutlet weak var LDom: UILabel?
    @IBOutlet weak var Domicilio: UILabel?
    @IBOutlet weak var LDatos: UILabel!
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
        self.title = "ID SOLICITUD: " + Id
       
       
    }
    func Vistadata(valor: Int) {
        super.viewDidLoad()
        print(valor)
        if valor == 1{
            print("Generales")
        }else {
            if valor == 2 {
                print("Domiciliox")
                DispatchQueue.main.async {
                    self.LDom?.backgroundColor = UIColor.black
                    self.Domicilio?.backgroundColor = UIColor.black
                    
                }
                
                }else {
                if valor == 3 {
                    print("Datos economicos")
                }else {
                    if valor == 4 {
                        print("Persona politica")
                    }else {
                        if valor == 5 {
                            print("Referencias famililares")
                        }
                    }
                }
            }
        }
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
    
    func cambio() {
        self.LDom?.backgroundColor = UIColor.black
        self.Domicilio?.backgroundColor = UIColor.black
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "General"{
            let Gen = segue.destination as! General
            Gen.Solicitud = Int(Id)!
            Gen.Buzon = BuzonActivo
            Gen.catalogoA = CatalogoActivo
            Gen.margeny = margen
        }
     }
}
