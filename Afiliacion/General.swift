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
    @objc var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    //Formulario General
    @IBOutlet weak var Tgeneral: UILabel!
    @IBOutlet weak var Gnombre: UITextField!
    @IBOutlet weak var G2nombre: UITextField!
    @IBOutlet weak var Gapep: UITextField!
    @IBOutlet weak var Gapem: UITextField!
    @IBOutlet weak var Gtipo: UILabel!
    @IBOutlet weak var Gnumero: UITextField!
    @IBOutlet weak var Hombre: UISwitch!
    @IBOutlet weak var Mujer: UISwitch!
    @objc var dia:[String] = []
    @objc var mes:[String] = []
    @objc var anio:[String] = []
    
    @IBOutlet weak var Gnan: UITextField!
    @IBOutlet weak var Fechanac: UITextField!
    @IBOutlet weak var Rfc: UITextField!
    var rfc:[String] = []
    @IBOutlet weak var Gestado: UITextField!
    @IBOutlet weak var Numdependientes: UITextField!
    var dependientes:[String] = []
    //Domicilio
    
    @IBOutlet weak var Domicilio: UILabel!
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
    var correo:[String]=[]
    @IBOutlet weak var Dtelefono: UITextField!
    @IBOutlet weak var Dcelular: UITextField!
    @IBOutlet weak var Dcompania: UITextField!
    
    //Datos economicos
    
    @IBOutlet weak var Datos: UILabel!
    @IBOutlet weak var DEmpresa: UITextField!
    var Empresa:[String] = []
    @IBOutlet weak var DGiro: UITextField!
    var Giro:[String] = []
    @IBOutlet weak var Dantiguedad: UITextField!
    var Antiguedad:[String] = []
    @IBOutlet weak var Dtipo: UITextField!
    @IBOutlet weak var Dpuesto: UITextField!
    var puesto:[String] = []
    @IBOutlet weak var Dingreso: UITextField!
    var ingreso:[String] = []
    @IBOutlet weak var Dcasados: UITextField!
    var casado:[String] = []
    @IBOutlet weak var Dfuenteingresos: UITextField!
    var fuente:[String] = []
    @IBOutlet weak var Dotrosingresos: UITextField!
    var otros:[String] = []
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
    
    
    @IBOutlet weak var Tpersona: UILabel!
    var persona:[String] = []
    @IBOutlet weak var Ppoliticasi: UISwitch!
    @IBOutlet weak var Ppoliticano: UISwitch!
    @IBOutlet weak var Pfuncion: UITextField!
    var funcion:[String] = []
    var parentesco:[String] = []
    @IBOutlet weak var Ppolitica2si: UISwitch!
    @IBOutlet weak var Ppolitica2no: UISwitch!
    @IBOutlet weak var Pfuncion2: UITextField!
    var funcion2:[String] = []
    @IBOutlet weak var Pfuncion3: UITextField!
    var funcion3:[String] = []
    
    
    //Formulario Referencias
    
    @IBOutlet weak var Treferencias: UILabel!
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
    @IBOutlet weak var Tdocumentos: UILabel!
    @IBOutlet weak var Didentificacionf: UILabel!
    @IBOutlet weak var Didentificaciona: UILabel!
    @IBOutlet weak var Dfirma: UILabel!
    @IBOutlet weak var Dcontrato: UILabel!
    @IBOutlet weak var Dcontratop: UILabel!
    //Imagenes
    @IBOutlet weak var Iidentificacionf: UIImageView!
    var Documentos:[String] = []
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
    var identificacion:[String] = []
    var sexo:[String] = []
    //Variables para parciar
    var parser = XMLParser()
    var element:String = ""
    
    //variables para pasar
    var Solicitud = 0
    var Buzon = ""
    var margeny = 0
    var catalogoA = ""
    
    //fileprivate var lastContentOffset: CGPoint = .zero
    
     var Imageidentif = ""
     var Imageidentia = ""
     var Imagefirm = ""
     var Imagecont = ""
     var Imagecontp = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Etiquetas redondas
        Tgeneral.layer.masksToBounds = true
        Tgeneral.layer.cornerRadius = 10
        Gnombre.layer.cornerRadius = 15
        Gnombre.layer.borderWidth = 1
        Gnombre.isEnabled = false
        G2nombre.layer.cornerRadius = 15
        G2nombre.layer.borderWidth = 1
        G2nombre.isEnabled = false
        Gapep.layer.cornerRadius = 15
        Gapep.layer.borderWidth = 1
        Gapep.isEnabled = false
        Gapem.layer.cornerRadius = 15
        Gapem.layer.borderWidth = 1
        Gapem.isEnabled = false
        Gtipo.layer.masksToBounds = true
        Gtipo.layer.cornerRadius = 15
        Gtipo.layer.borderWidth = 1
        Gtipo.isEnabled = false
        Gnumero.layer.cornerRadius = 15
        Gnumero.layer.borderWidth = 1
        Gnumero.isEnabled = false
        Gnan.layer.cornerRadius = 15
        Gnan.layer.borderWidth = 1
        Gnan.isEnabled = false
        Fechanac.layer.cornerRadius = 15
        Fechanac.layer.borderWidth = 1
        Fechanac.isEnabled = false
        Rfc.layer.cornerRadius = 15
        Rfc.layer.borderWidth = 1
        Rfc.isEnabled = false
        Gestado.layer.cornerRadius = 15
        Gestado.layer.borderWidth = 1
        Gestado.isEnabled = false
        Numdependientes.layer.cornerRadius = 15
        Numdependientes.layer.borderWidth = 1
        Numdependientes.isEnabled = false
        //Domicilio
        Domicilio.layer.masksToBounds = true
        Domicilio.layer.cornerRadius = 10
        Gcalle.layer.cornerRadius = 15
        Gcalle.layer.borderWidth = 1
        Gcalle.isEnabled = false
        Gnumext.layer.cornerRadius = 15
        Gnumext.layer.borderWidth = 1
        Gnumext.isEnabled = false
        Gnumint.layer.cornerRadius = 15
        Gnumint.layer.borderWidth = 1
        Gnumint.isEnabled = false
        Gcolonia.layer.cornerRadius = 15
        Gcolonia.layer.borderWidth = 1
        Gcolonia.isEnabled = false
        Destado.layer.cornerRadius = 15
        Destado.layer.borderWidth = 1
        Destado.isEnabled = false
        Dmun.layer.cornerRadius = 15
        Dmun.layer.borderWidth = 1
        Dmun.isEnabled = false
        Ccp.layer.cornerRadius = 15
        Ccp.layer.borderWidth = 1
        Ccp.isEnabled = false
        Gtiemporesidencia.layer.cornerRadius = 15
        Gtiemporesidencia.layer.borderWidth = 1
        Gtiemporesidencia.isEnabled = false
        Gestatusresidencia.layer.cornerRadius = 15
        Gestatusresidencia.layer.borderWidth = 1
        Gestatusresidencia.isEnabled = false
        Gmontovivienda.layer.cornerRadius = 15
        Gmontovivienda.layer.borderWidth = 1
        Gmontovivienda.isEnabled = false
        Dcorreo.layer.cornerRadius = 15
        Dcorreo.layer.borderWidth = 1
        Dcorreo.isEnabled = false
        Dtelefono.layer.cornerRadius = 15
        Dtelefono.layer.borderWidth = 1
        Dtelefono.isEnabled = false
        Dcelular.layer.cornerRadius = 15
        Dcelular.layer.borderWidth = 1
        Dcelular.isEnabled = false
        Dcompania.layer.cornerRadius = 15
        Dcompania.layer.borderWidth = 1
        Dcompania.isEnabled = false
        
        //Datos economicos
        Datos.layer.masksToBounds = true
        Datos.layer.cornerRadius = 10
        DEmpresa.layer.cornerRadius = 15
        DEmpresa.layer.borderWidth = 1
        DEmpresa.isEnabled = false
        DGiro.layer.cornerRadius = 15
        DGiro.layer.borderWidth = 1
        DGiro.isEnabled = false
        Dantiguedad.layer.cornerRadius = 15
        Dantiguedad.layer.borderWidth = 1
        Dantiguedad.isEnabled = false
        Dtipo.layer.cornerRadius = 15
        Dtipo.layer.borderWidth = 1
        Dtipo.isEnabled = false
        Dpuesto.layer.cornerRadius = 15
        Dpuesto.layer.borderWidth = 1
        Dpuesto.isEnabled = false
        Dingreso.layer.cornerRadius = 15
        Dingreso.layer.borderWidth = 1
        Dingreso.isEnabled = false
        Dcasados.layer.cornerRadius = 15
        Dcasados.layer.borderWidth = 1
        Dcasados.isEnabled = false
        Dfuenteingresos.layer.cornerRadius = 15
        Dfuenteingresos.layer.borderWidth = 1
        Dfuenteingresos.isEnabled = false
        Dotrosingresos.layer.cornerRadius = 15
        Dotrosingresos.layer.borderWidth = 1
        Dotrosingresos.isEnabled = false
        Dcalle.layer.cornerRadius = 15
        Dcalle.layer.borderWidth = 1
        Dcalle.isEnabled = false
        Dnumext.layer.cornerRadius = 15
        Dnumext.layer.borderWidth = 1
        Dnumext.isEnabled = false
        Dnumint.layer.cornerRadius = 15
        Dnumint.layer.borderWidth = 1
        Dnumint.isEnabled = false
        DColonia.layer.cornerRadius = 15
        DColonia.layer.borderWidth = 1
        DColonia.isEnabled = false
        Daestado.layer.cornerRadius = 15
        Daestado.layer.borderWidth = 1
        Daestado.isEnabled = false
        Damun.layer.cornerRadius = 15
        Damun.layer.borderWidth = 1
        Damun.isEnabled = false
        Dcp.layer.cornerRadius = 15
        Dcp.layer.borderWidth = 1
        Dcp.isEnabled = false
        Dtelefonoofic.layer.cornerRadius = 15
        Dtelefonoofic.layer.borderWidth = 1
        Dtelefonoofic.isEnabled = false
        Dextencion.layer.cornerRadius = 15
        Dextencion.layer.borderWidth = 1
        Dextencion.isEnabled = false
        
        //Persona politica
        Tpersona.layer.masksToBounds = true
        Tpersona.layer.cornerRadius = 10
        Pfuncion.layer.cornerRadius = 15
        Pfuncion.layer.borderWidth = 1
        Pfuncion.isEnabled = false
        Pfuncion2.layer.cornerRadius = 15
        Pfuncion2.layer.borderWidth = 1
        Pfuncion2.isEnabled = false
        Pfuncion3.layer.cornerRadius = 15
        Pfuncion3.layer.borderWidth = 1
        Pfuncion3.isEnabled = false
        
        //Referencias
        Treferencias.layer.masksToBounds = true
        Treferencias.layer.cornerRadius = 10
        Rnombre.layer.cornerRadius = 15
        Rnombre.layer.borderWidth = 1
        Rnombre.isEnabled = false
        Rapep.layer.cornerRadius = 15
        Rapep.layer.borderWidth = 1
        Rapep.isEnabled = false
        Rapem.layer.cornerRadius = 15
        Rapem.layer.borderWidth = 1
        Rapem.isEnabled = false
        Rnan.layer.masksToBounds = true
        Rnan.layer.cornerRadius = 10
        Rnan.layer.borderWidth = 1
        Rtelefono.layer.cornerRadius = 15
        Rtelefono.layer.borderWidth = 1
        Rtelefono.isEnabled = false
        
        R2nombre.layer.cornerRadius = 15
        R2nombre.layer.borderWidth = 1
        R2nombre.isEnabled = false
        R2apep.layer.cornerRadius = 15
        R2apep.layer.borderWidth = 1
        R2apep.isEnabled = false
        R2apem.layer.cornerRadius = 15
        R2apem.layer.borderWidth = 1
        R2apem.isEnabled = false
        R2nan.layer.masksToBounds = true
        R2nan.layer.cornerRadius = 10
        R2nan.layer.borderWidth = 1
        R2telefono.layer.cornerRadius = 15
        R2telefono.layer.borderWidth = 1
        R2telefono.isEnabled = false
        
        R3nombre.layer.cornerRadius = 15
        R3nombre.layer.borderWidth = 1
        R3nombre.isEnabled = false
        R3apep.layer.cornerRadius = 15
        R3apep.layer.borderWidth = 1
        R3apep.isEnabled = false
        R3apem.layer.cornerRadius = 15
        R3apem.layer.borderWidth = 1
        R3apem.isEnabled = false
        R3nan.layer.masksToBounds = true
        R3nan.layer.cornerRadius = 10
        R3nan.layer.borderWidth = 1
        R3telefono.layer.cornerRadius = 15
        R3telefono.layer.borderWidth = 1
        R3telefono.isEnabled = false 
        
        Tdocumentos.layer.masksToBounds = true
        Tdocumentos.layer.cornerRadius = 10
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
        Hombre.isEnabled = false
        Mujer.isEnabled = false 
        CargarImagen()
    }
    
    @objc func CargarImagen() {
        //print("valor de Imagen en base 64",self.Imageidentif)
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
    @objc func frente()
    {
        print("Identificacion frente")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Identificacion frente"
            vista.Iimagen = Imageidentif
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    @objc func atras(){
        print("Identificacion atras")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Identificacion atras"
            vista.Iimagen = Imageidentia
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    @objc func firma(){
        print("firma")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "firma"
            vista.Iimagen = Imagefirm
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    @objc func cont() {
        print("Contrato parte 1")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Contrato parte 1"
            vista.Iimagen = Imagecont
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    @objc func contp() {
        print("Contrato parte 2")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Contrato parte 2"
            vista.Iimagen = Imagecontp
            self.navigationController?.pushViewController(vista, animated: false)
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
    
    @objc func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(General.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
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
    @objc func actionOnFinishedScrolling() {
       
        // do what you need
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
        UIView.animate(withDuration: 1.0, animations: {
            toastLabel.alpha = 0.0
        })
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
    
    @objc func verBuzona(){
        
        var num = 0
        print("***************XML Buzon Activo A*******************")
        repeat {
            // print(num)
            if buzonA[num].id_solicitud == Int32(Solicitud){
                print(buzonA[num].solicitud_xml!)
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
    
    @objc func verBuzonb(){
        
        var num = 0
        print("***************XML Buzon Activo B*******************")
        repeat {
            if buzonB[num].id_solicitud_b == Int32(Solicitud){
              //print(buzonB[num].solicitud_xml_b!)
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
    
    @objc func verDatos(){
        
        var num = 0
        if Nombre.count != 0 {
            //Nombre
            repeat {
                if num == 0 {
                    //print("Nombre",Nombre[num],num)
                    Gnombre.text = Nombre[num]
                  num = num + 2
                }else {
                    if num == 2 {
                        //print("Nombre",Nombre[num],num)
                        Rnombre.text = Nombre[num]
                        num = num + 2
                    }else {
                        if num == 4 {
                           // print("Nombre",Nombre[num],num)
                            R2nombre.text = Nombre[num]
                            num = num + 2
                        }else {
                            if num == 6{
                                //print("Nombre",Nombre[num],num)
                                R3nombre.text = Nombre[num]
                                num = num + 2
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
                    num = num + 2
                }else {
                    if num == 2 {
                        //print("Apellido Paterno:",Apep[num])
                        Rapep.text = Apep[num]
                        num = num + 2
                    }else {
                        if num == 4 {
                            //print("Apellido Paterno:",Apep[num])
                            R2apep.text = Apep[num]
                            num = num + 2
                        }else {
                            if num == 6{
                                //print("Apellido Paterno:",Apep[num])
                                R3apep.text = Apep[num]
                                num = num + 2
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
                    num = num + 2
                }else {
                    if num == 2 {
                        //print("Apellido Materno:",Apem[num])
                        Rapem.text = Apem[num]
                        num = num + 2
                    }else {
                        if num == 4 {
                            //print("Apellido Materno:",Apem[num])
                            R2apem.text = Apem[num]
                            num = num + 2
                        }else {
                            if num == 6{
                                //print("Apellido Materno:",Apem[num])
                                R3apem.text = Apem[num]
                                num = num + 2
                            }
                        }
                    }
                }
            }while num < Apem.count

        }
        //identificacion
        if identificacion.count != 0 {
            num = 0
            repeat{
                if num == 0 {
                    //print(identificacion[num])
                    Gnumero.text = identificacion[num]
                    num = num+2
                }
            }while num < identificacion.count
        }
        //Sexo
        //Sexo
        if sexo.count != 0 {
            num = 0
            repeat {
                if num == 0 {
                    print("Sexo:",sexo[num],num)
                    
                    if sexo[num] == "MASCULINO" {
                     Hombre.isOn = true
                     }else {
                     Mujer.isOn = true
                     }
                    
                    num = num+2
                }
            }while num < sexo.count
        }
        
    
       
        //fecha
        var fecha = ""
        let valor = Int(mes[0])
        var meses:[String] = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"]
        fecha = dia[0] + " de " + meses[valor!-1] + " de " + anio[0]
        Fechanac.text = fecha
        Rfc.text = rfc[0]
        Numdependientes.text = dependientes[0]
        
        //calle
        if calle.count != 0 {
            num = 0
            repeat{
                if num == 0{
                     //print("calle",calle[num])
                     Gcalle.text = calle[num]
                     num = num+2
                }
                if num == 2 {
                    Dcalle.text = calle[num]
                    num = num+2
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
                    num = num+2
                }
                if num == 2 {
                    Dnumext.text = Numext[num]
                    num = num+2
                }
            }while num < Numext.count
        }
        
        //Num int
        if numint.count != 0 {
            num = 0
            repeat{
                if num == 0 {
                    print("Num Int",numint[num],"Id",num)
                    Gnumint.text = numint[num]
                    num = num+2
                }else{
                    print("Num Int",numint[num],"Id",num)
                    Dnumint.text = numint[num]
                    num = num+2
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
                     num = num+2
                }
                if num == 2 {
                    DColonia.text = colonia[num]
                    num = num+2
                }
            }while num < colonia.count
        }
        
        //Nacionalidad
        if Nacionalidad.count != 0 {
            num = 0
            repeat {
                if num == 0 {
                    Nacionalidad(registro: Nacionalidad[num], indice: num)
                    num = num + 2
                }else {
                    if num == 2 {
                         Nacionalidad(registro: Nacionalidad[num], indice: num)
                        num = num + 2
                    }else {
                        if num == 4 {
                            Nacionalidad(registro: Nacionalidad[num], indice: num)
                            num = num + 2
                        }else {
                            if num == 6 {
                               Nacionalidad(registro: Nacionalidad[num], indice: num)
                               num = num + 2
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
                    num = num+2
                }
                if num == 2{
                    Estado(registro: Estado[num], indice: num)
                    num = num+2
                }
            }while num < Estado.count
        }
        //Delegacion o Municipio
        if Mun.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Municipio(registro: Mun[num], indice: num)
                    num = num+2
                }
                if num == 2{
                    Municipio(registro: Mun[num], indice: num)
                    num = num+2
                }
            }while num < Mun.count
        }
        //CP
        if cp.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Ccp.text = cp[num]
                    num = num+2
                }
                if num == 2{
                    Dcp.text = cp[num]
                    num = num+2
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
        Dcorreo.text = correo[0]
        
       //Telefono de casa
        if Telcasa.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Dtelefono.text = Telcasa[num]
                    num = num+2
                }
                if num == 2{
                    Dtelefonoofic.text = Telcasa[num]
                    num = num+2
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
        DEmpresa.text = Empresa[0]
        DGiro.text = Giro[0]
        Dantiguedad.text = Antiguedad[0]
        Dpuesto.text = puesto[0]
        Dingreso.text = ingreso[0]
        Dcasados.text = casado[0]
        Dfuenteingresos.text = fuente[0]
        Dotrosingresos.text = otros[0]
        
        //Telefono de casa
        if Telefono.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Rtelefono.text = Telefono[num]
                     num = num+3
                }else {
                    if num == 3{
                        R2telefono.text = Telefono[num]
                        num = num+3
                    }else {
                        if num == 6{
                            R3telefono.text = Telefono[num]
                            num = num+3
                        }
                    }
                }
            }while num < Telefono.count
        }
        //Titulo de Documentacion
        if Documentos.count != 0 {
            num = 0
            repeat {
                if num == 0 {
                     Didentificacionf.text = Documentos[num]
                     num = num+2
                }else {
                    if num == 2 {
                        Didentificaciona.text = Documentos[num]
                        num = num+2
                    }else {
                        if num == 4 {
                            Dfirma.text = Documentos[num]
                             num = num+2
                        }else {
                            if num == 6 {
                                Dcontrato.text = Documentos[num]
                                num = num+2
                            }else {
                                if num == 8 {
                                    Dcontratop.text = Documentos[num]
                                    num = num+2
                                }
                            }
                        }
                    }
                }
            }while num < Documentos.count 
        }
        //Tiene parentesco
        Ppoliticano.isEnabled = false
        Ppoliticasi.isEnabled = false
        Ppolitica2no.isEnabled = false
        Ppolitica2si.isEnabled = false
        
        if parentesco[0] == "SI" {
            Ppolitica2si.isOn = true
            Ppolitica2no.isOn = false
            Pfuncion2.alpha = 1
            Pfuncion3.alpha = 1
            Pfuncion3.text = funcion3[0]
            Pfuncion2.text = funcion2[0]
        }else {
            Pfuncion2.alpha = 0
            Pfuncion3.alpha = 0
            Ppolitica2no.isOn = true
            Ppolitica2si.isOn = false
        }
        //Es persona politica
        if persona[0] == "SI" {
            Ppoliticasi.isOn = true
            Pfuncion.alpha = 1
            Pfuncion.text = funcion[0]
            Ppoliticano.isOn = false
        }else{
            Pfuncion.alpha = 0
            Ppoliticano.isOn = true
            Ppoliticasi.isOn = false
        }
    }
    
    @objc func residencia(registro:String) {
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
    
    @objc func Nacionalidad(registro:String,indice:Int) {
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
            if indice == 2 {
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
                if indice == 4 {
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
                    if indice == 6 {
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
    
    @objc func Estado(registro:String,indice:Int){
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
    
    @objc func Municipio(registro:String,indice:Int) {
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
    
    @objc func beginParsing(xml:String)
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
            Apem.append(string)
        }
        
        if element == "Tpoidentif" {
            var num = 0
            //print("Tipo de identificacion",string)
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
            //print("Numero de identificacion",string)
            identificacion.append(string)
        }
        
        if element == "Sexo" {
            //print("sex",string)
            sexo.append(string)
        }
        if element == "Nacionalidad" {
           //print("nacionalidad",string)
           Nacionalidad.append(string)
        }
        
        if element == "Fechanacdia" {
            //print("dia",string)
            dia.append(string)
        }
        
        if element == "FechasnacMes" {
           //print("mes",string)
            mes.append(string)
        }
        if element == "FechanacAnio" {
           //print("Anio",string)
           anio.append(string)
        }
        if element == "Rfc" {
            //print("Rfc",string)
            rfc.append(string)
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
            dependientes.append(string)
        }
        if element == "Calle" {
           //print("Calle",string)
           calle.append(string)
        }
        if element == "NoInt" {
           print("Num Int:",string)
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
            tiempor.append(string)
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
            correo.append(string)
        }
        if element == "Telcasa" {
            //print("Telcasa:",string)
            Telcasa.append(string)
        }
        if element == "Telmovil" {
            //print("Telmovil")
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
            Empresa.append(string)
        }
        if element == "GiroEmpresa" {
            Giro.append(string)
        }
        if element == "AntiguedadEmpleo" {
            Antiguedad.append(string)
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
            puesto.append(string)
        }
        if element == "Ingresos" {
            ingreso.append(string)
        }
        if element == "AniosCasada" {
            casado.append(string)
        }
        if element == "FuenteOtrosIngresos" {
            fuente.append(string)
        }
        if element == "OtrosIngresos" {
            otros.append(string)
        }
        if element == "TieneParentesco" {
            //print("Tieneparentesco",string)
            parentesco.append(string)
           
        }
        if element == "EsPersonaPolitica" {
            persona.append(string)
            
        }
        if element == "TipoParentesco" {
            print("Tipoparentesco",string)
            funcion3.append(string)
            
        }
        if element == "Descfuncion" {
            funcion.append(string)
            
        }
        if element == "Descparentesco" {
            funcion2.append(string)
           
        }
        if element == "TelefonoCasa" {
            //print("Telefono de casa",string)
            Telefono.append(string)
        }
        if element == "IdentificacionFrentePath" {
            //print("identificacion",string)
            Documentos.append(string)
           
       }
        if element == "IdentificacionAtrasPath" {
            Documentos.append(string)
            
        }
        if element == "FirmaPath" {
            Documentos.append(string)
            
        }
        if element == "Contrato1Path" {
            Documentos.append(string)
            
        }
        if element == "Contrato2Path" {
            Documentos.append(string)
            
        }
        
    }
    //listas desplegables
    @IBAction func Identificacion(_ sender: UIButton) {
      
    }
    
}
