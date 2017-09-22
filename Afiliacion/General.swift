//
//  General.swift
//  Afiliacion
//
//  Created by stefanini on 08/09/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import CoreData
protocol Miscambios : class {
    func cambio()
}
class General: UIViewController,XMLParserDelegate,UIScrollViewDelegate{
    
     //Scroll
    @IBOutlet weak var Scroll: UIScrollView!
    //Botones
    
    //Objetos CoreData
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    //Formulario General
    @IBOutlet weak var Gnombre: UITextField!
    @IBOutlet weak var G2nombre: UITextField!
    @IBOutlet weak var Gapep: UITextField!
    @IBOutlet weak var Gapem: UITextField!
    
    @IBOutlet weak var Gtipo: UILabel!
    @IBOutlet weak var Gnumero: UITextField!
    var Sexo = ""
    @IBOutlet weak var Hombre: UISwitch!
    @IBOutlet weak var Mujer: UISwitch!
    var dia = ""
    var mes = ""
    var anio = ""
    
    @IBOutlet weak var Gnan: UITextField!
    @IBOutlet weak var Fechanac: UITextField!
    @IBOutlet weak var Rfc: UITextField!
    
    @IBOutlet weak var Gestado: UITextField!
    @IBOutlet weak var Numdependientes: UITextField!
    //Domicilio
    @IBOutlet weak var Gcalle: UITextField!
    @IBOutlet weak var Gnumext: UITextField!
    @IBOutlet weak var Gnumint: UITextField!
    @IBOutlet weak var Gcolonia: UITextField!
    @IBOutlet weak var Destado: UILabel!
    @IBOutlet weak var Dmun: UILabel!
    @IBOutlet weak var Ccp: UITextField!
    @IBOutlet weak var Gtiemporesidencia: UITextField!
    @IBOutlet weak var Gestatusresidencia: UITextField!
    @IBOutlet weak var Gmontovivienda: UITextField!
    @IBOutlet weak var Dcorreo: UITextField!
    @IBOutlet weak var Dtelefono: UITextField!
    @IBOutlet weak var Dcelular: UITextField!
    @IBOutlet weak var Dcompania: UITextField!
    
    //Datos economicos
    @IBOutlet weak var DEmpresa: UITextField!
    @IBOutlet weak var DGiro: UITextField!
    @IBOutlet weak var Dantiguedad: UITextField!
    @IBOutlet weak var Dtipo: UITextField!
    @IBOutlet weak var Dpuesto: UITextField!
    @IBOutlet weak var Dingreso: UITextField!
    @IBOutlet weak var Dcasados: UITextField!
    @IBOutlet weak var Dfuenteingresos: UITextField!
    @IBOutlet weak var Dotrosingresos: UITextField!
    @IBOutlet weak var Dcalle: UITextField!
    @IBOutlet weak var Dnumext: UITextField!
    @IBOutlet weak var Dnumint: UITextField!
    @IBOutlet weak var DColonia: UITextField!
    @IBOutlet weak var Daestado: UILabel!
    @IBOutlet weak var Damun: UILabel!
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
    @IBOutlet weak var Rnan: UILabel!
    @IBOutlet weak var R2nombre: UITextField!
    @IBOutlet weak var R2apep: UITextField!
    @IBOutlet weak var R2apem: UITextField!
    @IBOutlet weak var R2nan: UILabel!
    @IBOutlet weak var R3nombre: UITextField!
    @IBOutlet weak var R3apep: UITextField!
    @IBOutlet weak var R3apem: UITextField!
    @IBOutlet weak var R3nan: UILabel!
    @IBOutlet weak var Rtelefono: UITextField!
    @IBOutlet weak var R2telefono: UITextField!
    @IBOutlet weak var R3telefono: UITextField!
    
    //Documentos
    @IBOutlet weak var Didentificacionf: UILabel!
    @IBOutlet weak var Didentificaciona: UILabel!
    @IBOutlet weak var Dfirma: UILabel!
    @IBOutlet weak var Dcontrato: UILabel!
    @IBOutlet weak var Dcontratop: UILabel!
    //Imagenes
    @IBOutlet weak var Iidentificacionf: UIImageView!
    @IBOutlet weak var Iidentificaciona: UIImageView!
    @IBOutlet weak var Ifirma: UIImageView!
    @IBOutlet weak var IContrato: UIImageView!
    @IBOutlet weak var Icontratop: UIImageView!
    
    //Arreglos de la base de datos
    var buzonA:[Rbuzon] = []
    var buzonB:[BUZON_A] = []
    
    var cataloA:[CATALOGO_A] = []
    var cataloB:[Rcatalogo] = []
    
    //Valores de Xml
    var Nombre:[String] = []
    var Apep:[String] = []
    var Apem:[String] = []
    var calle:[String] = []
    var Numext:[String] = []
    var numint:[String] = []
    var colonia:[String] = []
    var Estado:[String] = []
    var Mun:[String] = []
    var cp:[String] = []
    var tiempor:[String] = []
    var estatusr:[String] = []
    var monto:[String] = []
    var Telcasa:[String] = []
    var Telcelular:[String] = []
    var Telefono:[String] = []
    var Nacionalidad:[String] = []
    
    //Variables para parciar
    var parser = XMLParser()
    var element:String = ""
    
    //variables para pasar
    var Solicitud = 0
    var Buzon = ""
    var margeny = 0
    var catalogoA = ""
    
   fileprivate var lastContentOffset: CGPoint = .zero
  
    weak var responder : Miscambios?
    
    var Imageidentif = ""
    var Imageidentia = ""
    var Imagefirm = ""
    var Imagecont = ""
    var Imagecontp = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Delegado
       
        self.Scroll.delegate = self
        print("Buzon Activo en General!!!!",Buzon)
        print("Catalogo activo en general!!!!",catalogoA)
        fetchData3()
        fetchData4()
        fetchData5()
        fetchData6()
        
        if Buzon == "A" {
            verBuzona()
        }else{
            verBuzonb()
        }
        print("valor de margen",self.margeny)
        DispatchQueue.main.async
            {
              self.Scroll.contentOffset.y = CGFloat(self.margeny)
            }
         self.hideKeyboardWhenTappedAround()
        //Accion en imagenes
        
        //Identificacion frente
        let Identf = UITapGestureRecognizer(target: self, action: #selector(General.frente))
        Iidentificacionf.addGestureRecognizer(Identf)
        Iidentificacionf.isUserInteractionEnabled = true
        
        
        //Identificacion atras
        let Identa = UITapGestureRecognizer(target: self, action: #selector(General.atras))
        Iidentificaciona.addGestureRecognizer(Identa)
        Iidentificaciona.isUserInteractionEnabled = true
        Iidentificaciona.image = UIImage(named: Imageidentia)
        
        //firma
        let firm = UITapGestureRecognizer(target: self, action: #selector(General.firma))
        Ifirma.addGestureRecognizer(firm)
        Ifirma.isUserInteractionEnabled = true
        Ifirma.image = UIImage(named: Imagefirm)
        
        //Contrato pt1
        let cont = UITapGestureRecognizer(target: self, action: #selector(General.cont))
        IContrato.addGestureRecognizer(cont)
        IContrato.isUserInteractionEnabled = true
        IContrato.image = UIImage(named: Imagecont)
        
        //Contrato pt2
        let cont2 = UITapGestureRecognizer(target: self, action: #selector(General.contp))
        Icontratop.addGestureRecognizer(cont2)
        Icontratop.isUserInteractionEnabled = true
        Icontratop.image = UIImage(named: Imagecontp)
        CargarImagen()
    }
    
    func CargarImagen() {
        //identificacion frente
        let identf : Data = Data(base64Encoded: Imageidentif, options: .ignoreUnknownCharacters)!
        let decodedimagef = UIImage(data: identf)
        Iidentificacionf.image = decodedimagef
        
        //identificacion atras
        let identa : Data = Data(base64Encoded: Imageidentia, options: .ignoreUnknownCharacters)!
        let decodedimagea = UIImage(data: identa)
        Iidentificaciona.image = decodedimagea
        
        //firma
        let fir : Data = Data(base64Encoded: Imagefirm, options: .ignoreUnknownCharacters)!
        let decodedimagefir = UIImage(data: fir)
        Ifirma.image = decodedimagefir
        
        //contrato
        let cont : Data = Data(base64Encoded: Imagecont, options: .ignoreUnknownCharacters)!
        let decodedimagecont = UIImage(data: cont)
        IContrato.image = decodedimagecont
        
        //contrato parte 2
        let contp : Data = Data(base64Encoded: Imagecontp, options: .ignoreUnknownCharacters)!
        let decodedimagecontp = UIImage(data: contp)
        Icontratop.image = decodedimagecontp
    }
    
   //funciones para los botones
    func frente()
    {
        print("Identificacion frente")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Identificacion frente"
            vista.Iimagen = Imageidentif
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    func atras(){
        print("Identificacion atras")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Identificacion atras"
            vista.Iimagen = Imageidentia
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    func firma(){
        print("firma")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "firma"
            vista.Iimagen = Imagefirm
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    func cont() {
        print("Contrato parte 1")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Contrato parte 1"
            vista.Iimagen = Imagecont
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    func contp() {
        print("Contrato parte 2")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Contrato parte 2"
            vista.Iimagen = Imagecontp
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    func fetchData5() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            cataloA = try context.fetch(CATALOGO_A.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    func fetchData6() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            cataloB = try context.fetch(Rcatalogo.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(General.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
     
        perform(#selector(self.actionOnFinishedScrolling), with: nil, afterDelay: Double(velocity.x))
        
        print("Posicion Y: ",scrollView.contentOffset.y)
        
       
        if scrollView.contentOffset.y < 200 {
             print("General")
           
            if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "Solicitud_Detalle") as? Solicitudes {
                sol.Id = String(Solicitud)
                sol.BuzonActivo =  Buzon
                sol.identificador = 1
                sol.margen = Int(scrollView.contentOffset.y)
                self.navigationController?.pushViewController(sol, animated: false)
            }
            
        }
        if scrollView.contentOffset.y > 200 && scrollView.contentOffset.y < 692{
          // Vistadata(valor: 2)
            print("domicilio")
           
            if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "Solicitud_Detalle") as? Solicitudes {
                sol.Id = String(Solicitud)
                sol.BuzonActivo =  Buzon
                sol.identificador = 2
                sol.margen = Int(scrollView.contentOffset.y)
                self.navigationController?.pushViewController(sol, animated: false)
            }
           
                   }
        if scrollView.contentOffset.y > 692 && scrollView.contentOffset.y < 1349{
        //Vistadata(valor: 3)
            print("Datos Economicos")
            
            if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "Solicitud_Detalle") as? Solicitudes {
                sol.Id = String(Solicitud)
                sol.BuzonActivo =  Buzon
                sol.identificador = 3
                sol.margen = Int(scrollView.contentOffset.y)
                self.navigationController?.pushViewController(sol, animated: false)
            }
            
        }
        
        if scrollView.contentOffset.y > 1349 && scrollView.contentOffset.y < 1758{
        //Vistadata(valor: 4)
            print("Persona Politica")
            
            if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "Solicitud_Detalle") as? Solicitudes {
                sol.Id = String(Solicitud)
                sol.BuzonActivo =  Buzon
                sol.identificador = 4
                sol.margen = Int(scrollView.contentOffset.y)
                self.navigationController?.pushViewController(sol, animated: false)
            }
            
        }
        if  scrollView.contentOffset.y > 1758 && scrollView.contentOffset.y < 2393{
        //Vistadata(valor: 5)
            print("Referencias Familiares")
            
            if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "Solicitud_Detalle") as? Solicitudes {
                sol.Id = String(Solicitud)
                sol.BuzonActivo =  Buzon
                sol.identificador = 5
                sol.margen = Int(scrollView.contentOffset.y)
                self.navigationController?.pushViewController(sol, animated: false)
            }
        }
        if  scrollView.contentOffset.y > 2393 {
            //Vistadata(valor: 5)
            print("Documentos")
            
            if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "Solicitud_Detalle") as? Solicitudes {
                sol.Id = String(Solicitud)
                sol.BuzonActivo =  Buzon
                sol.identificador = 6
                sol.margen = Int(scrollView.contentOffset.y)
                self.navigationController?.pushViewController(sol, animated: false)
            }
        }
        
    }
    func actionOnFinishedScrolling() {
       
        // do what you need
    }
  
    func ToastExample(message:String){
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
        UIView.animate(withDuration: 1.0, animations: {
            toastLabel.alpha = 0.0
        })
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
        print("***************XML Buzon Activo A*******************")
        repeat {
            // print(num)
            if buzonA[num].id_solicitud == Int32(Solicitud){
                //print(buzonA[num].solicitud_xml!)
                beginParsing(xml: buzonA[num].solicitud_xml!)
                self.Imageidentif = buzonA[num].doc_if!
                self.Imageidentia = buzonA[num].doc_ia!
                self.Imagefirm = buzonA[num].fi!
                self.Imagecont = buzonA[num].doc_c1!
                self.Imagecontp = buzonA[num].doc_c2!
                
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
        print("***************XML Buzon Activo B*******************")
        repeat {
            if buzonB[num].id_solicitud_b == Int32(Solicitud){
                //print(buzonA[num].solicitud_xml!)
                beginParsing(xml: buzonB[num].solicitud_xml_b!)
                self.Imageidentif = buzonB[num].doc_if!
                self.Imageidentia = buzonB[num].doc_ia!
                self.Imagefirm = buzonB[num].fi!
                self.Imagecont = buzonB[num].doc_c1!
                self.Imagecontp = buzonB[num].doc_c2!
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
                    //print("Nombre",Nombre[num],num)
                    Gnombre.text = Nombre[num]
                    num = num + 1
                }else {
                    if num == 1 {
                        //print("Nombre",Nombre[num],num)
                        Rnombre.text = Nombre[num]
                        num = num + 1
                    }else {
                        if num == 2 {
                            //print("Nombre",Nombre[num],num)
                            R2nombre.text = Nombre[num]
                            num = num + 1
                        }else {
                            if num == 3{
                                //print("Nombre",Nombre[num],num)
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
                    //print("Apellido Paterno:",Apep[num])
                    Gapep.text = Apep[num]
                    num = num + 1
                }else {
                    if num == 1 {
                        //print("Apellido Paterno:",Apep[num])
                        Rapep.text = Apep[num]
                        num = num + 1
                    }else {
                        if num == 2 {
                            //print("Apellido Paterno:",Apep[num])
                            R2apep.text = Apep[num]
                            num = num + 1
                        }else {
                            if num == 3{
                                //print("Apellido Paterno:",Apep[num])
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
                    //print("Apellido Materno:",Apem[num])
                    Gapem.text = Apem[num]
                    num = num + 1
                }else {
                    if num == 1 {
                        //print("Apellido Materno:",Apem[num])
                        Rapem.text = Apem[num]
                        num = num + 1
                    }else {
                        if num == 2 {
                            //print("Apellido Materno:",Apem[num])
                            R2apem.text = Apem[num]
                            num = num + 1
                        }else {
                            if num == 3{
                                //print("Apellido Materno:",Apem[num])
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
        fecha = dia + " de " + meses[valor!-1] + " de " + anio
        Fechanac.text = fecha
       
        //calle
        if calle.count != 0 {
            num = 0
            repeat{
                if num == 0{
                     //print("calle",calle[num])
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
                    //print("Num Ext:", Numext[num])
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
                    //print("Num Int",numint[num])
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
                     //print("Colonia",colonia[num])
                     Gcolonia.text = colonia[num]
                     num = num+1
                }else {
                    DColonia.text = colonia[num]
                    num = num+1
                }
            }while num < colonia.count
        }
        ///Aquie voy a realizar pruebas
        //Nacionalidad
        if Nacionalidad.count != 0 {
            num = 0
            repeat {
                if num == 0 {
                    Nacionalidad(registro: Nacionalidad[num], indice: num)
                    num = num + 1
                }else {
                    if num == 1 {
                         Nacionalidad(registro: Nacionalidad[num], indice: num)
                        num = num + 1
                    }else {
                        if num == 2 {
                            Nacionalidad(registro: Nacionalidad[num], indice: num)
                            num = num + 1
                        }else {
                            if num == 3{
                               Nacionalidad(registro: Nacionalidad[num], indice: num)
                               num = num + 1
                            }
                        }
                    }
                }
            }while num < Nacionalidad.count
        }
        //Estado
        if Estado.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Estado(registro: Estado[num], indice: num)
                    num = num+1
                }else {
                    Estado(registro: Estado[num], indice: num)
                    num = num+1
                }
            }while num < Estado.count
        }
        //Delegacion o Municipio
        if Mun.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Municipio(registro: Mun[num], indice: num)
                    num = num+1
                }else {
                    Municipio(registro: Mun[num], indice: num)
                    num = num+1
                }
            }while num < Mun.count
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
                    residencia(registro: estatusr[num])
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
                   //print("Monto de vivienda",monto[num])
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
    
    func residencia(registro:String) {
      var num = 0
        if catalogoA == "A" {
            repeat {
                if cataloA[num].id_catalogo == Int32(registro){
                    Gestatusresidencia.text = cataloA[num].descripcion
                    break
                }else {
                    num = num+1
                }
            }while num < cataloA.count
            
        }else {
            repeat {
                if cataloB[num].id_catalogo == Int32(registro){
                    Gestatusresidencia.text = cataloB[num].descripcion
                    break
                }else {
                    num = num+1
                }
            }while num < cataloB.count
            
        }
    }
    
    func Nacionalidad(registro:String,indice:Int) {
        var num = 0
        if indice == 0 {
            /*************************General***********************/
            if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(registro){
                        Gnan.text = cataloA[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(registro){
                        Gnan.text = cataloB[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloB.count
                
            }
          /*****************************************************/
        }else {
            if indice == 1 {
                /*************************Referencia 1***********************/
                if catalogoA == "A" {
                    repeat {
                        if cataloA[num].id_catalogo == Int32(registro){
                            Rnan.text = cataloA[num].descripcion
                            break
                        }else {
                            num = num+1
                        }
                    }while num < cataloA.count
                    
                }else {
                    repeat {
                        if cataloB[num].id_catalogo == Int32(registro){
                            Rnan.text = cataloB[num].descripcion
                            break
                        }else {
                            num = num+1
                        }
                    }while num < cataloB.count
                    
                }
                /*****************************************************/
            }else {
                if indice == 2 {
                    /*************************Referencia 2***********************/
                    if catalogoA == "A" {
                        repeat {
                            if cataloA[num].id_catalogo == Int32(registro){
                                R2nan.text = cataloA[num].descripcion
                                break
                            }else {
                                num = num+1
                            }
                        }while num < cataloA.count
                        
                    }else {
                        repeat {
                            if cataloB[num].id_catalogo == Int32(registro){
                                R2nan.text = cataloB[num].descripcion
                                break
                            }else {
                                num = num+1
                            }
                        }while num < cataloB.count
                        
                    }
                    /*****************************************************/
                }else {
                    if indice == 3 {
                        /*************************Referencia 3***********************/
                        if catalogoA == "A" {
                            repeat {
                                if cataloA[num].id_catalogo == Int32(registro){
                                    R3nan.text = cataloA[num].descripcion
                                    break
                                }else {
                                    num = num+1
                                }
                            }while num < cataloA.count
                            
                        }else {
                            repeat {
                                if cataloB[num].id_catalogo == Int32(registro){
                                    R3nan.text = cataloB[num].descripcion
                                    break
                                }else {
                                    num = num+1
                                }
                            }while num < cataloB.count
                            
                        }
                        /*****************************************************/
                    }
                }
            }
        }
    }
    
    func Estado(registro:String,indice:Int){
     var num = 0
        if indice == 0 {
           if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(registro){
                        Destado.text = cataloA[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(registro){
                        Destado.text = cataloB[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloB.count
                
            }
        }else {
            if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(registro){
                        Daestado.text = cataloA[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(registro){
                        Daestado.text = cataloB[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloB.count
                
            }
        }
    }
    
    func Municipio(registro:String,indice:Int) {
        var num = 0
        if indice == 0 {
            if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(registro){
                        Dmun.text = cataloA[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(registro){
                        Dmun.text = cataloB[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloB.count
                
            }
        }else {
            if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(registro){
                        Damun.text = cataloA[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(registro){
                        Damun.text = cataloB[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloB.count
                
            }
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
        
        if element == "Tpoidentif" {
            var num = 0
            if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(string){
                        Gtipo.text = cataloA[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(string){
                        Gtipo.text = cataloB[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloB.count
                
            }
        }
        
        if element == "Noidenficacion" {
            Gnumero.text = string
        }
        
        if element == "Sexo" {
            Sexo = string
        }
        if element == "Nacionalidad" {
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
            Rfc.text = string
        }
        if element == "Edocivil" {
            var num = 0
            if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(string){
                        Gestado.text = cataloA[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(string){
                        Gestado.text = cataloB[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloB.count
                
            }
        }
        if element == "Nodependiente" {
            Numdependientes.text = string
        }
        if element == "Calle" {
           calle.append(string)
        }
        if element == "NoInt" {
            //print("Num Int:",string)
            //Numint.text = string
            numint.append(string)
        }
        if element == "NoExt" {
            //print("Num Ext:",string)
            //Numext.text = string
            Numext.append(string)
        }
        if element == "Colonia" {
            colonia.append(string)
        }
        
        if element == "Estado" {
            Estado.append(string)
        }
        
        if element == "Delegacion" {
            Mun.append(string)
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
        if element == "CompaniaMovil" {
            var num = 0
            if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(string){
                        Dcompania.text = cataloA[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(string){
                        Dcompania.text = cataloB[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloB.count
                
            }
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
        if element == "TipoContrato" {
            var num = 0
            if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(string){
                        Dtipo.text = cataloA[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(string){
                        Dtipo.text = cataloB[num].descripcion
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloB.count
                
            }
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
        if element == "IdentificacionFrentePath" {
            Didentificacionf.text = string
        }
        if element == "IdentificacionAtrasPath" {
            Didentificaciona.text = string
        }
        if element == "FirmaPath" {
            Dfirma.text = string
        }
        if element == "Contrato1Path" {
            Dcontrato.text = string
        }
        if element == "Contrato2Path" {
            Dcontratop.text = string
        }
            
    }
    //listas desplegables
    @IBAction func Identificacion(_ sender: UIButton) {
        print("Hola mundo")
        responder?.cambio()
    }
    
}
