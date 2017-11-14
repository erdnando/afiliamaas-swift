//
//  ViewController.swift
//  Afiliacion
//
//  Created by stefanini on 7/28/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import CoreData
class BaseViewController: UIViewController, SlideMenuDelegate,XMLParserDelegate {
    //Elementos de Configuracion
    @IBOutlet weak var Online: UISwitch!
    @IBOutlet weak var Btbuzon: UIButton!
    @IBOutlet weak var Btcatalogos: UIButton!
    @IBOutlet weak var Btcitas: UIButton!
    @IBOutlet weak var Btacerca: UIButton!
    @IBOutlet weak var Btasociar: UIButton!
    @IBOutlet weak var Btasociaruser: UIButton!
    @IBOutlet weak var Refresh: UIImageView!
    
    //Unique Device Id
    @objc var Uniqueid = UIDevice.current.identifierForVendor!.uuidString
    //Timer
    @objc var mytimer: Timer!
    @objc var Modo = ""
    @objc var Buzon = ""
    //base de datos
    @objc var paramArray:[PARAMETRO] = []
    @objc var userArray:[USUARIO] = []
    @objc var buzonA:[Rbuzon] = []
    @objc var buzonB:[BUZON_A] = []
    @objc var cataloA:[CATALOGO_A] = []
    @objc var cataloB:[Rcatalogo] = []
    @objc var prodA:[ProductoA] = []
    @objc var prodB:[Producto] = []
    
     @objc var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    //Variables para parciar
    @objc var parser = XMLParser()
    @objc var element = ""
    //Datos de xml
    var Nombre:[String] = []
    var Apep:[String] = []
    var Apem:[String] = []
    var calle:[String] = []
    var Numext:[String] = []
    var numint:[String] = []
    var colonia:[String] = []
    var Estado:[String] = []
    var Mun:[String] = []
    var Nacionalidad:[String] = []
    var cp:[String] = []
    var tieestmpor:[String] = []
    var estatusr:[String] = []
    var monto:[String] = []
    var Telcasa:[String] = []
    var Telefono:[String] = []
    var dia = ""
    var mes = ""
    var anio = ""
    var Tpoidentif = ""
    var Noidenficacion = ""
    var sex = ""
    var Rfc = ""
    var Edocivil = ""
    var Nodependiente = ""
    var Email = ""
    var Telmovil = ""
    var CompaniaMovil = ""
    var NombreEmpresa = ""
    var GiroEmpresa = ""
    var AntiguedadEmpleo = ""
    var TipoContrato = ""
    var Puesto = ""
    var Ingresos = ""
    var AniosCasada = ""
    var fuente = ""
    var OtrosIngresos = ""
    var TieneParentesco = ""
    var EsPersonaPolitica = ""
    var TipoParentesco = ""
    var Descfuncion = ""
    var Descparentesco = ""
    var IdentificacionFrentePath = ""
    var IdentificacionAtrasPath = ""
    var FirmaPath = ""
    var Contrato1Path = ""
    var Contrato2Path = ""
    var Extra1 = ""
    var Extra2 = ""
    var Extra3 = ""
    var Extra4 = ""
    var Extra5 = ""
    var Compania = ""
    var Identificador = ""
    var User = ""
    var Contrasenia = ""
    var Token = ""
    var fecha = ""
    //base 64
    var IF = ""
    var IA = ""
    var C1 = ""
    var C2 = ""
    var E1 = ""
    var E2 = ""
    var E3 = ""
    var E4 = ""
    var E5 = ""
    var F1 = ""
    var indice = 0
    
    var Buzoninsert = ""
    var Catalogoinsert = ""
    @objc var productinsert = ""
    @objc var agendinsert = ""
    var visual = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchData()
        self.fetchData2()
        self.fetchData3()
        self.fetchData4()
        self.fetchData5()
        self.fetchData6()
        self.fetchData7()
        self.fetchData8()
          Verparam()
          Sincronizar()
        //Boton de Navigation drawer
        if Modo == "OFF" {
            let menu2 = UIImage(named: "Ioffline")
            self.navigationItem.leftBarButtonItem =  UIBarButtonItem(image: menu2, style: .done, target: self, action: #selector(self.onSlideMenuButtonPressed(_:)))
            self.navigationItem.leftBarButtonItem?.tintColor = UIColor.blue
        }else {
            let menu2 = UIImage(named: "Ionline")
            self.navigationItem.leftBarButtonItem =  UIBarButtonItem(image: menu2, style: .done, target: self, action: #selector(self.onSlideMenuButtonPressed(_:)))
            self.navigationItem.leftBarButtonItem?.tintColor = UIColor.green
        }
        
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
    @objc func Verparam(){
        var num = 0
        repeat {
            if paramArray[num].parametro == "MODALIDAD" {
            print("indice:",num,"Id:",paramArray[num].id_parametro,"parametro:",paramArray[num].parametro!,"valor",paramArray[num].valor!)
                Modo = paramArray[num].valor!
                break
            }else {
                 num = num+1
            }
       }while num < paramArray.count
    }
    
    @objc func slideMenuItemSelectedAtIndex(_ index: Int32) {
        let topViewController : UIViewController = self.navigationController!.topViewController!
        print("View Controller is : \(topViewController) \n", terminator: "")
        switch(index){
        case 0:
            self.openViewControllerBasedOnIdentifier("Home")
        break
        case 1:
            self.openViewControllerBasedOnIdentifier("Foto")
        case 2:
            self.openViewControllerBasedOnIdentifier("Foto")
        break
        case 3:
            self.openViewControllerBasedOnIdentifier("Config")
            break
        case 4:
            let alert = UIAlertController(title: "¡Aviso!", message: "Deseas cerrar seccion", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
              self.openViewControllerBasedOnIdentifier("Inicio")
            }))
            alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler:{ (action: UIAlertAction!) in
              self.openViewControllerBasedOnIdentifier("Home")
            }))
            self.present(alert, animated: true, completion: nil)
        break
        default:
            print("default\n", terminator: "")
        }
    }
    
    @objc func openViewControllerBasedOnIdentifier(_ strIdentifier:String){
        let destViewController : UIViewController = self.storyboard!.instantiateViewController(withIdentifier: strIdentifier)
        
        let topViewController : UIViewController = self.navigationController!.topViewController!
        
        if (topViewController.restorationIdentifier! == destViewController.restorationIdentifier!){
            print("Same VC")
        } else {
            self.navigationController!.pushViewController(destViewController, animated: true)
        }
    }
    
    /*
    @objc func addSlideMenuButton(){
        let btnShowMenu = UIButton(type: UIButtonType.system)
        btnShowMenu.setImage(self.defaultMenuImage(), for: UIControlState())
        btnShowMenu.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btnShowMenu.addTarget(self, action: #selector(BaseViewController.onSlideMenuButtonPressed(_:)), for: UIControlEvents.touchUpInside)
        let customBarItem = UIBarButtonItem(customView: btnShowMenu)
        self.navigationItem.leftBarButtonItem = customBarItem;
    }*/

    @objc func defaultMenuImage() -> UIImage {
        var defaultMenuImage = UIImage()
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 30, height: 22), false, 0.0)
        
        UIColor.black.setFill()
        UIBezierPath(rect: CGRect(x: 0, y: 3, width: 30, height: 1)).fill()
        UIBezierPath(rect: CGRect(x: 0, y: 10, width: 30, height: 1)).fill()
        UIBezierPath(rect: CGRect(x: 0, y: 17, width: 30, height: 1)).fill()
        
        UIColor.green.setFill()
        //UIColor.white.setFill()
        UIBezierPath(rect: CGRect(x: 0, y: 4, width: 30, height: 1)).fill()
        UIBezierPath(rect: CGRect(x: 0, y: 11,  width: 30, height: 1)).fill()
        UIBezierPath(rect: CGRect(x: 0, y: 18, width: 30, height: 1)).fill()
        
        defaultMenuImage = UIGraphicsGetImageFromCurrentImageContext()!
        
        UIGraphicsEndImageContext()
       
        return defaultMenuImage;
    }
    
    func ActiveOnline(valor:String) {
        Modo = valor
        Updateparam()
        Sincronizar()
    }
    
    @objc func Updateparam(){
        print("Modificando",Modo)
        let request = NSFetchRequest<PARAMETRO>(entityName: "PARAMETRO")
        do {
            let searchResults = try context.fetch(request)
            for task in searchResults {
                if task.parametro == "MODALIDAD" {
                    task.valor = Modo
                }
           }
        } catch {
            print("Error with request: \(error)")
        }
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        print("Modificacion correcta")
    }
    
    func Sincronizar() {
        print("valor de modo:",Modo)
        if Modo == "OFF" {
            
            ToastExample(message: "Modo OFFLINE")
              mytimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(BaseViewController.TimerRunning), userInfo: nil, repeats: true)
              mytimer.invalidate()
            
        }else {
            mytimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(BaseViewController.TimerRunning), userInfo: nil, repeats: true)
        }
    }
    
    @objc func TimerRunning(){
        if Modo == "OFF" {
            
        }else {
            ToastExample(message: "Modo Online")
            mytimer.invalidate()
            Datos()
            Wslogin()
        }
    }
    // ************************** Datos de Promotor ***********************************
    @objc func Datos() {
        var num = 0
        repeat {
            Identificador = String(userArray[num].id_usuario)
            User = userArray[num].user!
            Compania = userArray[num].compania!
            Contrasenia = userArray[num].contrasena!
            num = num+1
        }while num < userArray.count
    }
    
    @objc func Wslogin() {
        let json: [String: Any] = [ "Promotoria":"",
                                    "RegPromotor":"",
                                    "Compania":Compania,
                                    "Formato":"",
                                    "Usuario":User,
                                    "Contrasenia":Contrasenia,
                                    "Coordinador":["ClaveC":"","NombreC":""],
                                    "Gerente":["ClaveG":"","NombreG":""],
                                    "TipoUsuario":"4"]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        // create post request
        let url = URL(string: "https://sminet.com.mx/mx.com.stefanini.service.api.rest/Service1.svc/Login")!
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
                  self.Token = (responseJSON["Token"] as? String)!
                  self.Buscarparamba()
                  let Sincronizacion = Date()
                  print("Termino Sincronizacion",Sincronizacion)
                  self.mytimer = Timer.scheduledTimer(timeInterval: 60.0, target: self, selector: #selector(BaseViewController.TimerRunning), userInfo: nil, repeats: true)
                }
            }else{
                print(" no Respuesta Json")
            }
        }
        task.resume()
    }
    //Buscar buzon activo
    @objc func Buscarparamba(){
      var num = 0
        repeat{
            if paramArray[num].parametro == "BUZON_ACTIVO" {
                print("Buzon activo es:",paramArray[num].valor!)
                Buzon = paramArray[num].valor!
                break
            }else {
                num = num+1
            }
        }while num < paramArray.count
        Verbuzon()
    }
    @objc func Verbuzon() {
        var num = 0
        if Buzon == "A"{
            repeat {
                if buzonA[num].estatus == 6 {
                    print("valor de num",num)
                    indice = num
                    print(buzonA[num].solicitud_xml!)
                    IF = buzonA[num].doc_if!
                    IA = buzonA[num].doc_ia!
                    C1 = buzonA[num].doc_c1!
                    C2 = buzonA[num].doc_c2!
                    E1 = buzonA[num].ext_c1!
                    E2 = buzonA[num].ext_c2!
                    E3 = buzonA[num].ext_c3!
                    E4 = buzonA[num].ext_c4!
                    E5 = buzonA[num].ext_c5!
                    F1 = buzonA[num].fi!
                    fecha = String(describing: buzonA[num].fecha_alta!)
                    self.beginParsing(xml: buzonA[num].solicitud_xml!)
                    ExtDatos()
                    Nombre.removeAll()
                    Apep.removeAll()
                    Apem.removeAll()
                    calle.removeAll()
                    Numext.removeAll()
                    numint.removeAll()
                    colonia.removeAll()
                    Estado.removeAll()
                    Mun.removeAll()
                    Nacionalidad.removeAll()
                    cp.removeAll()
                    tieestmpor.removeAll()
                    estatusr.removeAll()
                    monto.removeAll()
                    Telcasa.removeAll()
                    Telefono.removeAll()
                    num = num+1
                }else {
                    num = num+1
                }
            }while num < buzonA.count
        }else {
            repeat {
                if buzonB[num].estatus_b == 6 {
                    print("valor de num",num)
                    indice = num
                    print(buzonB[num].solicitud_xml_b!)
                    IF = buzonB[num].doc_if!
                    IA = buzonB[num].doc_ia!
                    C1 = buzonB[num].doc_c1!
                    C2 = buzonB[num].doc_c2!
                    E1 = buzonB[num].ext_c1!
                    E2 = buzonB[num].ext_c2!
                    E3 = buzonB[num].ext_c3!
                    E4 = buzonB[num].ext_c4!
                    E5 = buzonB[num].ext_c5!
                    F1 = buzonB[num].fi!
                    fecha = String(describing: buzonB[num].fecha_alta_b)
                    self.beginParsing(xml: buzonB[num].solicitud_xml_b!)
                    ExtDatos()
                    Nombre.removeAll()
                    Apep.removeAll()
                    Apem.removeAll()
                    calle.removeAll()
                    Numext.removeAll()
                    numint.removeAll()
                    colonia.removeAll()
                    Estado.removeAll()
                    Mun.removeAll()
                    Nacionalidad.removeAll()
                    cp.removeAll()
                    tieestmpor.removeAll()
                    estatusr.removeAll()
                    monto.removeAll()
                    Telcasa.removeAll()
                    Telefono.removeAll()
                    num = num+1
                }else {
                   num = num+1
                }
            }while num < buzonB.count
        }
    }
    
    func beginParsing(xml:String)
    {
        let dato = xml.data(using: .utf8)
        parser = XMLParser(data: dato!)
        parser.delegate = self
        parser.parse()
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String])
    {
        element = elementName
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String)
    {
        
        if element == "Pmrnombre" {
            //print("Valor de Nombre",string)
            Nombre.append(string)
        }
        if element == "Apaterno" {
            //print("Valor de Apep",string)
            Apep.append(string)
        }
        if element == "Amaterno" {
           //print("valor de Apem",string)
            Apem.append(string)
        }
        
        if element == "Tpoidentif" {
           //print("Tipo de identificacion",string)
             Tpoidentif = string
        }
        
        if element == "Noidenficacion" {
            //print("Numero de identificacion",string)
            Noidenficacion = string
        }
        
        if element == "Sexo" {
            //print("sex",string)
            sex = string
        }
        if element == "Nacionalidad" {
            //print("nacionalidad",string)
            Nacionalidad.append(string)
        }
        
        if element == "Fechanacdia" {
            //print("dia",string)
            dia = string
        }
        
        if element == "FechasnacMes" {
            //print("mes",string)
            mes = string
        }
        if element == "FechanacAnio" {
            //print("Anio",string)
            anio = string
        }
        if element == "Rfc" {
            //print("Rfc",string)
            Rfc = string
            
        }
        if element == "Edocivil" {
          //print("Estado Civil",string)
          Edocivil = string
        }
        if element == "Nodependiente" {
            //print("Dependientes",string)
            Nodependiente = string
        }
        if element == "Calle" {
            //print("Calle",string)
            calle.append(string)
        }
        if element == "NoInt" {
            //print("Num Int:",string)
            numint.append(string)
        }
        if element == "NoExt" {
            //print("Num Ext:",string)
            Numext.append(string)
        }
        if element == "Colonia" {
            //print("Colonia",string)
            colonia.append(string)
        }
        
        if element == "Estado" {
            //print("Estado",string)
            Estado.append(string)
        }
        
        if element == "Delegacion" {
            //print("Delegacion",string)
            Mun.append(string)
        }
        
        if element == "Cpdom" {
            //print("Cp",string)
            cp.append(string)
        }
        if element == "TiempoResidencia" {
            //print("TiempoResidencia:",string)
            tieestmpor.append(string)
        }
        if element == "EstatusResidencia" {
            //print("Estatus residencia",string)
            estatusr.append(string)
        }
        if element == "MontoVivienda" {
            //print("Monto",string)
            monto.append(string)
        }
        if element == "Email" {
            //print("Email",string)
            Email = string
        }
        if element == "Telcasa" {
            //print("Telcasa:",string)
            Telcasa.append(string)
        }
        if element == "Telmovil" {
            //print("Telmovil",string)
            Telmovil = string
        }
        if element == "CompaniaMovil" {
           //print("Compania movil",string)
            CompaniaMovil = string
        }
        if element == "NombreEmpresa" {
            //print("Nombre empresa",string)
            NombreEmpresa = string
        }
        if element == "GiroEmpresa" {
            //print("Giro",string)
            GiroEmpresa = string
        }
        if element == "AntiguedadEmpleo" {
           //print("Antiguedad",string)
           AntiguedadEmpleo = string
        }
        if element == "TipoContrato" {
           //print("Tipo contrato",string)
            TipoContrato = string
        }
        if element == "Puesto" {
            //print("puesto",string)
            Puesto = string
        }
        
        if element == "Ingresos" {
            //print("Ingreso",string)
            Ingresos = string
        }
        
        if element == "AniosCasada" {
            //print("Anios casado",string)
            AniosCasada = string
        }
        
        if element == "FuenteOtrosIngresos" {
           //print("fuente",string)
           fuente = string
        }
        
        if element == "OtrosIngresos" {
           //print("Otros Ingresos",string)
           OtrosIngresos = string
        }
        
        if element == "TieneParentesco" {
            //print("Tieneparentesco",string)
            TieneParentesco = string
        }
        
        if element == "EsPersonaPolitica" {
          //print("espersonapolitica",string)
          EsPersonaPolitica = string
        }
        if element == "TipoParentesco" {
           print("Tipoparentesco",string)
           TipoParentesco = string
            
        }
        if element == "Descfuncion" {
           //print("descfuncion",string)
          Descfuncion = string
        }
        if element == "Descparentesco" {
           //print("Descparentesco",string)
           Descparentesco = string
        }
        if element == "TelefonoCasa" {
            //print("Telefono de casa",string)
            Telefono.append(string)
        }
        if element == "IdentificacionFrentePath" {
            //print("identificacion",string)
            IdentificacionFrentePath = string
            
        }
        if element == "IdentificacionAtrasPath" {
         //print("Identificacion",string)
         IdentificacionAtrasPath = string
        }
        if element == "FirmaPath" {
           //print("firmapath",string)
           FirmaPath = string
        }
        if element == "Contrato1Path" {
           //print("contratopath",string)
           Contrato1Path = string
        }
        if element == "Contrato2Path" {
           //print("Contratopath2",string)
           Contrato2Path = string
        }
        
        if element == "Extra1" {
            Extra1 = string
        }
        
        if element == "Extra2" {
            Extra2 = string
        }
        if element == "Extra3" {
            Extra3 = string
        }
        if element == "Extra4" {
            Extra4 = string
        }
        if element == "Extra5" {
            Extra5 = string
        }
        
        if element == "Compania" {
            Compania = string
        }
        if element == "Usuario" {
            User = string
        }
        if element == "Contrasenia" {
            Contrasenia = string
        }
    }
    @objc func ExtDatos() {
       //contador
        var num = 0
        //Nombre
        var name = ""
        var name2 = ""
        var name3 = ""
        var name4 = ""
        //Apep
        var apep = ""
        var apep2 = ""
        var apep3 = ""
        var apep4 = ""
        //Apem
        var apem = ""
        var apem2 = ""
        var apem3 = ""
        var apem4 = ""
        //Nacionalidad
        var nac = ""
        var nac2 = ""
        var nac3 = ""
        var nac4 = ""
        repeat{
            if num == 0 {
                name = Nombre[num]
                apep = Apep[num]
                apem = Apem[num]
                nac = Nacionalidad[num]
                num = num+1
            }else {
                if num == 1 {
                    name2 = Nombre[num]
                     apep2 = Apep[num]
                     apem2 = Apem[num]
                    nac2 = Nacionalidad[num]
                    num = num+1
                }else {
                    if num == 2 {
                        name3 = Nombre[num]
                        apep3 = Apep[num]
                        apem3 = Apem[num]
                        nac3 = Nacionalidad[num]
                        num = num+1
                    }else {
                        if num == 3 {
                            name4 = Nombre[num]
                            apep4 = Apep[num]
                            apem4 = Apem[num]
                            nac4 = Nacionalidad[num]
                            num = num+1
                        }else {
                            num = num+1
                        }
                    }
                }
            }
        }while num < Nombre.count
        num = 0
        //calle
        var cal = ""
        var cal2 = ""
        //Nume
        var nume = ""
        var nume2 = ""
       //colonia
        var col = ""
        var col2 = ""
        //Estado
        var est = ""
        var est2 = ""
        //Municipio
        var mun = ""
        var mun2 = ""
        //Cp
        var cp1 = ""
        var cp2 = ""
        //tiempor
        var tiemp = ""
        var tiemp2 = ""
        //estatus
        var esta = ""
        var esta2 = ""
        //Monto
        var mont = ""
        var mont2 = ""
        //Telcasa
        var Tel = ""
        var Tel2 = ""
        repeat{
            if num == 0 {
                cal = calle[num]
                nume = Numext[num]
                col = colonia[num]
                est = Estado[num]
                mun = Mun[num]
                cp1 = cp[num]
                tiemp = tieestmpor[num]
                esta = estatusr[num]
                mont = monto[num]
                Tel = Telcasa[num]
                num = num+1
            }else {
                if num == 1 {
                    cal2 = calle[num]
                    nume2 = Numext[num]
                    col2 = colonia[num]
                    est2 = Estado[num]
                    mun2 = Mun[num]
                    cp2 = cp[num]
                    tiemp2 = tieestmpor[num]
                    esta2 = estatusr[num]
                    mont2 = monto[num]
                    Tel2 = Telcasa[num]
                    num = num+1
                }else {
                    num = num+1
                }
            }
        }while num < calle.count
        num = 0
        //numi
        var numi = ""
        var numi2 = ""
        repeat {
            if num == 0 {
                numi = numint[num]
                num = num+1
            }else {
                if num == 1 {
                    numi2 = numint[num]
                    num = num+1
                }else {
                    num = num+1
                }
            }
        }while num < numint.count
        num = 0
        //Telefono Referencias
        var Tel3 = ""
        var Tel4 = ""
        var Tel5 = ""
        repeat {
            if num == 0 {
                Tel3 = Telefono[num]
                num = num+1
            }else {
                if num == 1 {
                    Tel4 = Telefono[num]
                    num = num+1
                }else {
                    if num == 2{
                        Tel5 = Telefono[num]
                        num = num+1
                    }else {
                        num = num+1
                    }
                }
            }
        }while num < Telefono.count
       AddSolicitud(name: name, name2: name2, name3: name3, name4: name4, apep: apep, apep2: apep2, apep3: apep3, apep4: apep4, apem: apem, apem2: apem2, apem3: apem3, apem4: apem4, nac: nac, nac2: nac2, nac3: nac3, nac4: nac4, cal: cal, cal2: cal2, nume: nume, nume2: nume2, col: col, col2: col2, est: est, est2: est2, mun: mun, mun2: mun2, cp1: cp1, cp2: cp2, tiemp: tiemp, tiemp2: tiemp2, esta: esta, esta2: esta2, mont: mont, mont2: mont2, Tel: Tel, Tel2: Tel2, numi: numi, numi2: numi2, Tel3: Tel3, Tel4: Tel4, Tel5: Tel5)
    }
    
  
    
    @objc func AddSolicitud(name:String,name2:String,name3:String,name4:String,apep:String,apep2:String,apep3:String,apep4:String,apem:String,apem2:String,apem3:String,apem4:String,nac:String,nac2:String,nac3:String,nac4:String,cal:String,cal2:String,nume:String,nume2:String,col:String,col2:String,est:String,est2:String,mun:String,mun2:String,cp1:String,cp2:String,tiemp:String,tiemp2:String,esta:String,esta2:String,mont:String,mont2:String,Tel:String,Tel2:String,numi:String,numi2:String,Tel3:String,Tel4:String,Tel5:String) {
         print("Token",self.Token)
        //print("Fecha alta",fecha)
        var DiaCreacion = ""
        var MesCreacion = ""
        var AnioCreacion = ""
        var num = 0
        var cont = 0
        let longitud = fecha.characters.count
        var letters = fecha.characters.map { String($0) }
        repeat{
            if letters[num] == "-" || letters[num] == " "{
                num = num+1
                cont = cont+1
            }else {
                if cont == 0 {
                    AnioCreacion = AnioCreacion+letters[num]
                    num = num+1
                }else {
                    if cont == 1 {
                        MesCreacion = MesCreacion+letters[num]
                        num = num+1
                    }else {
                        if cont == 2 {
                            DiaCreacion = DiaCreacion+letters[num]
                            num = num+1
                        }else {
                            num = num+1
                        }
                    }
                }
            }
        }while num < longitud
        //print("Dia",DiaCreacion,"Mes",MesCreacion,"Anio",AnioCreacion)
        
       //WS Addsolicitud
       let json: [String: Any] = [
            "objSolicitud":    [
                "promotor":[
                    "Promotoria":"",
                    "RegPromotor":"",
                    "Compania":Compania,
                    "Formato":"",
                    "Usuario":User,
                    "Contrasenia":Contrasenia,
                    "Coordinador":["ClaveC":"","NombreC":""],
                    "Gerente":["ClaveG":"","NombreG":""],
                    "TipoUsuario":"4"
                ],
                "objSolicitud":[
                    "FolioLocal":"0",
                    "DiaCreacion":DiaCreacion,
                    "MesCreacion":MesCreacion,
                    "AnioCreacion":AnioCreacion,
                    "Lattitude":"19.41409467264",
                    "Longuitud":"-99.0129458034061",
                    "generales":
                        ["Tpoidentif":Tpoidentif,"Noidenficacion":Noidenficacion,"Pmrnombre":name,"Sdonombre":"","Apaterno":apep,"Amaterno":apem,
                         "Sexo":sex,"Nacionalidad":nac,"Fechanacdia":dia,"Rfc":Rfc,"Edocivil":Edocivil,"Nodependiente":Nodependiente ,"Cveperspol":"2",
                         "FechasnacMes":mes,"FechanacAnio":anio],
                    "domicilio":["Calle":cal,"NoInt":numi,"NoExt":nume,"Cpdom":cp1,"Estado":est,"Delegacion":mun,"Colonia":col,
                                 "TiempoResidencia":tiemp,"EstatusResidencia":esta,"MontoVivienda":mont,"Email":Email,"Telcasa":Tel,
                                 "Telmovil":Telmovil,"CompaniaMovil":CompaniaMovil],
                    "Deconominos":["TipoContrato":TipoContrato,"AntiguedadEmpleo":AntiguedadEmpleo,"AniosCasada":AniosCasada,"Ingresos":Ingresos,"NombreEmpresa":NombreEmpresa,"GiroEmpresa":GiroEmpresa,
                                   "Puesto":Puesto,"Domicilio":["Calle":cal2,"NoInt":numi2,"NoExt":nume2,"Cpdom":cp2,"Estado":est2,"Delegacion":mun2,"Colonia":col2,
                                                                  "TiempoResidencia":tiemp2,"EstatusResidencia":esta2,"MontoVivienda":mont,"Email":nil,"Telcasa":Tel2,"Telmovil":"","CompaniaMovil":nil],
                                   "OtrosIngresos":OtrosIngresos,"FuenteOtrosIngresos":fuente],
                    "Resp":nil,
                    "Promotor":["Promotoria":nil,"RegPromotor":nil,"Compania":Compania,"Formato":nil,"Usuario":User,"Contrasenia":Contrasenia,"Coordinador":nil,
                                "Gerente":nil,"TipoUsuario":nil],
                    "Personapolitica":["TipoParentesco":TipoParentesco,"Descfuncion":Descfuncion,"Parentesco":nil,"Descparentesco":Descparentesco,"TieneParentesco":TieneParentesco,"EsPersonaPolitica":EsPersonaPolitica],
                    "Refer":["Noreferencia":nil,"TelefonoCasa":Tel3,"Tpoidentif":nil,"Noidenficacion":nil,"Pmrnombre":name2,"Sdonombre":"",
                             "Apaterno":apem2,"Amaterno":apep2,"Sexo":nil,"Nacionalidad":nac2,"Fechanacdia":nil,"Rfc":nil,"Edocivil":nil,
                             "Nodependiente":nil,"Cveperspol":nil,"FechasnacMes":nil,"FechanacAnio":nil],
                    "Refer2":["Noreferencia":nil,"TelefonoCasa":Tel4,"Tpoidentif":nil,"Noidenficacion":nil,"Pmrnombre":name3,"Sdonombre":"",
                              "Apaterno":apep3,"Amaterno":apem3,"Sexo":nil,"Nacionalidad":nac3,"Fechanacdia":nil,"Rfc":nil,"Edocivil":nil,
                              "Nodependiente":nil,"Cveperspol":nil,"FechasnacMes":nil,"FechanacAnio":nil],
                    "Refer3":["Noreferencia":nil,"TelefonoCasa":Tel5,"Tpoidentif":nil,"Noidenficacion":nil,"Pmrnombre":name4,"Sdonombre":"","Apaterno":apep4,"Amaterno":apem4,
                              "Sexo":nil,"Nacionalidad":nac4,"Fechanacdia":nil,"Rfc":nil,"Edocivil":nil,"Nodependiente":nil,"Cveperspol":nil,"FechasnacMes":nil,"FechanacAnio":nil],
                    "doc":["IdentificacionFrentePath":IdentificacionFrentePath,"IdentificacionAtrasPath":IdentificacionAtrasPath,
                           "Contrato1Path":Contrato1Path,"Contrato2Path":Contrato2Path,"FirmaPath":FirmaPath,
                           "Extra1":Extra1,"Extra2":Extra2,
                           "Extra3":Extra3,"Extra4":Extra4,
                           "Extra5":Extra5]
                ],
                "IF":IF,
                "IA":IA,
                "C1":C1,
                "C2":C2,
                "ESTATUS":"6",
                "ID_SOLICITUD":"",
                "E1":E1,
                "E2":E2,
                "E3":E3,
                "E4":E4,
                "E5":E5,
                "F1":F1,
                "TIPO_SOLICITUD":""
            ],
            "llave":    [
                "idUsuario":Identificador,
                "Token":Token
            ]
        ]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "https://sminet.com.mx/mx.com.stefanini.service.api.rest/Service1.svc/AddSolicitud")!
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
            DispatchQueue.main.async {
                let stringData = String(data: data, encoding: String.Encoding.utf8)
                print("Respuesta",stringData!)
                self.Borrar()
            }
       }
        task.resume()
    }
    @objc func Borrar(){
        if Buzon == "A" {
            let noteEntity = "Rbuzon" //Entity Name
            let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let note = buzonA[indice]
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
               print("Solicitud eliminada A")
            } catch let error as NSError {
                print("Error While Fetching Data From DB: \(error.userInfo)")
            }
        }else {
            let noteEntity = "BUZON_A" //Entity Name
            let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let note = buzonB[indice]
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
                print("Solicitud eliminada B")
            } catch let error as NSError {
                print("Error While Fetching Data From DB: \(error.userInfo)")
            }
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
        UIView.animate(withDuration: 1, animations: {
            toastLabel.alpha = 0.0
        })
    }
    
    @objc func onSlideMenuButtonPressed(_ sender : UIButton){
        if (sender.tag == 10)
        {
            // To Hide Menu If it already there
            self.slideMenuItemSelectedAtIndex(-1);
            
            sender.tag = 0;
            
            let viewMenuBack : UIView = view.subviews.last!
            
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                var frameMenu : CGRect = viewMenuBack.frame
                frameMenu.origin.x = -1 * UIScreen.main.bounds.size.width
                viewMenuBack.frame = frameMenu
                viewMenuBack.layoutIfNeeded()
                viewMenuBack.backgroundColor = UIColor.clear
                }, completion: { (finished) -> Void in
                    viewMenuBack.removeFromSuperview()
            })
            
            return
        }
        
        sender.isEnabled = false
        sender.tag = 10
        
        let menuVC : MenuViewController = self.storyboard!.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        menuVC.btnMenu = sender
        menuVC.delegate = self
        self.view.addSubview(menuVC.view)
        self.addChildViewController(menuVC)
        menuVC.view.layoutIfNeeded()
        
        
        menuVC.view.frame=CGRect(x: 0 - UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
        
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            menuVC.view.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
            sender.isEnabled = true
            }, completion:nil)
    }
    //**************************** Sincronizar Buzon *************************************
    //Buscar buzon activo
    @objc func Buscarparamba2(){
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
                    Wslogin2()
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
                    Wslogin2()
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
                if buzonA[num].estatus == 6 || buzonA[num].estatus == 7 || buzonA[num].estatus == 0{
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
                    Wslogin2()
                }else {
                    Eliminarbuzon(Arreglo: "B")
                }
                
            }else {
                let alert = UIAlertController(title: "¡Aviso!", message: "Tienes Solicitudes Pendientes deseas eliminarlas", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
                    if self.buzonB.count == 0 {
                        self.Wslogin2()
                    }else {
                        self.Eliminarbuzon(Arreglo: "B")
                    }
                }))
                alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler:{ (action: UIAlertAction!) in
                    self.visual = true
                    self.Online.isEnabled = true
                    self.Btbuzon.isEnabled = true
                    self.Btcatalogos.isEnabled = true
                    self.Btcitas.isEnabled = true
                    self.Btacerca.isEnabled = true
                    self.Btasociar.isEnabled = true
                    self.Refresh.alpha = 0
                    self.ToastExample(message: "Proceso de Sincronizacion cancelado")
                }))
                self.present(alert, animated: true, completion: nil)
                
            }
        }else {
            repeat {
                if buzonB[num].estatus_b == 6 || buzonB[num].estatus_b == 7 || buzonB[num].estatus_b == 0 {
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
                    Wslogin2()
                }else {
                    Eliminarbuzon(Arreglo: "A")
                }
                
            }else {
                let alert = UIAlertController(title: "¡Aviso!", message: "Tienes Solicitudes Pendientes deseas eliminarlas", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
                    if self.buzonA.count == 0 {
                        self.Wslogin2()
                    }else {
                        self.Eliminarbuzon(Arreglo: "A")
                    }
                }))
                alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler:{ (action: UIAlertAction!) in
                    self.visual = true
                    self.Online.isEnabled = true
                    self.Btbuzon.isEnabled = true
                    self.Btcatalogos.isEnabled = true
                    self.Btcitas.isEnabled = true
                    self.Btacerca.isEnabled = true
                    self.Btasociar.isEnabled = true
                    self.Refresh.alpha = 0
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
        self.Wslogin2()
    }
    
    @objc func Wslogin2() {
        let json: [String: Any] = [ "Promotoria":"",
                                    "RegPromotor":"",
                                    "Compania":Compania,
                                    "Formato":"",
                                    "Usuario":User,
                                    "Contrasenia":Contrasenia,
                                    "Coordinador":["ClaveC":"","NombreC":""],
                                    "Gerente":["ClaveG":"","NombreG":""],
                                    "TipoUsuario":"4"]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        // create post request
        let url = URL(string: "https://sminet.com.mx/mx.com.stefanini.service.api.rest/Service1.svc/Login")!
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
                    self.Token = (responseJSON["Token"] as? String)!
                    print("Mi token es:",self.Token)
                    print("Buzon a insetar",self.Buzoninsert)
                    self.WsGetBuzon()
                    
                    
                }
            }else{
                print(" no Respuesta Json")
            }
        }
        task.resume()
    }
    
    @objc func WsGetBuzon(){
        print("El Buzon a insertar es:",self.Buzoninsert)
       
        let json: [String: Any] = [
            "objPromotor": [
                "Promotoria":"",
                "RegPromotor":"",
                "Compania":Compania,
                "Formato":"",
                "Usuario":User,
                "Contrasenia":Contrasenia,
                "Coordinador":["ClaveC":"","NombreC":""],
                "Gerente":["ClaveG":"","NombreG":""],
                "TipoUsuario":"4"
            ],
            "llave":["idUsuario":String(Identificador),
                     "Token":self.Token]
        ]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "https://sminet.com.mx/mx.com.stefanini.service.api.rest/Service1.svc/GetBuzon")!
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
                        self.ToastExample(message: "Obteniendo Solicitudes...")
                        var coment = Solicitud[i]["COMENTARIO"] as? String
                        if coment == nil {
                            coment = ""
                        }
                        //self.com.append(coment!)
                        
                        let esta = Solicitud[i]["ESTATUS"] as? String
                        print("Estatus",esta!)
                        
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
                        self.Insertarbuzon(coment: coment!, est: esta!, fechaa: fechaar!, fecham: fechamr!, idsol: idsolr!, product: producto!, prom: prome!, sol: solicitud!,ext1: ext1!,ext2:ext2!,ext3:ext3!,ext4:ext4!,ext5:ext5!,docc1:docc1!,docc2:docc2!,docia:docia!,docif:docif!,fi:fi!)
                        }
                       print("Termine......")
                    self.Updateparam2()
                    self.Online.isEnabled = true
                    self.Btbuzon.isEnabled = true
                    self.Btcatalogos.isEnabled = true
                    self.Btcitas.isEnabled = true
                    self.Btacerca.isEnabled = true
                    self.Btasociar.isEnabled = true
                    self.Refresh.alpha = 0
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
            newBuz.setValue(Int(Identificador), forKey: "id_usuario")
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
            newBuz.setValue(Int(Identificador), forKey: "id_usuario_b")
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
                
            }catch {
                print(error)
            }
        }
    }
    @objc func Updateparam2(){
        self.ToastExample(message: "Finalizando...")
        let request = NSFetchRequest<PARAMETRO>(entityName: "PARAMETRO")
        do {
            let searchResults = try context.fetch(request)
            for task in searchResults {
                if task.parametro == "BUZON_ACTIVO" {
                    task.valor = self.Buzoninsert
                }
               
            }
        } catch {
            print("Error with request: \(error)")
        }
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
       
    }
    //*********************** Sincronizar Catalogos ***************************************************
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
        Wslogin3()
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
                    ToastExample(message: "Eliminando Catalogos.....")
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
                    ToastExample(message: "Eliminando Catalogos.....")
                    id = id-1
                } catch let error as NSError {
                    print("Error While Fetching Data From DB: \(error.userInfo)")
                }
            }while cataloB.count > 0
            
        }
        
    }
  
    @objc func Wslogin3() {
        let json: [String: Any] = [ "Promotoria":"",
                                    "RegPromotor":"",
                                    "Compania":Compania,
                                    "Formato":"",
                                    "Usuario":User,
                                    "Contrasenia":Contrasenia,
                                    "Coordinador":["ClaveC":"","NombreC":""],
                                    "Gerente":["ClaveG":"","NombreG":""],
                                    "TipoUsuario":"4"]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        // create post request
        let url = URL(string: "https://sminet.com.mx/mx.com.stefanini.service.api.rest/Service1.svc/Login")!
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
                    self.Token = (responseJSON["Token"] as? String)!
                    print("Mi token es:",self.Token)
                    print("Catalogo a insetar",self.Catalogoinsert)
                    self.WsCatalogos()
                }
            }else{
                print(" no Respuesta Json")
            }
        }
        task.resume()
    }
    @objc func WsCatalogos(){
        
        let json: [String: Any] = [
            "objPromotor": [
                "Promotoria":"",
                "RegPromotor":"",
                "Compania":Compania,
                "Formato":"",
                "Usuario":User,
                "Contrasenia":Contrasenia,
                "Coordinador":["ClaveC":"","NombreC":""],
                "Gerente":["ClaveG":"","NombreG":""],
                "TipoUsuario":"4"
            ],
            "llave":["idUsuario":Identificador,
                     "Token":self.Token]
        ]
        
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "https://sminet.com.mx/mx.com.stefanini.service.api.rest/Service1.svc/GetCatalogosX")!
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
                        self.ToastExample(message: "Obteniendo catalogos...")
                        let desc = Solicitud[i]["DESCRIPCION"] as? String
                        print(desc!)
                        
                        let idCat = Solicitud[i]["ID_CATALOGO"] as? String
                        //print(idCat!)
                        
                        let idTipo = Solicitud[i]["ID_TIPO_CATALOGO"] as? String
                        //print(idTipo!)
                        
                        let padre = Solicitud[i]["PADRE"] as? String
                        //print(padre!)
                        self.Insertarcatalogo(desc: desc!, idcat: idCat!, idtc: idTipo!, pad: padre!)
                    }
                    print("Termine")
                    self.Updateparam3()
                    self.Online.isEnabled = true
                    self.Btbuzon.isEnabled = true
                    self.Btcatalogos.isEnabled = true
                    self.Btcitas.isEnabled = true
                    self.Btacerca.isEnabled = true
                    self.Btasociar.isEnabled = true
                    self.Refresh.alpha = 0
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
                print("Catalogo insertado A")
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
                print("Catalogo insertado B")
                self.ToastExample(message: "Obteniendo catalogos...")
            }catch {
                print(error)
            }
        }
    }
    
    @objc func Updateparam3(){
        self.ToastExample(message: "Finalizando...")
        let request = NSFetchRequest<PARAMETRO>(entityName: "PARAMETRO")
        do {
            let searchResults = try context.fetch(request)
            for task in searchResults {
                if task.parametro == "CATALOGO_ACTIVO" {
                    task.valor = self.Catalogoinsert
                }
            }
        } catch {
            print("Error with request: \(error)")
        }
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
      //*********************** Asociar Pomotor ***************************************************
    @objc func Wslogin4(Empresa:String,User:String,Pass:String) {
        
        let json: [String: Any] = [ "Promotoria":"",
                                    "RegPromotor":"",
                                    "Compania":Empresa,
                                    "Formato":"",
                                    "Usuario":User,
                                    "Contrasenia":Pass,
                                    "Coordinador":["ClaveC":"","NombreC":""],
                                    "Gerente":["ClaveG":"","NombreG":""],
                                    "TipoUsuario":"4"]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "https://sminet.com.mx/mx.com.stefanini.service.api.rest/Service1.svc/Login")!
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
                    
                    self.Identificador = String(responseJSON["IdUsuario"] as! Int)
                
                    print("Id Usuario: ",self.Identificador)
                    
                    if Int(self.Identificador) == 0 {
                        let alert = UIAlertController(title: "AVISO!", message: "¡Login Incorrecto!" , preferredStyle: UIAlertControllerStyle.alert)
                        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                        self.Online.isEnabled = true
                        self.Btbuzon.isEnabled = true
                        self.Btcatalogos.isEnabled = true
                        self.Btcitas.isEnabled = true
                        self.Btacerca.isEnabled = true
                        self.Btasociar.isEnabled = true
                        self.Refresh.alpha = 0
                        
                    }else {
                        print("usuario encontrado")
                        self.Token = (responseJSON["Token"] as? String)!
                        self.User = User
                        self.Contrasenia = Pass
                        self.Compania = Empresa
                        print("Token Usuario: ",self.Token)
                        self.Wsuuid(Usuario: User)
                    }
                    
                }
            }else{
                print(" no Respuesta Json")
            }
        }
        task.resume()
    }
    
    @objc func Wsuuid(Usuario:String){
        
        let json: [String: Any] = ["idUsuario": String(Identificador),
                                   "UUID": Uniqueid,
                                   "llave":["idUsuario":String(Identificador),
                                            "Token":self.Token]]
        
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "https://sminet.com.mx/mx.com.stefanini.service.api.rest/Service1.svc/validaUUID")!
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
                        self.Buscarparamba3()
                        
                    }else{
                        let alert = UIAlertController(title: "¡Este perfil del promotor: "+Usuario+" no puede instalarse en este dispositivo "+self.Uniqueid, message: "Solicite al administrador el permiso correspondiente" , preferredStyle: UIAlertControllerStyle.alert)
                        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                        self.Online.isEnabled = true
                        self.Btbuzon.isEnabled = true
                        self.Btcatalogos.isEnabled = true
                        self.Btcitas.isEnabled = true
                        self.Btacerca.isEnabled = true
                        self.Btasociar.isEnabled = true
                        self.Refresh.alpha = 0
                    }
                }
            }else{
                print(" no Respuesta Json")
            }
        }
        task.resume()
    }
    
    //Buscar buzon activo
    @objc func Buscarparamba3(){
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
                    self.Buscarparamca2()
                }else {
                    self.Eliminarbuzon2(Arreglo: "B")
                }
            } else {
                Buscarbuzon2(Arreglo: paramArray[num].valor!)
            }
        }else {
            self.Buzoninsert = "A"
            print("Tamano de buzon B:",buzonB.count)
            if buzonB.count == 0 {
                if buzonA.count == 0 {
                    self.Buscarparamca2()
                }else {
                    Eliminarbuzon2(Arreglo: "A")
                }
            }else {
                Buscarbuzon2(Arreglo: paramArray[num].valor!)
            }
        }
        
    }
    
    //Buscar estatus 6 y 7
    @objc func Buscarbuzon2(Arreglo:String){
        //BuzonA = Rbuzon  BuzonB = Buzon
        ToastExample(message: "Obteniendo Solicitudes pendientes")
        var num = 0
        var bandera = true
        if Arreglo == "A" {
            repeat{
                if buzonA[num].estatus == 6 || buzonA[num].estatus == 7 || buzonA[num].estatus == 0{
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
                    self.Buscarparamca2()
                }else {
                    Eliminarbuzon2(Arreglo: "B")
                }
                
            }else {
                let alert = UIAlertController(title: "¡Aviso!", message: "Tienes Solicitudes Pendientes deseas eliminarlas", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
                    if self.buzonB.count == 0 {
                        self.Buscarparamca2()
                    }else {
                        self.Eliminarbuzon2(Arreglo: "B")
                    }
                }))
                alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler:{ (action: UIAlertAction!) in
                    self.Online.isEnabled = true
                    self.Btbuzon.isEnabled = true
                    self.Btcatalogos.isEnabled = true
                    self.Btcitas.isEnabled = true
                    self.Btacerca.isEnabled = true
                    self.Btasociar.isEnabled = true
                    self.Refresh.alpha = 0
                    self.ToastExample(message: "Proceso de Sincronizacion cancelado")
                }))
                self.present(alert, animated: true, completion: nil)
                
            }
        }else {
            repeat {
                if buzonB[num].estatus_b == 6 || buzonB[num].estatus_b == 7 || buzonB[num].estatus_b == 0 {
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
                    self.Buscarparamca2()
                }else {
                    Eliminarbuzon2(Arreglo: "A")
                }
                
            }else {
                let alert = UIAlertController(title: "¡Aviso!", message: "Tienes Solicitudes Pendientes deseas eliminarlas", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
                    if self.buzonA.count == 0 {
                        self.Buscarparamca2()
                    }else {
                        self.Eliminarbuzon2(Arreglo: "A")
                    }
                }))
                alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler:{ (action: UIAlertAction!) in
                    self.Online.isEnabled = true
                    self.Btbuzon.isEnabled = true
                    self.Btcatalogos.isEnabled = true
                    self.Btcitas.isEnabled = true
                    self.Btacerca.isEnabled = true
                    self.Btasociar.isEnabled = true
                    self.Refresh.alpha = 0
                    self.ToastExample(message: "Proceso de Sincronizacion cancelado")
                }))
                
                self.present(alert, animated: true, completion: nil)
                
            }
        }
    }
    
    @objc func Eliminarbuzon2(Arreglo:String){
        
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
        self.Buscarparamca2()
    }
    
    //Buscar Catalogo Activo
    @objc func Buscarparamca2() {
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
                self.Eliminarcatalogo2(Arreglo: "B")
            }
        }else {
            self.Catalogoinsert = "A"
            print("Tamano de buzon B:",cataloB.count)
            if cataloA.count != 0 {
                self.Eliminarcatalogo2(Arreglo: "A")
            }
        }
        self.Buscarparampa()
    }
    
    @objc func Eliminarcatalogo2(Arreglo:String){
        
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
        self.WsGetBuzon2()
    }
    
    @objc func WsGetBuzon2(){
        print("El Buzon a insertar es:",self.Buzoninsert)
        print("El Catalogo a insertar es:",self.Catalogoinsert)
        print("El producto a insertar es:",self.productinsert)
        print("La agenda a insertar es:",self.agendinsert)
        print("Compania",Compania,"usuario",User,"Contrasenia",Contrasenia)
        let json: [String: Any] = [
            "objPromotor": [
                "Promotoria":"",
                "RegPromotor":"",
                "Compania":Compania,
                "Formato":"",
                "Usuario":User,
                "Contrasenia":Contrasenia,
                "Coordinador":["ClaveC":"","NombreC":""],
                "Gerente":["ClaveG":"","NombreG":""],
                "TipoUsuario":"4"
            ],
            "llave":["idUsuario":Identificador,
                     "Token":self.Token]
        ]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "https://sminet.com.mx/mx.com.stefanini.service.api.rest/Service1.svc/GetBuzon")!
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
                        self.ToastExample(message: "Obteniendo Solicitudes...")
                        var coment = Solicitud[i]["COMENTARIO"] as? String
                        if coment == nil {
                            coment = ""
                        }
                        //self.com.append(coment!)
                        
                        let esta = Solicitud[i]["ESTATUS"] as? String
                        print("Estatus",esta!)
                        
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
                        
                        self.Insertarbuzon2(coment: coment!, est: esta!, fechaa: fechaar!, fecham: fechamr!, idsol: idsolr!, product: producto!, prom: prome!, sol: solicitud!,ext1: ext1!,ext2:ext2!,ext3:ext3!,ext4:ext4!,ext5:ext5!,docc1:docc1!,docc2:docc2!,docia:docia!,docif:docif!,fi:fi!)
                        
                    }
                    
                    self.WsCatalogos2()
                }
            } catch {
                print("hubo un error")
                print(error)
            }
        }
        
        
        task.resume()
        
    }
    
    @objc func Insertarbuzon2(coment:String,est:String,fechaa:String,fecham:String,idsol:String,product:String,prom:String,sol:String,ext1:String,ext2:String,ext3:String,ext4:String,ext5:String,docc1:String,docc2:String,docia:String,docif:String,fi:String){
        
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
            newBuz.setValue(Int(Identificador), forKey: "id_usuario")
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
            newBuz.setValue(Int(Identificador), forKey: "id_usuario_b")
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
                
            }catch {
                print(error)
            }
        }
    }
    
    @objc func WsCatalogos2(){
        
        let json: [String: Any] = [
            "objPromotor": [
                "Promotoria":"",
                "RegPromotor":"",
                "Compania":Compania,
                "Formato":"",
                "Usuario":User,
                "Contrasenia":Contrasenia,
                "Coordinador":["ClaveC":"","NombreC":""],
                "Gerente":["ClaveG":"","NombreG":""],
                "TipoUsuario":"4"
            ],
            "llave":["idUsuario":Identificador,
                     "Token":self.Token]
        ]
        
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        
        // create post request
        let url = URL(string: "https://sminet.com.mx/mx.com.stefanini.service.api.rest/Service1.svc/GetCatalogosX")!
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
                        self.ToastExample(message: "Obteniendo catalogos...")
                        let desc = Solicitud[i]["DESCRIPCION"] as? String
                        print(desc!)
                        
                        let idCat = Solicitud[i]["ID_CATALOGO"] as? String
                        //print(idCat!)
                        
                        let idTipo = Solicitud[i]["ID_TIPO_CATALOGO"] as? String
                        //print(idTipo!)
                        
                        let padre = Solicitud[i]["PADRE"] as? String
                        //print(padre!)
                        self.Insertarcatalogo2(desc: desc!, idcat: idCat!, idtc: idTipo!, pad: padre!)
                        
                    }
                    
                    if self.userArray.count == 0 {
                        self.ToastExample(message: "Finalizando...")
                        self.Insertarusuario()
                    }else{
                        self.ToastExample(message: "Finalizando...")
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
    @objc func Insertarcatalogo2(desc:String,idcat:String,idtc:String,pad:String){
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
                print("Catalogo insertado A")
                
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
                print("Catalogo insertado B")
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
        newUser.setValue(Compania, forKey: "compania")
        newUser.setValue(Contrasenia, forKey: "contrasena")
        newUser.setValue(Int(Identificador), forKey: "id_usuario")
        newUser.setValue(4, forKey: "tipo_usuario")
        newUser.setValue(User, forKey: "user")
        
        do {
            try context.save()
            print("Usuario insertado")
            self.ToastExample(message: "Finalizando...")
            Updateparam4()
        }catch {
            print(error)
        }
        
    }
    
    @objc func Updateparam4(){
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
            vc.Usuario2 = User
            vc.compania = Contrasenia
            vc.Contrasena = Compania
            vc.id = Int(Identificador)!
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }
   
}
