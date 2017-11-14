//
//  Configuracion.swift
//  Afiliacion
//
//  Created by stefanini on 10/20/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class Configuracion: BaseViewController {
 
    @IBOutlet weak var Version: UILabel!
    @IBOutlet weak var Usuario: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Empresa: UITextField!
    
    
    //visual
    var vista = false
    var vista2 = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Refresh.loadGif(name: "refresh2")
       
         self.Password.isSecureTextEntry = true
        //Botones redondos
        Btbuzon.layer.cornerRadius = 15
        Btbuzon.layer.borderWidth = 1
        
        Btcatalogos.layer.cornerRadius = 15
        Btcatalogos.layer.borderWidth = 1
        
        Btcitas.layer.cornerRadius = 15
        Btcitas.layer.borderWidth = 1
        
        Btacerca.layer.cornerRadius = 15
        Btacerca.layer.borderWidth = 1
        
        Btasociar.layer.cornerRadius = 15
        Btasociar.layer.borderWidth = 1
        
        Btasociaruser.layer.cornerRadius = 15
        Btasociaruser.layer.borderWidth = 1
        
        Usuario.layer.cornerRadius = 15
        Usuario.layer.borderWidth = 1
        
        Password.layer.cornerRadius = 15
        Password.layer.borderWidth = 1
        
        Empresa.layer.cornerRadius = 15
        Empresa.layer.borderWidth = 1
        self.title = "Configuracion"
        if Modo == "OFF" {
            Online.isOn = false
        }else{
            Online.isOn = true
        }
        self.hideKeyboardWhenTappedAround()
    }
    
    @objc func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Configuracion.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    @IBAction func Accion(_ sender: UISwitch) {
        if Online.isOn {
            ActiveOnline(valor: "ON")
            let menu2 = UIImage(named: "Ioffline")
            self.navigationItem.leftBarButtonItem =  UIBarButtonItem(image: menu2, style: .done, target: self, action: #selector(self.onSlideMenuButtonPressed(_:)))
            self.navigationItem.leftBarButtonItem?.tintColor = UIColor.green
        }else {
            ActiveOnline(valor: "OFF")
            let menu2 = UIImage(named: "Ionline")
            self.navigationItem.leftBarButtonItem =  UIBarButtonItem(image: menu2, style: .done, target: self, action: #selector(self.onSlideMenuButtonPressed(_:)))
            self.navigationItem.leftBarButtonItem?.tintColor = UIColor.blue
        }
    }
    
    @IBAction func Buzon(_ sender: UIButton) {
        print("Inciando Sincronizacion")
        ToastExample(message: "Sincronizando Buzon")
        Online.isEnabled = false
        Btbuzon.isEnabled = false
        Btcatalogos.isEnabled = false
        Btcitas.isEnabled = false
        Btacerca.isEnabled = false
        Btasociar.isEnabled = false
        Version.alpha = 0
        vista = false
        Usuario.alpha = 0
        Password.alpha = 0
        Empresa.alpha = 0
        Btasociaruser.alpha = 0
        vista2 = false
        Refresh.alpha = 1
        if Online.isOn {
            Modo = "OFF"
            Updateparam()
            Online.isOn = false
        }
        Datos()
        Buscarparamba2()
   }
    
    @IBAction func Catalogo(_ sender: UIButton) {
        Refresh.alpha = 1
        print("Inciando Sincronizacion")
        ToastExample(message: "Sincronizando Catalogo")
        
        Online.isEnabled = false
        Btbuzon.isEnabled = false
        Btcatalogos.isEnabled = false
        Btcitas.isEnabled = false
        Btacerca.isEnabled = false
        Btasociar.isEnabled = false
        Version.alpha = 0
        vista = false
        Usuario.alpha = 0
        Password.alpha = 0
        Empresa.alpha = 0
        Btasociaruser.alpha = 0
        vista2 = false
        
        if Online.isOn {
            Modo = "OFF"
            Updateparam()
            Online.isOn = false
        }
        Datos()
        Buscarparamca()
    }
    
    @IBAction func Citas(_ sender: UIButton) {
    }
    
    @IBAction func Acerca(_ sender: UIButton) {
        if vista == false {
            Version.alpha = 1
            vista = true
        }else {
            Version.alpha = 0
            vista = false
        }
       
    }
    
    @IBAction func Asociar(_ sender: UIButton) {
        if vista2 == false {
            Usuario.alpha = 1
            Password.alpha = 1
            Empresa.alpha = 1
            Btasociaruser.alpha = 1
            vista2 = true
        }else {
            Usuario.alpha = 0
            Password.alpha = 0
            Empresa.alpha = 0
            Btasociaruser.alpha = 0
            vista2 = false
        }
       
    }
    
    @IBAction func Asociaruser(_ sender: UIButton) {
        print("Inciando Sincronizacion")
        if Usuario.text != "" && Empresa.text != "" && Empresa.text != "" {
            ToastExample(message: "Asociando Usuario....")
            Online.isEnabled = false
            Btbuzon.isEnabled = false
            Btcatalogos.isEnabled = false
            Btcitas.isEnabled = false
            Btacerca.isEnabled = false
            Btasociar.isEnabled = false
            Version.alpha = 0
            vista = false
            Usuario.isEnabled = false
            Password.isEnabled = false
            Empresa.isEnabled = false
            Btasociaruser.isEnabled = false
            Refresh.alpha = 1
            if Online.isOn {
                Modo = "OFF"
                Updateparam()
                Online.isOn = false
            }
            Wslogin4(Empresa: Empresa.text!, User: Usuario.text!, Pass: Password.text!)
        }else {
            ToastExample(message: "Llena todos los campos")
        }
        
    }
  
}
