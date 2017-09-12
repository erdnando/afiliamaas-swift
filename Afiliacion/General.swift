//
//  General.swift
//  Afiliacion
//
//  Created by stefanini on 08/09/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import CoreData
class General: UIViewController,XMLParserDelegate,UIScrollViewDelegate{
    
     //Scroll
    @IBOutlet weak var Scroll: UIScrollView!
    
    //Objetos CoreData
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    //Formulario General
    @IBOutlet weak var Gnombre: UITextField!
    @IBOutlet weak var G2nombre: UITextField!
    @IBOutlet weak var Gapep: UITextField!
    @IBOutlet weak var Gapem: UITextField!
    var Sexo = ""
    @IBOutlet weak var Hombre: UISwitch!
    @IBOutlet weak var Mujer: UISwitch!
    var dia = ""
    var mes = ""
    var anio = ""
    
    @IBOutlet weak var Fechanac: UITextField!
    @IBOutlet weak var Rfc: UITextField!
    @IBOutlet weak var Numdependientes: UITextField!
    //Domicilio
    @IBOutlet weak var Gcalle: UITextField!
    @IBOutlet weak var Gnumext: UITextField!
    @IBOutlet weak var Gnumint: UITextField!
    @IBOutlet weak var Gcolonia: UITextField!
    @IBOutlet weak var Ccp: UITextField!
    @IBOutlet weak var Gtiemporesidencia: UITextField!
    @IBOutlet weak var Gestatusresidencia: UITextField!
    @IBOutlet weak var Gmontovivienda: UITextField!
    @IBOutlet weak var Dcorreo: UITextField!
    @IBOutlet weak var Dtelefono: UITextField!
    @IBOutlet weak var Dcelular: UITextField!
    //Datos economicos
    @IBOutlet weak var DEmpresa: UITextField!
    @IBOutlet weak var DGiro: UITextField!
    @IBOutlet weak var Dantiguedad: UITextField!
    @IBOutlet weak var Dpuesto: UITextField!
    @IBOutlet weak var Dingreso: UITextField!
    @IBOutlet weak var Dcasados: UITextField!
    @IBOutlet weak var Dfuenteingresos: UITextField!
    @IBOutlet weak var Dotrosingresos: UITextField!
    @IBOutlet weak var Dcalle: UITextField!
    @IBOutlet weak var Dnumext: UITextField!
    @IBOutlet weak var Dnumint: UITextField!
    @IBOutlet weak var DColonia: UITextField!
    @IBOutlet weak var Dcp: UITextField!
    @IBOutlet weak var Dtelefonoofic: UITextField!
    @IBOutlet weak var Dextencion: UITextField!
    
    //Persona politica
    @IBOutlet weak var Ppoliticasi: UISwitch!
    @IBOutlet weak var Ppoliticano: UISwitch!
    @IBOutlet weak var Pfuncion: UITextField!
    @IBOutlet weak var Ppolitica2si: UISwitch!
    @IBOutlet weak var Ppolitica2no: UISwitch!
    @IBOutlet weak var Pfuncion2: UITextField!
    @IBOutlet weak var Pfuncion3: UITextField!
    
    
    //Formulario Referencias
    @IBOutlet weak var Rnombre: UITextField!
    @IBOutlet weak var Rapep: UITextField!
    @IBOutlet weak var Rapem: UITextField!
    @IBOutlet weak var R2nombre: UITextField!
    @IBOutlet weak var R2apep: UITextField!
    @IBOutlet weak var R2apem: UITextField!
    @IBOutlet weak var R3nombre: UITextField!
    @IBOutlet weak var R3apep: UITextField!
    @IBOutlet weak var R3apem: UITextField!
    @IBOutlet weak var Rtelefono: UITextField!
    @IBOutlet weak var R2telefono: UITextField!
    @IBOutlet weak var R3telefono: UITextField!
    
    
    
    
    
    var buzonA:[Rbuzon] = []
    var buzonB:[BUZON_A] = []
    
    //General
    
    
    //Valores de Xml
    var Nombre:[String] = []
    var Apep:[String] = []
    var Apem:[String] = []
    var calle:[String] = []
    var Numext:[String] = []
    var numint:[String] = []
    var colonia:[String] = []
    var cp:[String] = []
    var tiempor:[String] = []
    var estatusr:[String] = []
    var monto:[String] = []
    var Telcasa:[String] = []
    var Telcelular:[String] = []
    var Telefono:[String] = []
    
    //Variables para parciar
    var parser = XMLParser()
    var element:String = ""
    
    var Solicitud = 0
    var Buzon = ""
    
   fileprivate var lastContentOffset: CGPoint = .zero
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Scroll.delegate = self
        print("Buzon Activo en General",Buzon)
        fetchData3()
        fetchData4()
        if Buzon == "A" {
            verBuzona()
        }else{
            verBuzonb()
        }
        
    }
  
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        perform(#selector(self.actionOnFinishedScrolling), with: nil, afterDelay: Double(velocity.x))
         print("Posicion:",scrollView.contentOffset.y)
        if scrollView.contentOffset.y > 0 && scrollView.contentOffset.y < 200{
            print("General")
        }
        if scrollView.contentOffset.y > 200 && scrollView.contentOffset.y < 692{
            print("Domicilio")
        }
        if scrollView.contentOffset.y > 692 && scrollView.contentOffset.y < 1349{
            print("Datos economicos")
        }
        if scrollView.contentOffset.y > 1349 && scrollView.contentOffset.y < 1758{
            print("Persona politica")
        }
        if scrollView.contentOffset.y > 200 && scrollView.contentOffset.y < 692{
            print("Domicilio")
        }
    }
    func actionOnFinishedScrolling() {
       
        // do what you need
    }
    
    
    func fetchData3() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            buzonA = try context.fetch(Rbuzon.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    func fetchData4() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            buzonB = try context.fetch(BUZON_A.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    
    @IBAction func Hombre(_ sender: UISwitch) {
        if Hombre.isOn {
            Mujer.isOn = false
        }
    }
    
    @IBAction func Mujer(_ sender: UISwitch) {
        if Mujer.isOn {
            Hombre.isOn = false
        }
    }
    //Persona politica
    @IBAction func Ppoliticasi(_ sender: UISwitch) {
        if Ppoliticasi.isOn{
            Ppoliticano.isOn = false
        }
    }
    
    @IBAction func Ppoliticano(_ sender: UISwitch) {
        if Ppoliticano.isOn {
            Ppoliticasi.isOn = false
        }
    }
    
    @IBAction func Ppolitica2si(_ sender: UISwitch) {
        if Ppolitica2si.isOn {
            Ppolitica2no.isOn = false
        }
    }
    
    @IBAction func Ppolitica2no(_ sender: UISwitch) {
        if Ppolitica2no.isOn {
            Ppolitica2si.isOn = false
        }
    }
    
    func verBuzona(){
        
        var num = 0
        print("***************XML Buzon Activo*******************")
        repeat {
            // print(num)
            if buzonA[num].id_solicitud == Int32(Solicitud){
                //print(buzonA[num].solicitud_xml!)
                beginParsing(xml: buzonA[num].solicitud_xml!)
                break
            }
            else {
                num = num+1
            }
            
        }while num < buzonA.count
        verDatos()
    }
    
    func verBuzonb(){
        
        var num = 0
        print("***************XML Buzon Activo*******************")
        repeat {
            if buzonB[num].id_solicitud_b == Int32(Solicitud){
                //print(buzonA[num].solicitud_xml!)
                beginParsing(xml: buzonB[num].solicitud_xml_b!)
                break
            }
            else {
                num = num+1
            }
        }while num < buzonB.count
        verDatos()
      }
    
    func verDatos(){
        var num = 0
        if Nombre.count != 0 {
            //Nombre
            repeat {
                if num == 0 {
                    print("Nombre",Nombre[num],num)
                    Gnombre.text = Nombre[num]
                    num = num + 1
                }else {
                    if num == 1 {
                        print("Nombre",Nombre[num],num)
                        Rnombre.text = Nombre[num]
                        num = num + 1
                    }else {
                        if num == 2 {
                            print("Nombre",Nombre[num],num)
                            R2nombre.text = Nombre[num]
                            num = num + 1
                        }else {
                            if num == 3{
                                print("Nombre",Nombre[num],num)
                                R3nombre.text = Nombre[num]
                                num = num + 1
                            }
                        }
                    }
                    
                }
            }while num < Nombre.count
        }
       
        if Apep.count != 0 {
            //Apellido Paterno
            num = 0
            repeat {
                if num == 0 {
                    print("Apellido Paterno:",Apep[num])
                    Gapep.text = Apep[num]
                    num = num + 1
                }else {
                    if num == 1 {
                        print("Apellido Paterno:",Apep[num])
                        Rapep.text = Apep[num]
                        num = num + 1
                    }else {
                        if num == 2 {
                            print("Apellido Paterno:",Apep[num])
                            R2apep.text = Apep[num]
                            num = num + 1
                        }else {
                            if num == 3{
                                print("Apellido Paterno:",Apep[num])
                                R3apep.text = Apep[num]
                                num = num + 1
                            }
                        }
                    }
                }
            }while num < Apep.count

        }
        //Apellido Materno
        if Apem.count != 0 {
            num = 0
            repeat {
                if num == 0 {
                    print("Apellido Materno:",Apem[num])
                    Gapem.text = Apem[num]
                    num = num + 1
                }else {
                    if num == 1 {
                        print("Apellido Materno:",Apem[num])
                        Rapem.text = Apem[num]
                        num = num + 1
                    }else {
                        if num == 2 {
                            print("Apellido Materno:",Apem[num])
                            R2apem.text = Apem[num]
                            num = num + 1
                        }else {
                            if num == 3{
                                print("Apellido Materno:",Apem[num])
                                R3apem.text = Apem[num]
                                num = num + 1
                            }
                        }
                    }
                }
            }while num < Apem.count

        }
        //Sexo
        print(Sexo)
        if Sexo == "MASCULINO" {
            Hombre.isOn = true
        }else {
            Mujer.isOn = true
        }
        //fecha
        var fecha = ""
        let valor = Int(mes)
        var meses:[String] = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"]
        fecha = dia + "de" + meses[valor!-1] + "de" + anio
        Fechanac.text = fecha
        ///////aqui voy a hacer pruebas
        //calle
        if calle.count != 0 {
            num = 0
            repeat{
                if num == 0{
                     print("calle",calle[num])
                     Gcalle.text = calle[num]
                     num = num+1
                }else {
                    Dcalle.text = calle[num]
                    num = num+1
                }
            }while num < calle.count
        }
        
        //Num ext
        if Numext.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    print("Num Ext:", Numext[num])
                    Gnumext.text = Numext[num]
                    num = num+1
                }else {
                    Dnumext.text = Numext[num]
                    num = num+1
                }
            }while num < Numext.count
        }
        
        //Num int
        if numint.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    print("Num Int",numint[num])
                    Gnumint.text = numint[num]
                    num = num+1
                }else {
                    Dnumint.text = numint[num]
                    num = num+1
                }
            }while num < numint.count
        }
        //Colonia
        if colonia.count != 0 {
            num = 0
            repeat{
                if num == 0{
                     print("Colonia",colonia[num])
                     Gcolonia.text = colonia[num]
                     num = num+1
                }else {
                    DColonia.text = colonia[num]
                    num = num+1
                }
            }while num < colonia.count
        }
        
        //CP
        if cp.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Ccp.text = cp[num]
                    num = num+1
                }else {
                    Dcp.text = cp[num]
                    num = num+1
                }
            }while num < cp.count
        }
        //tiempo de recidencia
        if tiempor.count != 0 {
            num = 0
            repeat{
                if num == 0{
                 Gtiemporesidencia.text = tiempor[num]
                    break
                }else {
                    num = num+1
                }
            }while num < tiempor.count
        }
        //Estatus de residencia
        if estatusr.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Gestatusresidencia.text = estatusr[num]
                    break
                }else {
                    num = num+1
                }
            }while num < estatusr.count
        }
        //Monto de vivienda
        if monto.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    print("Monto de vivienda",monto[num])
                    Gmontovivienda.text = monto[num]
                    break
                }else {
                    num = num+1
                }
            }while num < monto.count
        }
       //Telefono de casa
        if Telcasa.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Dtelefono.text = Telcasa[num]
                    num = num+1
                }else {
                    Dtelefonoofic.text = Telcasa[num]
                    num = num+1
                }
            }while num < Telcasa.count
        }
        //telefono movil
        if Telcelular.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Dcelular.text = Telcelular[num]
                    break
                }else {
                    num = num+1
                }
            }while num < Telcelular.count
        }
        //Telefono de casa
        if Telefono.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Rtelefono.text = Telefono[num]
                     num = num+1
                }else {
                    if num == 1{
                        R2telefono.text = Telefono[num]
                        num = num+1
                    }else {
                        if num == 2{
                            R3telefono.text = Telefono[num]
                            num = num+1
                        }
                    }
                }
            }while num < Telefono.count
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
            
            Nombre.append(string)
        }
        if element == "Apaterno" {
            
            Apep.append(string)
        }
        if element == "Amaterno" {
            Apem.append(string)
        }
        if element == "Sexo" {
            Sexo = string
        }
        
        if element == "Fechanacdia" {
            print("dia",string)
            dia = string
        }
        if element == "FechasnacMes" {
          print("mes",string)
            mes = string
        }
        if element == "FechanacAnio" {
         print("Anio",string)
            anio = string
        }
        if element == "Rfc" {
            Rfc.text = string
        }
        if element == "Nodependiente" {
            Numdependientes.text = string
        }
        if element == "Calle" {
           calle.append(string)
        }
        if element == "NoInt" {
            print("Num Int:",string)
            //Numint.text = string
            numint.append(string)
        }
        if element == "NoExt" {
            print("Num Ext:",string)
            //Numext.text = string
            Numext.append(string)
        }
        if element == "Colonia" {
            colonia.append(string)
        }
        if element == "Cpdom" {
            cp.append(string)
        }
        if element == "TiempoResidencia" {
            tiempor.append(string)
        }
        if element == "EstatusResidencia" {
            estatusr.append(string)
        }
        if element == "MontoVivienda" {
            monto.append(string)
        }
        if element == "Email" {
            Dcorreo.text = string
        }
        if element == "Telcasa" {
            Telcasa.append(string)
        }
        if element == "Telmovil" {
            Telcelular.append(string)
        }
        if element == "NombreEmpresa" {
            DEmpresa.text = string
        }
        if element == "GiroEmpresa" {
            DGiro.text = string
        }
        if element == "AntiguedadEmpleo" {
            Dantiguedad.text = string
        }
        if element == "Puesto" {
            Dpuesto.text = string
        }
        if element == "Ingresos" {
            Dingreso.text = string
        }
        if element == "AniosCasada" {
            Dcasados.text = string
        }
        if element == "FuenteOtrosIngresos" {
            Dfuenteingresos.text = string
        }
        if element == "OtrosIngresos" {
            Dotrosingresos.text = string
        }
        if element == "TieneParentesco" {
            if string == "SI" {
                Ppolitica2si.isOn = true
                }else {
                Ppolitica2no.isOn = true
            }
        }
        if element == "EsPersonaPolitica" {
            if string == "SI" {
                Ppoliticasi.isOn = true
            }else{
                Ppoliticano.isOn = true
            }
        }
        if element == "TipoParentesco" {
            Pfuncion3.text = string
        }
        if element == "Descfuncion" {
            Pfuncion.text = string
        }
        if element == "Descparentesco" {
            Pfuncion2.text = string
        }
        if element == "TelefonoCasa" {
            Telefono.append(string)
        }
    }

}


