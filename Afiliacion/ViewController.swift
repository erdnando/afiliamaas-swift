//
//  ViewController.swift
//  Afiliacion
//
//  Created by stefanini on 7/28/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
   
   
    @IBOutlet weak var User: UITextField!
    @IBOutlet weak var Pass: UITextField!
    @IBOutlet weak var Empresa: UITextField!
    @IBOutlet weak var Perfil: UISwitch!
    
    @IBOutlet weak var Btacceder: UIButton!
    
    //Unique Device Id
    @objc var Uniqueid = UIDevice.current.identifierForVendor!.uuidString
    @objc var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    //Arreglo de entidad usuarios
    
    @objc var userArray:[USUARIO] = []
    @objc var paramArray:[PARAMETRO] = []
    
    @objc var buzonA:[Rbuzon] = []
    @objc var buzonB:[BUZON_A] = []
    
    @objc var cataloA:[CATALOGO_A] = []
    @objc var cataloB:[Rcatalogo] = []
    
    @objc var prodA:[ProductoA] = []
    @objc var prodB:[Producto] = []
    
    //Activos
    @objc var Buzoninsert = ""
    @objc var Catalogoinsert = ""
    @objc var productinsert = ""
    @objc var agendinsert = ""
    
    //Datos usuario
    @objc var Idusuario = 0
    @objc var Token = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        //Quitar Opcion de Regresar
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.title = "Iniciar de sesión"
        self.hideKeyboardWhenTappedAround()
        self.Pass.isSecureTextEntry = true
        
        Btacceder.layer.cornerRadius = 25
        Btacceder.layer.borderWidth = 1
        Btacceder.layer.borderColor = UIColor(red:0.83, green:0.83, blue:0.83, alpha:1.0).cgColor
        Btacceder.backgroundColor = UIColor(red:0.11, green:0.74, blue:0.92, alpha:1.0)
        
        User.layer.cornerRadius = 25
        User.layer.borderWidth = 1
        Pass.layer.cornerRadius = 25
        Pass.layer.borderWidth = 1
        Empresa.layer.cornerRadius = 25
        Empresa.layer.borderWidth = 1
        
        User.text = "jaimea"
        Pass.text = "12345678"
        Empresa.text = "STF"
        
        self.fetchData()
        self.fetchData2()
        self.fetchData3()
        self.fetchData4()
        self.fetchData5()
        self.fetchData6()
        self.fetchData7()
        self.fetchData8()
        
        let tamano = paramArray.count
        print(tamano)
        if tamano == 0{
            Parametros()
        }else{
            //Eliminarparam()
            //Verparam()
            //verBuzon()
        }
       
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    @objc func fetchData () {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            userArray = try context.fetch(USUARIO.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    @objc func fetchData2() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            paramArray = try context.fetch(PARAMETRO.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    @objc func fetchData3() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            buzonA = try context.fetch(Rbuzon.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    @objc func fetchData4() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            buzonB = try context.fetch(BUZON_A.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    @objc func fetchData5() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            cataloA = try context.fetch(CATALOGO_A.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    @objc func fetchData6() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            cataloB = try context.fetch(Rcatalogo.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    @objc func fetchData7() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            prodA = try context.fetch(ProductoA.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    @objc func fetchData8() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            prodB = try context.fetch(Producto.fetchRequest())
        }catch {
            print(error)
        }
    }
    //si se usa
    @objc func Parametros() {
        
        let newp = NSEntityDescription.insertNewObject(forEntityName: "PARAMETRO", into: context)
        newp.setValue(1, forKey: "id_parametro")
        newp.setValue("BUZON_ACTIVO", forKey: "parametro")
        newp.setValue("A", forKey: "valor")
        newp.setValue("1", forKey: "estatus")
        
      
        let newp2 = NSEntityDescription.insertNewObject(forEntityName: "PARAMETRO", into: context)
        newp2.setValue(2, forKey: "id_parametro")
        newp2.setValue("CATALOGO_ACTIVO", forKey: "parametro")
        newp2.setValue("A", forKey: "valor")
        newp2.setValue("1", forKey: "estatus")
        
        let newp3 = NSEntityDescription.insertNewObject(forEntityName: "PARAMETRO", into: context)
        newp3.setValue(3, forKey: "id_parametro")
        newp3.setValue("CONFIG_INICIO", forKey: "parametro")
        newp3.setValue("0", forKey: "valor")
        newp3.setValue("1", forKey: "estatus")
        
        let newp4 = NSEntityDescription.insertNewObject(forEntityName: "PARAMETRO", into: context)
        newp4.setValue(4, forKey: "id_parametro")
        newp4.setValue("CATALOGO_VERSION", forKey: "parametro")
        newp4.setValue("1.0", forKey: "valor")
        newp4.setValue("1", forKey: "estatus")
        
        let newp5 = NSEntityDescription.insertNewObject(forEntityName: "PARAMETRO", into: context)
        newp5.setValue(5, forKey: "id_parametro")
        newp5.setValue("MODALIDAD", forKey: "parametro")
        newp5.setValue("OFF", forKey: "valor")
        newp5.setValue("1", forKey: "estatus")
        
        let newp6 = NSEntityDescription.insertNewObject(forEntityName: "PARAMETRO", into: context)
        newp6.setValue(6, forKey: "id_parametro")
        newp6.setValue("AGENDA_ACTIVA", forKey: "parametro")
        newp6.setValue("A", forKey: "valor")
        newp6.setValue("1", forKey: "estatus")
        
        let newp7 = NSEntityDescription.insertNewObject(forEntityName: "PARAMETRO", into: context)
        newp7.setValue(7, forKey: "id_parametro")
        newp7.setValue("REFRESH_MODALIDAD", forKey: "parametro")
        newp7.setValue("0", forKey: "valor")
        newp7.setValue("1", forKey: "estatus")
        
        let newp8 = NSEntityDescription.insertNewObject(forEntityName: "PARAMETRO", into: context)
        newp8.setValue(8, forKey: "id_parametro")
        newp8.setValue("PRODUCTO_ACTIVO", forKey: "parametro")
        newp8.setValue("A", forKey: "valor")
        newp8.setValue("1", forKey: "estatus")
        
        do {
            try context.save()
            self.ToastExample(message: "Parametros insertados")
            
        }catch {
            print(error)
        }
        
    }
    
    @objc func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @IBAction func Acceder(_ sender: UIButton) {
       
        if User.text == "" {
           let alert = UIAlertController(title: "AVISO!", message: "Usuario vacio" , preferredStyle: UIAlertControllerStyle.alert)
           alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: nil))
           self.present(alert, animated: true, completion: nil)
       }
        
        if Pass.text == "" {
            let alert = UIAlertController(title: "AVISO!", message: "Password vacio" , preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        if Empresa.text == "" {
            let alert = UIAlertController(title: "AVISO!", message: "Empresa vacia" , preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        if User.text != "" && Pass.text != "" && Empresa.text != ""{
            
            if  Perfil.isOn {
                 Wslogin()
                ToastExample(message: "Iniciando Sincronizacion")
            }else {
                if userArray.count == 0 {
                    let alert = UIAlertController(title: "AVISO!", message: "¡Login Incorrecto!" , preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }else {
                    Buscarusuario()
                }
            }
            /*
            Verparam()
            print("BuzonB:",buzonA.count)
            print("CatalogoB",cataloA.count)
 
            verBuzon()
           // verCatalogos()
            */
            }
    }
    
    @objc func ToastExample(message:String){
        let toastLabel =
                UILabel(frame:
                CGRect(x: self.view.frame.size.width/2 - 150,
                       y: self.view.frame.size.height-100,
                       width: 300,
                       height: 35))
        toastLabel.backgroundColor = UIColor.white
        toastLabel.textColor = UIColor.black
        toastLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(toastLabel)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        UIView.animate(withDuration: 2.0, animations: {
            toastLabel.alpha = 0.0
        })
    }
    
    
    @objc func Updatebuzona(){
        let request = NSFetchRequest<Rbuzon>(entityName: "Rbuzon")
        do {
            let searchResults = try context.fetch(request)
            for task in searchResults {
                if task.id_solicitud == 1772 {
                    task.estatus = 6
                }
            }
        } catch {
            print("Error with request: \(error)")
        }
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
       
    }
    
    //si se usa
    @objc func Buscarusuario(){
        var num = 0
        var bandera = true
        repeat {
            if userArray[num].user == User.text! && userArray[num].contrasena == Pass.text! && userArray[num].compania == Empresa.text!{
                print("registro encontrado")
                bandera = false
                break
            }
            num = num+1
        }while num < userArray.count
        
        if bandera == true {
            let alert = UIAlertController(title: "AVISO!", message: "¡Login Incorrecto!" , preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }else{
            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home") as? Home {
                vc.Usuario = User.text!
                vc.compania = Empresa.text!
                vc.Contrasena = Pass.text!
                vc.id = Int(userArray[num].id_usuario)
                self.navigationController?.pushViewController(vc, animated: false)
            }
        }
    }
    
    @objc func Verparam(){
        var num = 0
        repeat {
            print("indice:",num,"Id:",paramArray[num].id_parametro,"parametro:",paramArray[num].parametro!,"valor",paramArray[num].valor!)
            
            num = num+1
        }while num < paramArray.count
    }
    
    @objc func verBuzon(){
        print("Registros del Buzon activo")
        var num = 0
        repeat {
            print("IdSolicitud",buzonA[num].id_solicitud,"Fecha de alta",buzonA[num].fecha_alta!,"estatus",buzonA[num].estatus)
            //print("indice:",num,"IDSOLICITUD:",buzonB[num].id_solicitud_b,"Xml:",buzonB[num].fecha_alta_b,"Estatus",buzonB[num].estatus_b)
            num = num+1
        }while num < buzonA.count
    }
    
    @objc func verCatalogos(){
        print("Registros del catalogo Activo")
        var num = 0
        repeat {
          print("indice:",num,"Id:",cataloA[num].id_catalogo,"Estatus:",cataloA[num].estatus! ,"padre",cataloA[num].padre!)
            
            num = num+1
        }while num < cataloA.count
    }
    
    @objc func Wslogin() {
        let json: [String: Any] = [ "Promotoria":"",
                                    "RegPromotor":"",
                                    "Compania":Empresa.text!,
                                    "Formato":"",
                                    "Usuario":User.text!,
                                    "Contrasenia":Pass.text!,
                                    "Coordinador":["ClaveC":"","NombreC":""],
                                    "Gerente":["ClaveG":"","NombreG":""],
                                    "TipoUsuario":"4"]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "https://stefaninimx.com/mx.com.stefanini.service.api.rest/Service1.svc/Login")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // insert json data to the request
        request.httpBody = jsonData
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            
            if var responseJSON = responseJSON as? [String: Any] {
                DispatchQueue.main.async {
                 self.ToastExample(message: "Obteniendo usuario...")
                   
                    self.Idusuario = responseJSON["IdUsuario"] as! Int
                    print("Id Usuario: ",self.Idusuario)
                    
                    if self.Idusuario == 0 {
                        let alert = UIAlertController(title: "AVISO!", message: "¡Login Incorrecto!" , preferredStyle: UIAlertControllerStyle.alert)
                        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                    }else {
                        print("usuario encontrado")
                        self.Token = (responseJSON["Token"] as? String)!
                        print("Token Usuario: ",self.Token)
                        self.Buscarparamba()
                    }
                    
                }
            }else{
                print(" no Respuesta Json")
            }
        }
        task.resume()
    }
    //Buscar buzon activo
    @objc func Buscarparamba(){
        ToastExample(message: "Obteniendo Buzon Activo.....")
        var num = 0
        repeat{
            if paramArray[num].parametro == "BUZON_ACTIVO" {
                print("Buzon activo es:",paramArray[num].valor!)
                break
            }else {
                num = num+1
            }
        }while num < paramArray.count
        
        if paramArray[num].valor == "A" {
            print("Tamano de buzon A:",buzonA.count)
            self.Buzoninsert = "B"
            if buzonA.count == 0{
                
                if self.buzonB.count == 0 {
                    self.Buscarparamca()
                }else {
                    self.Eliminarbuzon(Arreglo: "B")
                }
            } else {
                 Buscarbuzon(Arreglo: paramArray[num].valor!)
            }
        }else {
            self.Buzoninsert = "A"
            print("Tamano de buzon B:",buzonB.count)
            if buzonB.count == 0 {
                if buzonA.count == 0 {
                    self.Buscarparamca()
                }else {
                    Eliminarbuzon(Arreglo: "A")
                }
            }else {
                  Buscarbuzon(Arreglo: paramArray[num].valor!)
            }
        }
        
    }
    
    //Buscar estatus 6 y 7
    @objc func Buscarbuzon(Arreglo:String){
        //BuzonA = Rbuzon  BuzonB = Buzon
        ToastExample(message: "Obteniendo Solicitudes pendientes")
        var num = 0
        var bandera = true
        if Arreglo == "A" {
            repeat{
                if buzonA[num].estatus == 6 || buzonA[num].estatus == 7{
                    print("encontre un estatus 6 o 7")
                    bandera = false
                    break
                }else {
                    num = num+1
                }
            }while num < buzonA.count
            if bandera == true {
                print("no ay estatus pendientes")
                ToastExample(message: "No ay estatus pendientes")
                if buzonB.count == 0 {
                   self.Buscarparamca()
                }else {
                      Eliminarbuzon(Arreglo: "B")
                }
                
            }else {
                let alert = UIAlertController(title: "¡Aviso!", message: "Tienes Solicitudes Pendientes deseas eliminarlas", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
                    if self.buzonB.count == 0 {
                       self.Buscarparamca()
                    }else {
                        self.Eliminarbuzon(Arreglo: "B")
                    }
                }))
                alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler:{ (action: UIAlertAction!) in
                     self.Perfil.isOn = false
                     self.ToastExample(message: "Proceso de Sincronizacion cancelado")
                }))
                self.present(alert, animated: true, completion: nil)
                
            }
        }else {
            repeat {
                if buzonB[num].estatus_b == 6 || buzonB[num].estatus_b == 7 {
                    print("encontre un estatus 6 0 7")
                    bandera = false
                    break
                }else {
                    num = num + 1
                }
            }while num < buzonB.count
            if bandera == true {
                print("no ay estatus pendientes")
                ToastExample(message: "No ay estatus pendientes")
                if buzonA.count == 0 {
                     self.Buscarparamca()
                }else {
                     Eliminarbuzon(Arreglo: "A")
                }
                
            }else {
                let alert = UIAlertController(title: "¡Aviso!", message: "Tienes Solicitudes Pendientes deseas eliminarlas", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
                    if self.buzonA.count == 0 {
                       self.Buscarparamca()
                    }else {
                        self.Eliminarbuzon(Arreglo: "A")
                    }
                }))
                alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler:{ (action: UIAlertAction!) in
                    self.ToastExample(message: "Proceso de Sincronizacion cancelado")
                }))
                
                self.present(alert, animated: true, completion: nil)
                
            }
        }
    }
    
    @objc func Eliminarbuzon(Arreglo:String){
        
        if Arreglo == "A" {
            var id = buzonA.count-1
            
            repeat{
                let noteEntity = "Rbuzon" //Entity Name
                
                let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                
                let note = buzonA[id]
                
                managedContext.delete(note)
                do {
                    try managedContext.save()
                } catch let error as NSError {
                    print("Error While Deleting Note: \(error.userInfo)")
                }
                
                //Code to Fetch New Data From The DB and Reload Table.
                let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: noteEntity)
                
                do {
                    buzonA = try managedContext.fetch(fetchRequest) as! [Rbuzon]
                    print("Registro borrado A")
                    self.ToastExample(message: "Eliminando Solicitudes.....")
                    id = id-1
                } catch let error as NSError {
                    print("Error While Fetching Data From DB: \(error.userInfo)")
                }
            }while buzonA.count > 0
            
        }else{
            var id = buzonB.count-1
            
            repeat{
                let noteEntity = "BUZON_A" //Entity Name
                
                let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                
                let note = buzonB[id]
                
                managedContext.delete(note)
                do {
                    try managedContext.save()
                } catch let error as NSError {
                    print("Error While Deleting Note: \(error.userInfo)")
                }
                
                //Code to Fetch New Data From The DB and Reload Table.
                let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: noteEntity)
                
                do {
                    buzonB = try managedContext.fetch(fetchRequest) as! [BUZON_A]
                    print("Registro borrado B")
                    self.ToastExample(message: "Eliminando Solicitudes.....")
                    id = id-1
                } catch let error as NSError {
                    print("Error While Fetching Data From DB: \(error.userInfo)")
                }
            }while buzonB.count > 0
            
        }
         self.Buscarparamca()
    }
    
    //Buscar Catalogo Activo
    @objc func Buscarparamca() {
        self.ToastExample(message: "Obteniendo catalogo activo")
        var num = 0
        repeat{
            if paramArray[num].parametro == "CATALOGO_ACTIVO" {
                print("Catalogo activo es:",paramArray[num].valor!)
                break
            }else {
                num = num+1
            }
        }while num < paramArray.count
        if paramArray[num].valor == "A" {
            print("Tamano de Catalogo A:",cataloA.count)
            self.Catalogoinsert = "B"
            if cataloB.count != 0{
               self.Eliminarcatalogo(Arreglo: "B")
            }
        }else {
            self.Catalogoinsert = "A"
            print("Tamano de buzon B:",cataloB.count)
            if cataloA.count != 0 {
               self.Eliminarcatalogo(Arreglo: "A")
            }
        }
         self.Buscarparampa()
    }
    
    @objc func Eliminarcatalogo(Arreglo:String){
        
        if Arreglo == "A" {
            var id = cataloA.count-1
            
            repeat{
                let noteEntity = "CATALOGO_A" //Entity Name
                
                let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                
                let note = cataloA[id]
                
                managedContext.delete(note)
                do {
                    try managedContext.save()
                    
                } catch let error as NSError {
                    print("Error While Deleting Note: \(error.userInfo)")
                }
                
                //Code to Fetch New Data From The DB and Reload Table.
                let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: noteEntity)
                
                do {
                    cataloA = try managedContext.fetch(fetchRequest) as! [CATALOGO_A]
                    print("Registro Cat",id,"Borrado")
                    
                    self.ToastExample(message: "Eliminando Catalogos.....")
                    
                    id = id-1
                } catch let error as NSError {
                    print("Error While Fetching Data From DB: \(error.userInfo)")
                }
            }while cataloA.count > 0
            
        }else{
            var id = cataloB.count-1
            
            repeat{
                let noteEntity = "Rcatalogo" //Entity Name
                
                let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                
                let note = cataloB[id]
                
                managedContext.delete(note)
                do {
                    try managedContext.save()
                } catch let error as NSError {
                    print("Error While Deleting Note: \(error.userInfo)")
                }
                
                //Code to Fetch New Data From The DB and Reload Table.
                let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: noteEntity)
                
                do {
                    cataloB = try managedContext.fetch(fetchRequest) as! [Rcatalogo]
                    print("Registro Cat",id,"Borrado")
                    
                    self.ToastExample(message: "Eliminando Catalogos.....")
                    
                    id = id-1
                } catch let error as NSError {
                    print("Error While Fetching Data From DB: \(error.userInfo)")
                }
            }while cataloB.count > 0
            
        }
       
    }
    
    //Buscar Producto Activo
    @objc func Buscarparampa() {
         self.ToastExample(message: "Obteniendo producto activo")
        var num = 0
        repeat{
            if paramArray[num].parametro == "PRODUCTO_ACTIVO" {
                print("Producto activo es:",paramArray[num].valor!)
                break
            }else {
                num = num+1
            }
        }while num < paramArray.count
        if paramArray[num].valor == "A" {
            print("Tamano de Producto A:",prodA.count)
            self.productinsert = "B"
            if prodA.count != 0{
               self.Eliminarproducto(Arreglo: "B")
            }
        }else {
            self.productinsert = "A"
            print("Tamano de Producto B:",prodB.count)
            if prodB.count != 0 {
              self.Eliminarproducto(Arreglo: "A")
            }
        }
         self.Buscarparamaa()
    }
    
    @objc func Eliminarproducto(Arreglo:String){
        
        if Arreglo == "A" {
            var id = prodA.count-1
            
            repeat{
                let noteEntity = "ProductoA" //Entity Name
                
                let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                
                let note = prodA[id]
                
                managedContext.delete(note)
                do {
                    try managedContext.save()
                } catch let error as NSError {
                    print("Error While Deleting Note: \(error.userInfo)")
                }
                
                //Code to Fetch New Data From The DB and Reload Table.
                let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: noteEntity)
                
                do {
                    prodA = try managedContext.fetch(fetchRequest) as! [ProductoA]
                    print("Registro borrado")
                     ToastExample(message: "Eliminando Productos")
                    id = id-1
                } catch let error as NSError {
                    print("Error While Fetching Data From DB: \(error.userInfo)")
                }
            }while prodA.count > 0
            
        }else{
            var id = prodB.count-1
            
            repeat{
                let noteEntity = "Producto" //Entity Name
                
                let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                
                let note = prodB[id]
                
                managedContext.delete(note)
                do {
                    try managedContext.save()
                } catch let error as NSError {
                    print("Error While Deleting Note: \(error.userInfo)")
                }
                
                //Code to Fetch New Data From The DB and Reload Table.
                let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: noteEntity)
                
                do {
                    prodB = try managedContext.fetch(fetchRequest) as! [Producto]
                    print("Registro borrado")
                     ToastExample(message: "Eliminando Productos")
                    id = id-1
                } catch let error as NSError {
                    print("Error While Fetching Data From DB: \(error.userInfo)")
                }
            }while prodB.count > 0
            
        }
        
    }
    //Buscar Agenda Activa
    @objc func Buscarparamaa() {
         self.ToastExample(message: "Obteniendo agenda activa")
        var num = 0
        repeat{
            if paramArray[num].parametro == "AGENDA_ACTIVA" {
                print("Agenda activa es:",paramArray[num].valor!)
                break
            }else {
                num = num+1
            }
        }while num < paramArray.count
        if paramArray[num].valor == "A" {
                       self.agendinsert = "B"
            if prodA.count != 0{
                //  Buscarbuzon(Arreglo: paramArray[num].valor!)
            }
        }else {
            self.agendinsert = "A"
         
            if prodB.count != 0 {
                //   Buscarbuzon(Arreglo: paramArray[num].valor!)
            }
        }
        Wsuuid()
    }
    
    
    
    @objc func Wsuuid(){
      
        let json: [String: Any] = ["idUsuario": String(Idusuario),
                                   "UUID": Uniqueid,
                                   "llave":["idUsuario":String(Idusuario),
                                            "Token":self.Token]]
        
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "https://stefaninimx.com/mx.com.stefanini.service.api.rest/Service1.svc/validaUUID")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // insert json data to the request
        request.httpBody = jsonData
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
         
            
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            print("Recibiendo datos")
            if var responseJSON = responseJSON as? [String: Any] {
                DispatchQueue.main.async {
                self.ToastExample(message: "Validando usuario en dispositivo movil")
                    let resultado =  responseJSON["validaUUIDResult"] as! String
                    print("Respuesta UUID:",resultado)
                    var validador = ""
                    let letters = resultado.characters.map{ String($0) }
                    let longitud = resultado.characters.count
                    var num = 0
                    repeat{
                        if letters[num] == "@" {
                            break
                        }else {
                            validador = validador + letters[num]
                            num = num+1
                        }
                    }while num < longitud
                  
                    if validador == "true" {
                        
                        print("usuario ligado a este dispositivo")
                        self.ToastExample(message: "Usuario ligado a este dispositivo")
                        print("El Buzon a insertar es:",self.Buzoninsert)
                        print("El Catalogo a insertar es:",self.Catalogoinsert)
                        print("El producto a insertar es:",self.productinsert)
                        print("La agenda a insertar es:",self.agendinsert)
                        self.WsGetBuzon()
                       
                       
                    }else{
                        let alert = UIAlertController(title: "¡Este perfil del promotor: "+self.User.text!+" no puede instalarse en este dispositivo "+self.Uniqueid, message: "Solicite al administrador el permiso correspondiente" , preferredStyle: UIAlertControllerStyle.alert)
                        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                        
                    }
                }
            }else{
                print(" no Respuesta Json")
            }
      }
          task.resume()
    }
    
    @objc func WsGetBuzon(){
      
        let json: [String: Any] = [
            "objPromotor": [
                "Promotoria":"",
                "RegPromotor":"",
                "Compania":Empresa.text!,
                "Formato":"",
                "Usuario":User.text!,
                "Contrasenia":Pass.text!,
                "Coordinador":["ClaveC":"","NombreC":""],
                "Gerente":["ClaveG":"","NombreG":""],
                "TipoUsuario":"4"
            ],
            "llave":["idUsuario":String(Idusuario),
                     "Token":self.Token]
        ]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "https://stefaninimx.com/mx.com.stefanini.service.api.rest/Service1.svc/GetBuzon")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // insert json data to the request
        request.httpBody = jsonData
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            data, response, error in
            
            //exiting if there is some error
            if error != nil{
                print("error is \(String(describing: error))")
                return;
            }
            do {
                
                guard let teamJSON =  try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any],
                    let Solicitud = teamJSON["solicitudes"] as? [[String: Any]]
                    else { return }
                DispatchQueue.main.async {
                    print("************Ws GetBuzon*************")
                    for i in 0 ..< Solicitud.count{
                        
                         var coment = Solicitud[i]["COMENTARIO"] as? String
                         if coment == nil {
                         coment = ""
                         }
                         //self.com.append(coment!)
                         
                         let esta = Solicitud[i]["ESTATUS"] as? String
                         //print("Estatus",esta!)
                         
                         var  fechaar = Solicitud[i]["FECHA_ALTA"] as? String
                         if fechaar == nil {
                         fechaar = ""
                         }
                        
                         var fechamr = Solicitud[i]["FECHA_MODIFICACION"] as? String
                         if fechamr == nil {
                         fechamr = ""
                         }
                         
                         let idsolr = Solicitud[i]["ID_SOLICITUD"] as? String
                          print("Id de la solicitud:",idsolr!)
                         
                         var producto = Solicitud[i]["PRODUCTO"] as? String
                         if producto == nil {
                         producto = ""
                         }
                         
                         var prome = Solicitud[i]["PROMEDIO_SCORING"] as? String
                         if prome == nil {
                         prome = ""
                         }
                        
                        var solicitud = Solicitud[i]["SOLICITUD_XML"] as? String
                        if solicitud == nil {
                            solicitud = ""
                        }
                         //Imagenes
                         var ext1 = Solicitud[i]["E164"] as? String
                         if ext1 == nil {
                         ext1 = ""
                         }
                         var ext2 = Solicitud[i]["E264"] as? String
                         if ext2 == nil {
                         ext2 = ""
                         }
                         var ext3 = Solicitud[i]["E364"] as? String
                         if ext3 == nil {
                         ext3 = ""
                         }
                         var ext4 = Solicitud[i]["E464"] as? String
                         if ext4 == nil {
                         ext4 = ""
                         }
                         var ext5 = Solicitud[i]["E564"] as? String
                         if ext5 == nil {
                         ext5 = ""
                         }
                         
                         var docc1 = Solicitud[i]["DOC_C164"] as? String
                         if docc1 == nil {
                         docc1 = ""
                         }
                        
                         var docc2 = Solicitud[i]["DOC_C264"] as? String
                         if docc2 == nil {
                         docc2 = ""
                         }
 
                         var docia = Solicitud[i]["DOC_IA64"] as? String
                         if docia == nil {
                         docia = ""
                         }
                      
                         var docif = Solicitud[i]["DOC_IF64"] as? String
                         if docif == nil {
                         docif = ""
                         }
                     
                        
                         var fi = Solicitud[i]["F164"] as? String
                         if fi == nil {
                         fi = ""
                         }
                         self.ToastExample(message: "Obteniendo Solicitudes...")
                         self.Insertarbuzon(coment: coment!, est: esta!, fechaa: fechaar!, fecham: fechamr!, idsol: idsolr!, product: producto!, prom: prome!, sol: solicitud!,ext1: ext1!,ext2:ext2!,ext3:ext3!,ext4:ext4!,ext5:ext5!,docc1:docc1!,docc2:docc2!,docia:docia!,docif:docif!,fi:fi!)
                     
                    }
                    
                     self.WsCatalogos()
                }
            } catch {
                print("hubo un error")
                print(error)
            }
        }
        
        
        task.resume()
        
    }
    
    @objc func Insertarbuzon(coment:String,est:String,fechaa:String,fecham:String,idsol:String,product:String,prom:String,sol:String,ext1:String,ext2:String,ext3:String,ext4:String,ext5:String,docc1:String,docc2:String,docia:String,docif:String,fi:String){
        
        if Buzoninsert == "A" {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat =  "dd/MM/yyyy"
            let date = dateFormatter.date(from: fechaa)
            let date2 = dateFormatter.date(from: fecham)
            let estint = Int(est)
            let idsolint = Int(idsol)
            
            let newBuz = NSEntityDescription.insertNewObject(forEntityName: "Rbuzon", into: context)
            newBuz.setValue(coment, forKey: "comentario")
            newBuz.setValue(estint, forKey: "estatus")
            newBuz.setValue(date, forKey: "fecha_alta")
            newBuz.setValue(date2, forKey: "fecha_modificacion")
            newBuz.setValue(idsolint, forKey: "id_solicitud")
            newBuz.setValue(Idusuario, forKey: "id_usuario")
            newBuz.setValue(0, forKey: "motivo")
            newBuz.setValue(product, forKey: "producto")
            newBuz.setValue(prom, forKey: "promedio_scoring")
            newBuz.setValue(sol, forKey: "solicitud_xml")
            newBuz.setValue(ext1, forKey: "ext_c1")
            newBuz.setValue(ext2, forKey: "ext_c2")
            newBuz.setValue(ext3, forKey: "ext_c3")
            newBuz.setValue(ext4, forKey: "ext_c4")
            newBuz.setValue(ext5, forKey: "ext_c5")
            newBuz.setValue(docc1, forKey: "doc_c1")
            newBuz.setValue(docc2, forKey: "doc_c2")
            newBuz.setValue(docia, forKey: "doc_ia")
            newBuz.setValue(docif, forKey: "doc_if")
            newBuz.setValue(fi, forKey: "fi")
            do {
                try context.save()
                print("Solicitud insertada A!!!!!!")
                 self.ToastExample(message: "Obteniendo Solicitudes...")
            }catch {
                print(error)
            }

        }else {
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat =  "dd/MM/yyyy"
            let date = dateFormatter.date(from: fechaa)
            let date2 = dateFormatter.date(from: fecham)
            let estint = Int(est)
            let idsolint = Int(idsol)
            
            let newBuz = NSEntityDescription.insertNewObject(forEntityName: "BUZON_A", into: context)
            newBuz.setValue(coment, forKey: "comentario_b")
            newBuz.setValue(estint, forKey: "estatus_b")
            newBuz.setValue(date, forKey: "fecha_alta_b")
            newBuz.setValue(date2, forKey: "fecha_modificacion_b")
            newBuz.setValue(idsolint, forKey: "id_solicitud_b")
            newBuz.setValue(Idusuario, forKey: "id_usuario_b")
            newBuz.setValue(0, forKey: "motivo_b")
            newBuz.setValue(product, forKey: "producto_b")
            newBuz.setValue(prom, forKey: "promedio_scoring_b")
            newBuz.setValue(sol, forKey: "solicitud_xml_b")
            newBuz.setValue(ext1, forKey: "ext_c1")
            newBuz.setValue(ext2, forKey: "ext_c2")
            newBuz.setValue(ext3, forKey: "ext_c3")
            newBuz.setValue(ext4, forKey: "ext_c4")
            newBuz.setValue(ext5, forKey: "ext_c5")
            newBuz.setValue(docc1, forKey: "doc_c1")
            newBuz.setValue(docc2, forKey: "doc_c2")
            newBuz.setValue(docia, forKey: "doc_ia")
            newBuz.setValue(docif, forKey: "doc_if")
            newBuz.setValue(fi, forKey: "fi")
            do {
                try context.save()
                print("Solicitud insertada B!!!!")
                 self.ToastExample(message: "Obteniendo Solicitudes...")
            }catch {
                print(error)
            }
        }
    }
   
   @objc func WsCatalogos(){
      
        let json: [String: Any] = [
            "objPromotor": [
                "Promotoria":"",
                "RegPromotor":"",
                "Compania":Empresa.text!,
                "Formato":"",
                "Usuario":User.text!,
                "Contrasenia":Pass.text!,
                "Coordinador":["ClaveC":"","NombreC":""],
                "Gerente":["ClaveG":"","NombreG":""],
                "TipoUsuario":"4"
            ],
            "llave":["idUsuario":String(Idusuario),
                     "Token":self.Token]
        ]

        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "https://stefaninimx.com/mx.com.stefanini.service.api.rest/Service1.svc/GetCatalogosX")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // insert json data to the request
        request.httpBody = jsonData
        
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            data, response, error in
            
            //exiting if there is some error
            if error != nil{
                print("error is \(String(describing: error))")
                return;
            }
            do {
                guard let teamJSON =  try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any],
                    let Solicitud = teamJSON["catalogos"] as? [[String: Any]]
                    else { return }
                DispatchQueue.main.async {
                  
                    print("************Ws Catalogos*************")
                    for i in 0 ..< Solicitud.count{
                        let desc = Solicitud[i]["DESCRIPCION"] as? String
                        //print(desc!)
                        
                        let idCat = Solicitud[i]["ID_CATALOGO"] as? String
                        //print(idCat!)
                        
                        let idTipo = Solicitud[i]["ID_TIPO_CATALOGO"] as? String
                       //print(idTipo!)
                        
                        let padre = Solicitud[i]["PADRE"] as? String
                       //print(padre!)
                        
                      self.ToastExample(message: "Obteniendo catalogos...")
                      self.Insertarcatalogo(desc: desc!, idcat: idCat!, idtc: idTipo!, pad: padre!)
                        
                    }
                  
                    if self.userArray.count == 0 {
                        self.Insertarusuario()
                    }else{
                        self.EliminarUsuario()
                    }
                  
                }
            } catch {
                print("hubo un error")
                print(error)
            }
        }
        
        task.resume()
    }
    @objc func Insertarcatalogo(desc:String,idcat:String,idtc:String,pad:String){
        if Catalogoinsert == "A" {
            
            let idc = Int(idcat)
            let newCat = NSEntityDescription.insertNewObject(forEntityName: "CATALOGO_A", into: context)
            newCat.setValue(desc, forKey: "descripcion")
            newCat.setValue("1", forKey: "estatus")
            newCat.setValue(idc, forKey: "id_catalogo")
            newCat.setValue(idtc, forKey: "id_tipo_catalogo")
            newCat.setValue(pad, forKey: "padre")
            do {
                try context.save()
                print("Catalogo insertado")
                 self.ToastExample(message: "Obteniendo catalogos...")
            }catch {
                print(error)
            }
        }else {
            let idc = Int(idcat)
            let newCat = NSEntityDescription.insertNewObject(forEntityName: "Rcatalogo", into: context)
            newCat.setValue(desc, forKey: "descripcion")
            newCat.setValue("1", forKey: "estatus")
            newCat.setValue(idc, forKey: "id_catalogo")
            newCat.setValue(idtc, forKey: "id_tipo_catalogo")
            newCat.setValue(pad, forKey: "padre")
            do {
                try context.save()
                 self.ToastExample(message: "Obteniendo catalogos...")
               }catch {
                print(error)
            }
        }
            
    }
    @objc func EliminarUsuario(){
            self.ToastExample(message: "Finalizando...")
            let noteEntity = "USUARIO" //Entity Name
            
            let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            
            let note = userArray[0]
            
            managedContext.delete(note)
            do {
                try managedContext.save()
            } catch let error as NSError {
                print("Error While Deleting Note: \(error.userInfo)")
            }
            
            //Code to Fetch New Data From The DB and Reload Table.
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: noteEntity)
            
            do {
                userArray = try managedContext.fetch(fetchRequest) as! [USUARIO]
                print("Usuario borrado")
                  self.ToastExample(message: "Finalizando...")
            
            } catch let error as NSError {
                print("Error While Fetching Data From DB: \(error.userInfo)")
            }
         Insertarusuario()
    }
    
    @objc func Insertarusuario(){
        self.ToastExample(message: "Finalizando...")
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "USUARIO", into: context)
        newUser.setValue(Empresa.text, forKey: "compania")
        newUser.setValue(Pass.text, forKey: "contrasena")
        newUser.setValue(Idusuario, forKey: "id_usuario")
        newUser.setValue(4, forKey: "tipo_usuario")
        newUser.setValue(User.text, forKey: "user")
        
        do {
            try context.save()
            print("Usuario insertado")
            self.ToastExample(message: "Finalizando...")
            Updateparam()
        }catch {
            print(error)
        }
        
    }
    
    @objc func Updateparam(){
        self.ToastExample(message: "Finalizando...")
        let request = NSFetchRequest<PARAMETRO>(entityName: "PARAMETRO")
        do {
            let searchResults = try context.fetch(request)
            for task in searchResults {
                if task.parametro == "BUZON_ACTIVO" {
                    task.valor = self.Buzoninsert
                }
                if task.parametro == "CATALOGO_ACTIVO" {
                    task.valor = self.Catalogoinsert
                }
                if task.parametro == "PRODUCTO_ACTIVO" {
                    task.valor = self.productinsert
                }
                if task.parametro == "AGENDA_ACTIVA" {
                    task.valor =  self.agendinsert
                }
            }
        } catch {
            print("Error with request: \(error)")
        }
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home") as? Home {
            vc.Usuario = User.text!
            vc.compania = Empresa.text!
            vc.Contrasena = Pass.text!
            vc.id = Idusuario
            self.navigationController?.pushViewController(vc, animated: false)
        }
        
    }
}


