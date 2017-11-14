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
class General: UIViewController,XMLParserDelegate,UIScrollViewDelegate,UIPickerViewDelegate,UITextFieldDelegate{
    
     //Scroll
    @IBOutlet weak var Scroll: UIScrollView!
    //Variable que Verifica si ya se guardo una vez
    var guardar = 0
    var validador = 0
    //Array de campos faltantes
    var Arraycamp:[String] = []
    //Objetos CoreData
    @objc var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    //Formulario General
    @IBOutlet weak var Tgeneral: UILabel!
    @IBOutlet weak var Gnombre: UITextField!
    @IBOutlet weak var G2nombre: UITextField!
    @IBOutlet weak var Gapep: UITextField!
    @IBOutlet weak var Gapem: UITextField!
    @IBOutlet weak var Gtipo: UILabel!
    var Gridtipo = ""
    @IBOutlet weak var Gptipo: UIPickerView!
    @IBOutlet weak var Btidentificacion: UIButton!
    @IBOutlet weak var Gnumero: UITextField!
    @IBOutlet weak var Hombre: UISwitch!
    @IBOutlet weak var Mujer: UISwitch!
    var sexo = ""
    @objc var dia:[String] = []
    @objc var mes:[String] = []
    @objc var anio:[String] = []
    
    @IBOutlet weak var Gnan: UILabel!
    @IBOutlet weak var Gpnacionalidad: UIPickerView!
    @IBOutlet weak var Btnacionalidad: UIButton!
    var Gridnacionalidad = ""
   
    @IBOutlet weak var Rfc: UITextField!
 
    @IBOutlet weak var Fechanac: UILabel!
    @IBOutlet weak var Btfechanac: UIButton!
   
    @IBOutlet weak var Gpfecha: UIDatePicker!
    
    @IBOutlet weak var Gestado: UILabel!
    @IBOutlet weak var Gpestcivil: UIPickerView!
    @IBOutlet weak var Btestadocivil: UIButton!
    @IBOutlet weak var Btestado: UIButton!
    var Gridestcivil = ""
    
    @IBOutlet weak var Btnumdependientes: UIButton!
    @IBOutlet weak var Numdependientes: UILabel!
    @IBOutlet weak var Gpnumero: UIPickerView!
  
    //Domicilio
    
    @IBOutlet weak var Domicilio: UILabel!
    @IBOutlet weak var Gcalle: UITextField!
    @IBOutlet weak var Gnumext: UITextField!
    @IBOutlet weak var Gnumint: UITextField!
    @IBOutlet weak var Gcolonia: UITextField!
    @IBOutlet weak var Destado: UILabel!
    @IBOutlet weak var Dpestado: UIPickerView!
    var Dridestado = ""
    @IBOutlet weak var Btestado2: UIButton!
    @IBOutlet weak var Dmun: UILabel!
    @IBOutlet weak var Btmun: UIButton!
    @IBOutlet weak var Dpdel: UIPickerView!
    var Driddel = ""
    @IBOutlet weak var Ccp: UITextField!
    @IBOutlet weak var Gtiemporesidencia: UITextField!
   
    @IBOutlet weak var Gestatusresidencia: UILabel!
    @IBOutlet weak var Btestatusresidencia: UIButton!
    @IBOutlet weak var Dpestatus: UIPickerView!
    var Dridestatus = ""
    
    @IBOutlet weak var Gmontovivienda: UITextField!
    @IBOutlet weak var Dcorreo: UITextField!
 
    @IBOutlet weak var Dtelefono: UITextField!
    @IBOutlet weak var Dcelular: UITextField!
    
    @IBOutlet weak var Dcompania: UILabel!
    @IBOutlet weak var Btcompania: UIButton!
    @IBOutlet weak var Dpcompania: UIPickerView!
    var Dridcompania = ""
    //Datos economicos
    
    @IBOutlet weak var Datos: UILabel!
    @IBOutlet weak var DEmpresa: UITextField!
   
    @IBOutlet weak var DGiro: UITextField!

    @IBOutlet weak var Dantiguedad: UITextField!

    
    @IBOutlet weak var Dtipo: UILabel!
    @IBOutlet weak var Bttipo: UIButton!
    @IBOutlet weak var Dptipo: UIPickerView!
    var Dridtipo = ""
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
    @IBOutlet weak var Btaestado: UIButton!
    @IBOutlet weak var Dpestado2: UIPickerView!
    var Dridestado2 = ""
    @IBOutlet weak var Damun: UILabel!
    @IBOutlet weak var Btamun: UIButton!
    @IBOutlet weak var Dpdel2: UIPickerView!
    var Driddel2 = ""
    
    @IBOutlet weak var Dcp: UITextField!
    @IBOutlet weak var Dtelefonoofic: UITextField!
    @IBOutlet weak var Dextencion: UITextField!
    
    //Persona politica
    
    
    @IBOutlet weak var Tpersona: UILabel!
    var EsPersonaPolitica = "NO"
    @IBOutlet weak var Ppoliticasi: UISwitch!
    @IBOutlet weak var Ppoliticano: UISwitch!
    @IBOutlet weak var Pfuncion: UITextField!
    var Descfuncion = ""
    var TieneParentesco = "NO"
    @IBOutlet weak var Ppolitica2si: UISwitch!
    @IBOutlet weak var Ppolitica2no: UISwitch!
    @IBOutlet weak var Pfuncion2: UITextField!
    var  Descparentesco = ""
    @IBOutlet weak var Pfuncion3: UITextField!
    var TipoParentesco = ""
    
    
    //Formulario Referencias
    
    @IBOutlet weak var Treferencias: UILabel!
    @IBOutlet weak var Rnombre: UITextField!
    @IBOutlet weak var Rapep: UITextField!
    @IBOutlet weak var Rapem: UITextField!
    @IBOutlet weak var Rnan: UILabel!
    @IBOutlet weak var Btrnan: UIButton!
    @IBOutlet weak var Rpnacionalidad: UIPickerView!
    var Rridnacionalidad = ""
    
    @IBOutlet weak var R2nombre: UITextField!
    @IBOutlet weak var R2apep: UITextField!
    @IBOutlet weak var R2apem: UITextField!
    @IBOutlet weak var R2nan: UILabel!
    @IBOutlet weak var Btr2nan: UIButton!
    @IBOutlet weak var R2pnacionalidad: UIPickerView!
    var Rridnacionalidad2 = ""
    
    @IBOutlet weak var R3nombre: UITextField!
    @IBOutlet weak var R3apep: UITextField!
    @IBOutlet weak var R3apem: UITextField!
    @IBOutlet weak var R3nan: UILabel!
    @IBOutlet weak var Btr3nan: UIButton!
    @IBOutlet weak var Rtelefono: UITextField!
    @IBOutlet weak var R2telefono: UITextField!
    @IBOutlet weak var R3telefono: UITextField!
    @IBOutlet weak var R3pnacionalidad: UIPickerView!
    var Rridnacionalidad3 = ""
    //Documentos
    @IBOutlet weak var Tdocumentos: UILabel!
    @IBOutlet weak var Didentificacionf: UILabel!
     var IdentificacionFrentePath = ""
    @IBOutlet weak var Didentificaciona: UILabel!
    var IdentificacionAtrasPath = ""
    @IBOutlet weak var Dfirma: UILabel!
    var FirmaPath = ""
    @IBOutlet weak var Dcontrato: UILabel!
     var Contrato1Path = ""
    @IBOutlet weak var Dcontratop: UILabel!
    var Contrato2Path = ""
    @IBOutlet weak var Dextra1: UILabel!
    var Extra1 = "Extra1"
    @IBOutlet weak var Dextra2: UILabel!
    var Extra2 = "Extra2"
    @IBOutlet weak var Dextra3: UILabel!
    var Extra3 = "Extra3"
    @IBOutlet weak var Dextra4: UILabel!
    var Extra4 = "Extra4"
    @IBOutlet weak var Dextra5: UILabel!
    var Extra5 = "Extra5"
    
    //Imagenes
    @IBOutlet weak var Iidentificacionf: UIImageView!
    var Imageidentif = ""
    @IBOutlet weak var Iidentificaciona: UIImageView!
    var Imageidentia = ""
    @IBOutlet weak var Ifirma: UIImageView!
     var Imagefirm = ""
    @IBOutlet weak var IContrato: UIImageView!
    var Imagecont = ""
    @IBOutlet weak var Icontratop: UIImageView!
    var Imagecontp = ""
    @IBOutlet weak var Iextra1: UIImageView!
    var Imageextra1 = ""
    @IBOutlet weak var Iextra2: UIImageView!
    var Imageextra2 = ""
    @IBOutlet weak var Iextra3: UIImageView!
    var Imageextra3 = ""
    @IBOutlet weak var Iextra4: UIImageView!
    var Imageextra4 = ""
    @IBOutlet weak var Iextra5: UIImageView!
    var Imageextra5 = ""
    //base 64 de imagenes
    
    
   
    
    
    //Arreglos de la base de datos
   
    var buzonA:[Rbuzon] = []
    var buzonB:[BUZON_A] = []
    var cataloA:[CATALOGO_A] = []
    var cataloB:[Rcatalogo] = []
     @objc var userArray:[USUARIO] = []
    
    //Datos de promotor
    var Idusuario = 0
    @objc var usuario = ""
    @objc var pass = ""
    @objc var comp = ""
    
    //Valores de Xml
    var Nombre:[String] = []
    var Apep:[String] = []
    var Apem:[String] = []
    var calle:[String] = []
    var Numext:[String] = []
    var numint:[String] = []
    var colonia:[String] = []
    var Estado2:[String] = []
    var Mun:[String] = []
    var cp:[String] = []
    var tiempor:[String] = []
    var estatusr:[String] = []
    var monto:[String] = []
    var Telcasa:[String] = []
    var Telcelular:[String] = []
    var Telefono:[String] = []
    var Nacionalidad2:[String] = []
    var identificacion:[String] = []
   
    //Arreglo de Spinner
    @objc var Tipo = [Dictionary<String,String>]()
    @objc var Nacionalidad = [Dictionary<String,String>]()
    @objc var Estadocivil = [Dictionary<String,String>]()
    @objc var Estado = [Dictionary<String,String>]()
    @objc var Delegacion = [Dictionary<String,String>]()
    @objc var Compania = [Dictionary<String,String>]()
    @objc var Arraystatus = [Dictionary<String,String>]()
    @objc var contrato = [Dictionary<String,String>]()
    let dependientes = ["1","2","4","5","6","7","8","9","10"]
    
    //Variables para parciar
    var parser = XMLParser()
    var element:String = ""
    
    //variables para pasar
    var Solicitud = 0
    var Buzon = ""
    var margeny = 0
    var catalogoA = ""
    
    //fileprivate var lastContentOffset: CGPoint = .zero
   
    
    
    //Estatus de la solicitud
     var Estatus = 6
    //lineas Scroll
    let labelg = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 10))
    let labeld = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 10))
    let labelde = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 10))
    let labelpp = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 10))
    let labelrf = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 10))
    //Etiqueta blanca
    let blanca = UILabel(frame: CGRect(x: 0, y: 0, width: 1000, height: 20))
    //Etiquetas Scroll
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
    let label2 = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
    let label3 = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
    let label4 = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
    let label5 = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
    let label6 = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
    //Identificador Camara o firma
    var Identificador = 0
    var imagen = ""
    var imagent = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        FechaDato()
        //Delegates cajas de texto
        //Generales
        Gnombre.delegate = self
        G2nombre.delegate = self
        Gapep.delegate = self
        Gapem.delegate = self
        Gnumero.delegate = self
        //Domicilio
        Gcalle.delegate = self
        Gnumext.delegate = self
        Gnumint.delegate = self
        Gcolonia.delegate = self
        Dcp.delegate = self
        Gtiemporesidencia.delegate = self
        Gmontovivienda.delegate = self
        
        Dtelefono.delegate = self
        
        Dcelular.delegate = self
        //Datos economicos
        DEmpresa.delegate = self
        DGiro.delegate = self
        Dantiguedad.delegate = self
        Dpuesto.delegate = self
        Dingreso.delegate = self
        Dcasados.delegate = self
        Dfuenteingresos.delegate = self
        Dotrosingresos.delegate = self
        Dcalle.delegate = self
        Dnumext.delegate = self
        Dnumint.delegate = self
        DColonia.delegate = self
        Dcp.delegate = self
        Dtelefonoofic.delegate = self
        Dextencion.delegate = self
        //Persona politica
        Pfuncion.delegate = self
        Pfuncion2.delegate = self
        Pfuncion3.delegate = self
        //Referencias
        Rnombre.delegate = self
        Rapep.delegate = self
        Rapem.delegate = self
        Rtelefono.delegate = self
        
        R2nombre.delegate = self
        R2apep.delegate = self
        R2apem.delegate = self
        R2telefono.delegate = self
        
        R3nombre.delegate = self
        R3apep.delegate = self
        R3apem.delegate = self
        R3telefono.delegate = self
        //ETIQUETAS SCROLL
        //etiqueta blanca
        blanca.center = CGPoint(x: 0, y: 0)
        blanca.backgroundColor = UIColor.white
        self.view.addSubview(blanca)
        //Linea General
        labelg.center = CGPoint(x: 60, y: -40)
        labelg.backgroundColor = UIColor.darkGray
        self.view.addSubview(labelg)
        //Linea Documentos
        labeld.center = CGPoint(x: 120, y: -40)
        labeld.backgroundColor = UIColor.darkGray
        self.view.addSubview(labeld)
        //Linea Datos economicos
        labelde.center = CGPoint(x: 180, y: -40)
        labelde.backgroundColor = UIColor.darkGray
        self.view.addSubview(labelde)
        //Linea Persona politica
        labelpp.center = CGPoint(x: 240, y: -40)
        labelpp.backgroundColor = UIColor.darkGray
        self.view.addSubview(labelpp)
        //Linea Referencias familiares
        labelrf.center = CGPoint(x: 300, y: -40)
        labelrf.backgroundColor = UIColor.darkGray
        self.view.addSubview(labelrf)
        //GENERAL
        label.center = CGPoint(x: 30, y: -40)
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.blue
        label.text = "G"
        self.view.addSubview(label)
        //Documetos
        label2.center = CGPoint(x: 90, y: -40)
        label2.textAlignment = .center
        label2.textColor = UIColor.white
        label2.backgroundColor = UIColor.darkGray
        label2.text = "D"
        self.view.addSubview(label2)
        //Datos economicos
        label3.center = CGPoint(x: 150, y: -40)
        label3.textAlignment = .center
        label3.textColor = UIColor.white
        label3.backgroundColor = UIColor.darkGray
        label3.text = "DE"
        self.view.addSubview(label3)
        
        //Persona politica
        label4.center = CGPoint(x: 210, y: -40)
        label4.textAlignment = .center
        label4.textColor = UIColor.white
        label4.backgroundColor = UIColor.darkGray
        label4.text = "PP"
        self.view.addSubview(label4)
        
        //Referencias familiares
        label5.center = CGPoint(x: 270, y: -40)
        label5.textAlignment = .center
        label5.textColor = UIColor.white
        label5.backgroundColor = UIColor.darkGray
        label5.text = "RF"
        self.view.addSubview(label5)
        //Documetos
        
        label6.center = CGPoint(x: 330, y: -40)
        label6.textAlignment = .center
        label6.textColor = UIColor.white
        label6.backgroundColor = UIColor.darkGray
        label6.text = "DOC"
        self.view.addSubview(label6)
        
        //Etiquetas redondas
        Tgeneral.layer.masksToBounds = true
        Tgeneral.layer.cornerRadius = 10
        Gnombre.layer.cornerRadius = 15
        Gnombre.layer.borderWidth = 1
        
        G2nombre.layer.cornerRadius = 15
        G2nombre.layer.borderWidth = 1
        
        Gapep.layer.cornerRadius = 15
        Gapep.layer.borderWidth = 1
       
        Gapem.layer.cornerRadius = 15
        Gapem.layer.borderWidth = 1
      
        Btidentificacion.layer.masksToBounds = true
        Btidentificacion.layer.cornerRadius = 15
        Btidentificacion.layer.borderWidth = 1
       
        Gnumero.layer.cornerRadius = 15
        Gnumero.layer.borderWidth = 1
       
        Btnacionalidad.layer.cornerRadius = 15
        Btnacionalidad.layer.borderWidth = 1
        
        Btfechanac.layer.cornerRadius = 15
        Btfechanac.layer.borderWidth = 1
        Gpfecha.backgroundColor = UIColor(red:0.11, green:0.74, blue:0.92, alpha:1.0)
        
        Rfc.layer.cornerRadius = 15
        Rfc.layer.borderWidth = 1
       
        Btestadocivil.layer.cornerRadius = 15
        Btestadocivil.layer.borderWidth = 1
        
        Btnumdependientes.layer.cornerRadius = 15
        Btnumdependientes.layer.borderWidth = 1
       
        //Domicilio
        Domicilio.layer.masksToBounds = true
        Domicilio.layer.cornerRadius = 10
        Gcalle.layer.cornerRadius = 15
        Gcalle.layer.borderWidth = 1
       
        Gnumext.layer.cornerRadius = 15
        Gnumext.layer.borderWidth = 1
       
        Gnumint.layer.cornerRadius = 15
        Gnumint.layer.borderWidth = 1
        
        Gcolonia.layer.cornerRadius = 15
        Gcolonia.layer.borderWidth = 1
        
        Btestado.layer.cornerRadius = 15
        Btestado.layer.borderWidth = 1
       
        Btmun.layer.cornerRadius = 15
        Btmun.layer.borderWidth = 1
       
        Ccp.layer.cornerRadius = 15
        Ccp.layer.borderWidth = 1
       
        Gtiemporesidencia.layer.cornerRadius = 15
        Gtiemporesidencia.layer.borderWidth = 1
       
        Btestatusresidencia.layer.cornerRadius = 15
        Btestatusresidencia.layer.borderWidth = 1
      
        Gmontovivienda.layer.cornerRadius = 15
        Gmontovivienda.layer.borderWidth = 1
       
        Dcorreo.layer.cornerRadius = 15
        Dcorreo.layer.borderWidth = 1
      
        Dtelefono.layer.cornerRadius = 15
        Dtelefono.layer.borderWidth = 1
        
        Dcelular.layer.cornerRadius = 15
        Dcelular.layer.borderWidth = 1
      
        Btcompania.layer.cornerRadius = 15
        Btcompania.layer.borderWidth = 1
       
        
        //Datos economicos
        Datos.layer.masksToBounds = true
        Datos.layer.cornerRadius = 10
        DEmpresa.layer.cornerRadius = 15
        DEmpresa.layer.borderWidth = 1
       
        DGiro.layer.cornerRadius = 15
        DGiro.layer.borderWidth = 1
       
        Dantiguedad.layer.cornerRadius = 15
        Dantiguedad.layer.borderWidth = 1
       
        Bttipo.layer.cornerRadius = 15
        Bttipo.layer.borderWidth = 1
       
        Dpuesto.layer.cornerRadius = 15
        Dpuesto.layer.borderWidth = 1
       
        Dingreso.layer.cornerRadius = 15
        Dingreso.layer.borderWidth = 1
        
        Dcasados.layer.cornerRadius = 15
        Dcasados.layer.borderWidth = 1
       
        Dfuenteingresos.layer.cornerRadius = 15
        Dfuenteingresos.layer.borderWidth = 1
       
        Dotrosingresos.layer.cornerRadius = 15
        Dotrosingresos.layer.borderWidth = 1
     
        Dcalle.layer.cornerRadius = 15
        Dcalle.layer.borderWidth = 1
      
        Dnumext.layer.cornerRadius = 15
        Dnumext.layer.borderWidth = 1
        
        Dnumint.layer.cornerRadius = 15
        Dnumint.layer.borderWidth = 1
       
        DColonia.layer.cornerRadius = 15
        DColonia.layer.borderWidth = 1
        
        Btaestado.layer.cornerRadius = 15
        Btaestado.layer.borderWidth = 1
       
        Btamun.layer.cornerRadius = 15
        Btamun.layer.borderWidth = 1
       
        Dcp.layer.cornerRadius = 15
        Dcp.layer.borderWidth = 1
        
        Dtelefonoofic.layer.cornerRadius = 15
        Dtelefonoofic.layer.borderWidth = 1
       
        Dextencion.layer.cornerRadius = 15
        Dextencion.layer.borderWidth = 1
       
        
        //Persona politica
        Tpersona.layer.masksToBounds = true
        Tpersona.layer.cornerRadius = 10
        Pfuncion.layer.cornerRadius = 15
        Pfuncion.layer.borderWidth = 1
       
        Pfuncion2.layer.cornerRadius = 15
        Pfuncion2.layer.borderWidth = 1
       
        Pfuncion3.layer.cornerRadius = 15
        Pfuncion3.layer.borderWidth = 1
        
        
        //Referencias
        Treferencias.layer.masksToBounds = true
        Treferencias.layer.cornerRadius = 10
        Rnombre.layer.cornerRadius = 15
        Rnombre.layer.borderWidth = 1
        
        Rapep.layer.cornerRadius = 15
        Rapep.layer.borderWidth = 1
       
        Rapem.layer.cornerRadius = 15
        Rapem.layer.borderWidth = 1
       
        Btrnan.layer.masksToBounds = true
        Btrnan.layer.cornerRadius = 10
        Btrnan.layer.borderWidth = 1
        
        Rtelefono.layer.cornerRadius = 15
        Rtelefono.layer.borderWidth = 1
      
        
        R2nombre.layer.cornerRadius = 15
        R2nombre.layer.borderWidth = 1
       
        R2apep.layer.cornerRadius = 15
        R2apep.layer.borderWidth = 1
        
        R2apem.layer.cornerRadius = 15
        R2apem.layer.borderWidth = 1
        
        Btr2nan.layer.masksToBounds = true
        Btr2nan.layer.cornerRadius = 10
        Btr2nan.layer.borderWidth = 1
        R2telefono.layer.cornerRadius = 15
        R2telefono.layer.borderWidth = 1
       
        
        R3nombre.layer.cornerRadius = 15
        R3nombre.layer.borderWidth = 1
       
        R3apep.layer.cornerRadius = 15
        R3apep.layer.borderWidth = 1
       
        R3apem.layer.cornerRadius = 15
        R3apem.layer.borderWidth = 1
       
        Btr3nan.layer.masksToBounds = true
        Btr3nan.layer.cornerRadius = 10
        Btr3nan.layer.borderWidth = 1
        R3telefono.layer.cornerRadius = 15
        R3telefono.layer.borderWidth = 1
       
        
        Tdocumentos.layer.masksToBounds = true
        Tdocumentos.layer.cornerRadius = 10
        self.Scroll.delegate = self
        print("Buzon Activo en General!!!!",Buzon)
        print("Catalogo activo en general!!!!",catalogoA)
        fetchData()
        fetchData3()
        fetchData4()
        fetchData5()
        fetchData6()
        
        
        
        if Buzon == "A" {
            verBuzona()
        }else{
            verBuzonb()
        }
        
        if Identificador == 1 {
            Imagefirm = imagen
            FirmaPath = imagent
            Dfirma.text = imagent
        }
        
       if Estatus == 0 || Estatus == 6 || Estatus == 3{
        //Generales
        Gnombre.isEnabled = true
        G2nombre.isEnabled = true
        Gapep.isEnabled = true
        Gapem.isEnabled = true
        Gtipo.isEnabled = true
        Btidentificacion.isEnabled = true
        Gnumero.isEnabled = true
        Hombre.isEnabled = true
        Mujer.isEnabled = true
        Gnan.isEnabled = true
        Btnacionalidad.isEnabled = true
        Fechanac.isEnabled = true
        Btfechanac.isEnabled = true
        Rfc.isEnabled = true
        Gestado.isEnabled = true
        Btestadocivil.isEnabled = true
        Btestado.isEnabled = true
        Numdependientes.isEnabled = true
        //Domicilio
        Gcalle.isEnabled = true
        Gnumext.isEnabled = true
        Gnumint.isEnabled = true
        Gcolonia.isEnabled = true
        Destado.isEnabled = true
        Btestado2.isEnabled = true
        Dmun.isEnabled = true
        Btmun.isEnabled = true
        Ccp.isEnabled = true
        Gtiemporesidencia.isEnabled = true
        Gestatusresidencia.isEnabled = true
        Btestatusresidencia.isEnabled = true
        Gmontovivienda.isEnabled = true
        Dcorreo.isEnabled = true
        Dtelefono.isEnabled = true
        Dcelular.isEnabled = true
        Dcompania.isEnabled = true
        Btcompania.isEnabled = true
        //Datos economicos
        DEmpresa.isEnabled = true
        DGiro.isEnabled = true
        Dantiguedad.isEnabled = true
        Dtipo.isEnabled = true
        Bttipo.isEnabled = true
        Dpuesto.isEnabled = true
        Dingreso.isEnabled = true
        Dcasados.isEnabled = true
        Dfuenteingresos.isEnabled = true
        Dotrosingresos.isEnabled = true
        Dcalle.isEnabled = true
        Dnumext.isEnabled = true
        Dnumint.isEnabled = true
        DColonia.isEnabled = true
        Daestado.isEnabled = true
        Btaestado.isEnabled = true
        Damun.isEnabled = true
        Btamun.isEnabled = true
        Dcp.isEnabled = true
        Dtelefonoofic.isEnabled = true
        Dextencion.isEnabled = true
        //Persona politica
        Pfuncion.isEnabled = true
        Pfuncion2.isEnabled = true
        Pfuncion3.isEnabled = true
        //Tiene parentesco
        Ppoliticano.isEnabled = true
        Ppoliticasi.isEnabled = true
        Ppolitica2no.isEnabled = true
        Ppolitica2si.isEnabled = true
        //Referencias
        Rnombre.isEnabled = true
        Rapep.isEnabled = true
        Rapem.isEnabled = true
        Btrnan.isEnabled = true
        Rtelefono.isEnabled = true
        
        
        R2nombre.isEnabled = true
        R2apep.isEnabled = true
        R2apem.isEnabled = true
        Btr2nan.isEnabled = true
        R2telefono.isEnabled = true
        
        R3nombre.isEnabled = true
        R3apep.isEnabled = true
        R3apem.isEnabled = true
        Btr3nan.isEnabled = true
        R3telefono.isEnabled = true
        
        //Accion en Imagenes
        //Identificacion frente
        let Identf = UITapGestureRecognizer(target: self, action: #selector(General.frente2))
        Iidentificacionf.addGestureRecognizer(Identf)
        Iidentificacionf.isUserInteractionEnabled = true
        
        
        //Identificacion atras
        let Identa = UITapGestureRecognizer(target: self, action: #selector(General.atras2))
        Iidentificaciona.addGestureRecognizer(Identa)
        Iidentificaciona.isUserInteractionEnabled = true
        
        
        //firma
        let firm = UITapGestureRecognizer(target: self, action: #selector(General.firma2))
        Ifirma.addGestureRecognizer(firm)
        Ifirma.isUserInteractionEnabled = true
      
        
        //Contrato pt1
        let cont = UITapGestureRecognizer(target: self, action: #selector(General.cont2))
        IContrato.addGestureRecognizer(cont)
        IContrato.isUserInteractionEnabled = true
        
        
        //Contrato pt2
        let cont2 = UITapGestureRecognizer(target: self, action: #selector(General.contp2))
        Icontratop.addGestureRecognizer(cont2)
        Icontratop.isUserInteractionEnabled = true
        
        //Extra1
        let Ext1 = UITapGestureRecognizer(target: self, action: #selector(General.extra1b))
        Iextra1.addGestureRecognizer(Ext1)
        Iextra1.isUserInteractionEnabled = true
        
        //Extra2
        let Ext2 = UITapGestureRecognizer(target: self, action: #selector(General.extra2b))
        Iextra2.addGestureRecognizer(Ext2)
        Iextra2.isUserInteractionEnabled = true
        
        //Extra3
        let Ext3 = UITapGestureRecognizer(target: self, action: #selector(General.extra3b))
        Iextra3.addGestureRecognizer(Ext3)
        Iextra3.isUserInteractionEnabled = true
        
        //Extra4
        let Ext4 = UITapGestureRecognizer(target: self, action: #selector(General.extra4b))
        Iextra4.addGestureRecognizer(Ext4)
        Iextra4.isUserInteractionEnabled = true
        
        //Extra5
        let Ext5 = UITapGestureRecognizer(target: self, action: #selector(General.extra5b))
        Iextra5.addGestureRecognizer(Ext5)
        Iextra5.isUserInteractionEnabled = true
        
        //Boton de guardar
                let button = UIButton(frame: CGRect(x: 270, y: 0, width: 80, height: 20))
                button.backgroundColor = UIColor.darkGray
                button.setTitle("Guardar", for: .normal)
                button.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
                self.view.addSubview(button)
                //Catalogo activo
                print("Catalogo activo:",catalogoA)
                if catalogoA == "A" {
                    CatalogoA()
                }else {
                    CatalogoB()
                }
                Delegados()
        }else {
        
        //Generales
        Gnombre.isEnabled = false
        G2nombre.isEnabled = false
        Gapep.isEnabled = false
        Gapem.isEnabled = false
        Gtipo.isEnabled = false
        Btidentificacion.isEnabled = false
        Gnumero.isEnabled = false
        Hombre.isEnabled = false
        Mujer.isEnabled = false
        Gnan.isEnabled = false
        Btnacionalidad.isEnabled = false
        Fechanac.isEnabled = false
        Btfechanac.isEnabled = false
        Rfc.isEnabled = false
        Gestado.isEnabled = false
        Btestadocivil.isEnabled = false
        Btestado.isEnabled = false
        Numdependientes.isEnabled = false
        //Domicilio
        Gcalle.isEnabled = false
        Gnumext.isEnabled = false
        Gnumint.isEnabled = false
        Gcolonia.isEnabled = false
        Destado.isEnabled = false
        Btestado2.isEnabled = false
        Dmun.isEnabled = false
        Btmun.isEnabled = false
        Ccp.isEnabled = false
        Gtiemporesidencia.isEnabled = false
        Gestatusresidencia.isEnabled = false
        Btestatusresidencia.isEnabled = false
        Gmontovivienda.isEnabled = false
        Dcorreo.isEnabled = false
        Dtelefono.isEnabled = false
        Dcelular.isEnabled = false
        Dcompania.isEnabled = false
        Btcompania.isEnabled = false
        //Datos economicos
        DEmpresa.isEnabled = false
        DGiro.isEnabled = false
        Dantiguedad.isEnabled = false
        Dtipo.isEnabled = false
        Bttipo.isEnabled = false
        Dpuesto.isEnabled = false
        Dingreso.isEnabled = false
        Dcasados.isEnabled = false
        Dfuenteingresos.isEnabled = false
        Dotrosingresos.isEnabled = false
        Dcalle.isEnabled = false
        Dnumext.isEnabled = false
        Dnumint.isEnabled = false
        DColonia.isEnabled = false
        Daestado.isEnabled = false
        Btaestado.isEnabled = false
        Damun.isEnabled = false
        Btamun.isEnabled = false
        Dcp.isEnabled = false
        Dtelefonoofic.isEnabled = false
        Dextencion.isEnabled = false
        //Persona politica
        Pfuncion.isEnabled = false
        Pfuncion2.isEnabled = false
        Pfuncion3.isEnabled = false
        //Tiene parentesco
        Ppoliticano.isEnabled = false
        Ppoliticasi.isEnabled = false
        Ppolitica2no.isEnabled = false
        Ppolitica2si.isEnabled = false
        //Referencias
        Rnombre.isEnabled = false
        Rapep.isEnabled = false
        Rapem.isEnabled = false
        Btrnan.isEnabled = false
        Rtelefono.isEnabled = false
        
        
        R2nombre.isEnabled = false
        R2apep.isEnabled = false
        R2apem.isEnabled = false
        Btr2nan.isEnabled = false
        R2telefono.isEnabled = false
        
        R3nombre.isEnabled = false
        R3apep.isEnabled = false
        R3apem.isEnabled = false
        Btr3nan.isEnabled = false
        R3telefono.isEnabled = false
        
        //Identificacion frente
        let Identf = UITapGestureRecognizer(target: self, action: #selector(General.frente))
        Iidentificacionf.addGestureRecognizer(Identf)
        Iidentificacionf.isUserInteractionEnabled = true
        
        
        //Identificacion atras
        let Identa = UITapGestureRecognizer(target: self, action: #selector(General.atras))
        Iidentificaciona.addGestureRecognizer(Identa)
        Iidentificaciona.isUserInteractionEnabled = true
        //Iidentificaciona.image = UIImage(named: Imageidentia)
        
        //firma
        let firm = UITapGestureRecognizer(target: self, action: #selector(General.firma))
        Ifirma.addGestureRecognizer(firm)
        Ifirma.isUserInteractionEnabled = true
        //Ifirma.image = UIImage(named: Imagefirm)
        
        //Contrato pt1
        let cont = UITapGestureRecognizer(target: self, action: #selector(General.cont))
        IContrato.addGestureRecognizer(cont)
        IContrato.isUserInteractionEnabled = true
        //IContrato.image = UIImage(named: Imagecont)
        
        //Contrato pt2
        let cont2 = UITapGestureRecognizer(target: self, action: #selector(General.contp))
        Icontratop.addGestureRecognizer(cont2)
        Icontratop.isUserInteractionEnabled = true
        //Icontratop.image = UIImage(named: Imagecontp)
        
        //Extra1
        let Ext1 = UITapGestureRecognizer(target: self, action: #selector(General.extra1))
        Iextra1.addGestureRecognizer(Ext1)
        Iextra1.isUserInteractionEnabled = true
        
        //Extra2
        let Ext2 = UITapGestureRecognizer(target: self, action: #selector(General.extra2))
        Iextra2.addGestureRecognizer(Ext2)
        Iextra2.isUserInteractionEnabled = true
        
        //Extra3
        let Ext3 = UITapGestureRecognizer(target: self, action: #selector(General.extra3))
        Iextra3.addGestureRecognizer(Ext3)
        Iextra3.isUserInteractionEnabled = true
        
        //Extra4
        let Ext4 = UITapGestureRecognizer(target: self, action: #selector(General.extra4))
        Iextra4.addGestureRecognizer(Ext4)
        Iextra4.isUserInteractionEnabled = true
        
        //Extra5
        let Ext5 = UITapGestureRecognizer(target: self, action: #selector(General.extra5))
        Iextra5.addGestureRecognizer(Ext5)
        Iextra5.isUserInteractionEnabled = true
        
        }
        
       print("valor de margen",self.margeny)
        DispatchQueue.main.async
            {
              self.Scroll.contentOffset.y = CGFloat(self.margeny)
            }
         self.hideKeyboardWhenTappedAround()
        //Accion en imagenes
        CargarImagen()
    }
    
   
    
    @objc func FechaDato() {
        //Fecha de nacimiento menos de 18 años
        let fecha = Date()
        let fechaa = String(describing: fecha)
        let longitud = fechaa.characters.count
        var letters = fechaa.characters.map { String($0) }
        var num = 0
        
        var anio = ""
        repeat{
            if letters[num] == "-" {
                break
            }else {
                anio = anio + letters[num]
                num = num+1
            }
        }while num < longitud
        
        print("valor de anio:",anio)
        let valor = Int(anio)
        //Control de fecha en Datepicker
        let calendar = Calendar.current
        var minDateComponent = calendar.dateComponents([.day,.month,.year], from: Date())
        minDateComponent.year = valor!-100
        
        let minDate = calendar.date(from: minDateComponent)
        print(" min date : \(String(describing: minDate))")
        
        var maxDateComponent = calendar.dateComponents([.day,.month,.year], from: Date())
        maxDateComponent.year = valor!-18
        
        let maxDate = calendar.date(from: maxDateComponent)
        print("max date : \(String(describing: maxDate))")
        
        Gpfecha.minimumDate = minDate! as Date
        Gpfecha.maximumDate =  maxDate! as Date
    }
  
    @objc func Delegados() {
        //Delgate de picker view
        Gptipo.delegate = self
        Gptipo.dataSource = self as? UIPickerViewDataSource
        Gptipo.layer.borderWidth = 1
        
        Gpnacionalidad.delegate = self
        Gpnacionalidad.dataSource = self as? UIPickerViewDataSource
        Gpnacionalidad.layer.borderWidth = 1
        
        Gpestcivil.delegate = self
        Gpestcivil.dataSource = self as? UIPickerViewDataSource
        Gpestcivil.layer.borderWidth = 1
        
        Gpnumero.delegate = self
        Gpnumero.dataSource = self as? UIPickerViewDataSource
        Gpnumero.layer.borderWidth = 1
       
        Dpestado.delegate = self
        Dpestado.dataSource = self as? UIPickerViewDataSource
        Dpestado.layer.borderWidth = 1
        
        Dpdel.delegate = self
        Dpdel.dataSource = self as? UIPickerViewDataSource
        Dpdel.layer.borderWidth = 1
        
        Dpestatus.delegate = self
        Dpestatus.dataSource = self as? UIPickerViewDataSource
        Dpestatus.layer.borderWidth = 1
        
        Dpcompania.delegate = self
        Dpcompania.dataSource = self as? UIPickerViewDataSource
        Dpcompania.layer.borderWidth = 1
        
        Dptipo.delegate = self
        Dptipo.dataSource = self as? UIPickerViewDataSource
        Dptipo.layer.borderWidth = 1
        
        Dpestado2.delegate = self
        Dpestado2.dataSource = self as? UIPickerViewDataSource
        Dpestado2.layer.borderWidth = 1
        
        Dpdel2.delegate = self
        Dpdel2.dataSource = self as? UIPickerViewDataSource
        Dpdel2.layer.borderWidth = 1
        
        Rpnacionalidad.delegate = self
        Rpnacionalidad.dataSource = self as? UIPickerViewDataSource
        Rpnacionalidad.layer.borderWidth = 1
        
        R2pnacionalidad.delegate = self
        R2pnacionalidad.dataSource = self as? UIPickerViewDataSource
        R2pnacionalidad.layer.borderWidth = 1
        
        R3pnacionalidad.delegate = self
        R3pnacionalidad.dataSource = self as? UIPickerViewDataSource
        R3pnacionalidad.layer.borderWidth = 1
        
    }
    
    //Accion del boton
    @objc func buttonAction(sender: UIButton) {
       print("Funcion Guardar")
       CamposVacios()
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
        
        //Extra1
        let ext1 : Data = Data(base64Encoded: Imageextra1, options: .ignoreUnknownCharacters)!
        let decodedimageext1 = UIImage(data: ext1)
        Iextra1.image = decodedimageext1
        
        //Extra2
        let ext2 : Data = Data(base64Encoded: Imageextra2, options: .ignoreUnknownCharacters)!
        let decodedimageext2 = UIImage(data: ext2)
        Iextra2.image = decodedimageext2
        
        //Extra3
        let ext3 : Data = Data(base64Encoded: Imageextra3, options: .ignoreUnknownCharacters)!
        let decodedimageext3 = UIImage(data: ext3)
        Iextra3.image = decodedimageext3
        
        //Extra4
        let ext4 : Data = Data(base64Encoded: Imageextra4, options: .ignoreUnknownCharacters)!
        let decodedimageext4 = UIImage(data: ext4)
        Iextra4.image = decodedimageext4
        
        //Extra5
        let ext5 : Data = Data(base64Encoded: Imageextra5, options: .ignoreUnknownCharacters)!
        let decodedimageext5 = UIImage(data: ext5)
        Iextra5.image = decodedimageext5
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
    @objc func frente2()
    {
        print("Identificacion frente Camara")
    }
    
    @objc func atras(){
        print("Identificacion atras")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Identificacion atras"
            vista.Iimagen = Imageidentia
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    @objc func atras2(){
        print("Identificacion atras Camara")
        
    }
    
    @objc func firma(){
        print("firma")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "firma"
            vista.Iimagen = Imagefirm
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    @objc func firma2(){
        print("firma Panel")
        CamposVacios()
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Firma2") as? Firma2 {
            vista.Identificador = 1
            vista.Solicitudid = String(Solicitud)
            vista.BuzonActivo = Buzon
            vista.margen = margeny
            vista.Catalogo = catalogoA
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
    @objc func cont2() {
        print("Contrato parte 1 Camara")
       
    }
    
    @objc func contp() {
        print("Contrato parte 2")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Contrato parte 2"
            vista.Iimagen = Imagecontp
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    @objc func contp2() {
        print("Contrato parte 2 Camara")
        
    }
    @objc func extra1()
    {
        print("Extra 1")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Extra1"
            vista.Iimagen = Imageextra1
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    @objc func extra1b()
    {
        print("Extra 1 parte 2 camara")
        
    }
    
    @objc func extra2()
    {
        print("Extra 2")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Extra2"
            vista.Iimagen = Imageextra2
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    @objc func extra2b()
    {
        print("Extra 2 parte 2 camara")
        
    }
    
    @objc func extra3()
    {
        print("Extra 3")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Extra3"
            vista.Iimagen = Imageextra3
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    @objc func extra3b()
    {
        print("Extra 3 parte 2 camara")
        
    }
    
    @objc func extra4()
    {
        print("Extra 4")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Extra4"
            vista.Iimagen = Imageextra4
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    @objc func extra4b()
    {
        print("Extra 4 parte 2 camara")
        
    }
    
    @objc func extra5()
    {
        print("Extra 5")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "Visor") as? Visor {
            vista.texto = "Extra5"
            vista.Iimagen = Imageextra5
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    @objc func extra5b()
    {
        print("Extra 5 parte 2 camara")
        
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
    //Funcion Delegate de  numero de caracteres y eliminar ingreso de caracteres especiales
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //General
        if textField == self.Gnombre {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Gnombre?.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.G2nombre {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = G2nombre.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Gapep {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Gapep.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Gapem {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Gapem.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Gnumero {
            //solo tiene un rango de 20 caracteres
            guard let text = Gnumero.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 20
        }
        
        
        
        
        //******************************************Domicilio*******************************
        if textField == self.Gcalle {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Gcalle.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Gnumext {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 4 caracteres
                guard let text = Gnumext.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Gnumint {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 4 caracteres
                guard let text = Gnumint.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Gcolonia {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Gcolonia.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Dcp {
            //solo tiene un rango de 5 caracteres
            guard let text = Dcp.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 5
        }
        
        if textField == self.Gtiemporesidencia {
            //solo tiene un rango de 2 caracteres
            guard let text = Gtiemporesidencia.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 2
        }
        
        if textField == self.Gmontovivienda {
            if(string == "." ){
                let countdots = (Gmontovivienda.text?.components(separatedBy: ".").count)! - 1
                if countdots > 0 && string == "."
                {
                    return false
                }
            }
            return true
        }
        
        if textField == self.Dtelefono {
            //solo tiene un rango de 14 caracteres
            guard let text = Dtelefono.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 14
        }
        
        if textField == self.Dcelular {
            //solo tiene un rango de 10 caracteres
            guard let text = Dcelular.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 10
        }
        
        //******************************Datos economicos*********************************
        if textField == self.DEmpresa {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = DEmpresa.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.DGiro {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = DGiro.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Dantiguedad {
            //solo tiene un rango de 2 caracteres
            guard let text = Dantiguedad.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 2
        }
        
        if textField == self.Dpuesto {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Dpuesto.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Dingreso {
            //solo tiene un rango de 7 caracteres
            guard let text = Dingreso.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 6
        }
        
        if textField == self.Dcasados {
            //solo tiene un rango de 2 caracteres
            guard let text = Dcasados.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 2
        }
        
        if textField == self.Dfuenteingresos {
            //solo tiene un rango de 2 caracteres
            guard let text = Dfuenteingresos.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 10
        }
        
        if textField == self.Dotrosingresos {
            //solo tiene un rango de 7 caracteres
            guard let text = Dotrosingresos.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 6
        }
        
        if textField == self.Dcalle {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Dcalle.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Dnumext {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Dnumext.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Dnumint {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Dnumint.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.DColonia {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = DColonia.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Dcp {
            //solo tiene un rango de 5 caracteres
            guard let text = Dcp.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 5
        }
        
        if textField == self.Dtelefonoofic {
            //solo tiene un rango de 14 caracteres
            guard let text = Dtelefonoofic.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 14
        }
        
        if textField == self.Dextencion {
            //solo tiene un rango de 3 caracteres
            guard let text = Dextencion.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 3
        }
        //Persona politica
        if textField == self.Pfuncion {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Pfuncion.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Pfuncion2 {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Pfuncion2.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Pfuncion3 {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Pfuncion3.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        //Referencias familiares
        if textField == self.Rnombre {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Rnombre.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Rapep {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Rapep.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Rapem {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Rapem.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Rtelefono {
            //solo tiene un rango de 13 caracteres
            guard let text = Rtelefono.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 13
        }
        
        if textField == self.R2nombre {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = R2nombre.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.R2apep {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = R2apep.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.R2apem {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = R2apem.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.R2telefono {
            //solo tiene un rango de 13 caracteres
            guard let text = R2telefono.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 13
        }
        
        if textField == self.R3nombre {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = R3nombre.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.R3apep {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = R3apep.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.R3apem {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = R3apem.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.R3telefono {
            //solo tiene un rango de 13 caracteres
            guard let text = R3telefono.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 13
        }
        
        return false
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
            //Etiquetas
            label.backgroundColor = UIColor.blue
            label2.backgroundColor = UIColor.darkGray
            label3.backgroundColor = UIColor.darkGray
            label4.backgroundColor = UIColor.darkGray
            label5.backgroundColor = UIColor.darkGray
            label6.backgroundColor = UIColor.darkGray
            //lineas
            labelg.backgroundColor = UIColor.darkGray
            labeld.backgroundColor = UIColor.darkGray
            labelde.backgroundColor = UIColor.darkGray
            labelpp.backgroundColor = UIColor.darkGray
            labelrf.backgroundColor = UIColor.darkGray
        }
        if scrollView.contentOffset.y > 200 && scrollView.contentOffset.y < 692{
          // Vistadata(valor: 2)
            print("domicilio")
            label.backgroundColor = UIColor.blue
            label2.backgroundColor = UIColor.blue
            label3.backgroundColor = UIColor.darkGray
            label4.backgroundColor = UIColor.darkGray
            label5.backgroundColor = UIColor.darkGray
            label6.backgroundColor = UIColor.darkGray
            //lineas
            labelg.backgroundColor = UIColor.blue
            labeld.backgroundColor = UIColor.darkGray
            labelde.backgroundColor = UIColor.darkGray
            labelpp.backgroundColor = UIColor.darkGray
            labelrf.backgroundColor = UIColor.darkGray
        }
        if scrollView.contentOffset.y > 692 && scrollView.contentOffset.y < 1349{
        //Vistadata(valor: 3)
            print("Datos Economicos")
            label.backgroundColor = UIColor.blue
            label2.backgroundColor = UIColor.blue
            label3.backgroundColor = UIColor.blue
            label4.backgroundColor = UIColor.darkGray
            label5.backgroundColor = UIColor.darkGray
            label6.backgroundColor = UIColor.darkGray
            //lineas
            labelg.backgroundColor = UIColor.blue
            labeld.backgroundColor = UIColor.blue
            labelde.backgroundColor = UIColor.darkGray
            labelpp.backgroundColor = UIColor.darkGray
            labelrf.backgroundColor = UIColor.darkGray
        }
        
        if scrollView.contentOffset.y > 1349 && scrollView.contentOffset.y < 1758{
        //Vistadata(valor: 4)
            print("Persona Politica")
            label.backgroundColor = UIColor.blue
            label2.backgroundColor = UIColor.blue
            label3.backgroundColor = UIColor.blue
            label4.backgroundColor = UIColor.blue
            label5.backgroundColor = UIColor.darkGray
            label6.backgroundColor = UIColor.darkGray
            //lineas
            labelg.backgroundColor = UIColor.blue
            labeld.backgroundColor = UIColor.blue
            labelde.backgroundColor = UIColor.blue
            labelpp.backgroundColor = UIColor.darkGray
            labelrf.backgroundColor = UIColor.darkGray
        }
        if  scrollView.contentOffset.y > 1758 && scrollView.contentOffset.y < 2393{
        //Vistadata(valor: 5)
            print("Referencias Familiares")
            label.backgroundColor = UIColor.blue
            label2.backgroundColor = UIColor.blue
            label3.backgroundColor = UIColor.blue
            label4.backgroundColor = UIColor.blue
            label5.backgroundColor = UIColor.blue
            label6.backgroundColor = UIColor.darkGray
            //lineas
            labelg.backgroundColor = UIColor.blue
            labeld.backgroundColor = UIColor.blue
            labelde.backgroundColor = UIColor.blue
            labelpp.backgroundColor = UIColor.blue
            labelrf.backgroundColor = UIColor.darkGray
        }
        if  scrollView.contentOffset.y > 2393 {
            //Vistadata(valor: 5)
            print("Documentos")
            label.backgroundColor = UIColor.blue
            label2.backgroundColor = UIColor.blue
            label3.backgroundColor = UIColor.blue
            label4.backgroundColor = UIColor.blue
            label5.backgroundColor = UIColor.blue
            label6.backgroundColor = UIColor.blue
            //lineas
            labelg.backgroundColor = UIColor.blue
            labeld.backgroundColor = UIColor.blue
            labelde.backgroundColor = UIColor.blue
            labelpp.backgroundColor = UIColor.blue
            labelrf.backgroundColor = UIColor.blue
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
    
    @objc func fetchData() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            userArray = try context.fetch(USUARIO.fetchRequest())
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
    
    
    @IBAction func Hombre(_ sender: UISwitch) {
        if Hombre.isOn {
            Mujer.isOn = false
            sexo = "MASCULINO"
        }
    }
    
    @IBAction func Mujer(_ sender: UISwitch) {
        if Mujer.isOn {
            Hombre.isOn = false
            sexo = "FEMENINO"
        }
    }
    //Persona politica
     
     @IBAction func Ppoliticasi(_ sender: UISwitch) {
        if Ppoliticasi.isOn {
            Ppoliticano.isOn = false
            print("Funcionando")
            Pfuncion.alpha = 1
            EsPersonaPolitica = "SI"
        }
     }
    
    @IBAction func Ppoliticano(_ sender: UISwitch) {
        if Ppoliticano.isOn {
            Ppoliticasi.isOn = false
            print("Funcionando")
            Pfuncion.alpha = 0
            EsPersonaPolitica = "NO"
        }
    }

    @IBAction func Ppolitica2si(_ sender: UISwitch) {
        if Ppolitica2si.isOn {
            Ppolitica2no.isOn = false
            Pfuncion2.alpha = 1
            Pfuncion3.alpha = 1
            TieneParentesco = "SI"
        }
    }
    
    @IBAction func Ppolitica2no(_ sender: UISwitch) {
        if Ppolitica2no.isOn {
            Ppolitica2si.isOn = false
            Pfuncion2.alpha = 0
            Pfuncion3.alpha = 0
            TieneParentesco = "NO"
        }
    }
    
    @objc func verBuzona(){
        
        var num = 0
        print("***************XML Buzon Activo A*******************")
        repeat {
            // print(num)
            if buzonA[num].id_solicitud == Int32(Solicitud){
                print(buzonA[num].solicitud_xml!)
                print("Estatus",buzonA[num].estatus)
                Estatus = Int(buzonA[num].estatus)
                beginParsing(xml: buzonA[num].solicitud_xml!)
                self.Imageidentif = buzonA[num].doc_if!
                self.Imageidentia = buzonA[num].doc_ia!
                self.Imagefirm = buzonA[num].fi!
                self.Imagecont = buzonA[num].doc_c1!
                self.Imagecontp = buzonA[num].doc_c2!
                self.Imageextra1 = buzonA[num].ext_c1!
                self.Imageextra2 = buzonA[num].ext_c2!
                self.Imageextra3 = buzonA[num].ext_c3!
                self.Imageextra4 = buzonA[num].ext_c4!
                self.Imageextra5 = buzonA[num].ext_c5!
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
              print(buzonB[num].solicitud_xml_b!)
              print("Estatus",buzonB[num].estatus_b)
              Estatus = Int(buzonB[num].estatus_b)
              beginParsing(xml: buzonB[num].solicitud_xml_b!)
              self.Imageidentif = buzonB[num].doc_if!
              self.Imageidentia = buzonB[num].doc_ia!
              self.Imagefirm = buzonB[num].fi!
              self.Imagecont = buzonB[num].doc_c1!
              self.Imagecontp = buzonB[num].doc_c2!
                self.Imageextra1 = buzonB[num].ext_c1!
                self.Imageextra2 = buzonB[num].ext_c2!
                self.Imageextra3 = buzonB[num].ext_c3!
                self.Imageextra4 = buzonB[num].ext_c4!
                self.Imageextra5 = buzonB[num].ext_c5!
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
                  num = num + 1
                }else {
                    if num == 1 {
                        //print("Nombre",Nombre[num],num)
                        Rnombre.text = Nombre[num]
                        num = num + 1
                    }else {
                        if num == 2 {
                           // print("Nombre",Nombre[num],num)
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
      if sexo == "MASCULINO" {
          Hombre.isOn = true
      }else {
         Mujer.isOn = true
      }
     
        if dia.count != 0 {
            //fecha
            var fecha = ""/*
            let valor = Int(mes[0])
            var meses:[String] = ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"] */
            fecha = dia[0] + "/" + mes[0] + "/" + anio[0]
            Fechanac.text = fecha
        }
        
        //calle
        if calle.count != 0 {
            num = 0
            repeat{
                if num == 0{
                     //print("calle",calle[num])
                     Gcalle.text = calle[num]
                     num = num+1
                }else {
                    if num == 1 {
                        Dcalle.text = calle[num]
                        num = num+1
                    }
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
                    if num == 1 {
                        Dnumext.text = Numext[num]
                        num = num+1
                    }
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
                    num = num+1
                }else {
                    if num == 1 {
                        print("Num Int",numint[num],"Id",num)
                        Dnumint.text = numint[num]
                        num = num+1
                    }
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
                    if num == 1 {
                        DColonia.text = colonia[num]
                        num = num+1
                    }
                }
                
            }while num < colonia.count
        }
 
        //Nacionalidad
        if Nacionalidad2.count != 0 {
            num = 0
            repeat {
                if num == 0 {
                    Nacionalidadv(registro: Nacionalidad2[num], indice: num)
                    num = num + 1
                }else {
                    if num == 1 {
                         Nacionalidadv(registro: Nacionalidad2[num], indice: num)
                        num = num + 1
                    }else {
                        if num == 2 {
                            Nacionalidadv(registro: Nacionalidad2[num], indice: num)
                            num = num + 1
                        }else {
                            if num == 3 {
                               Nacionalidadv(registro: Nacionalidad2[num], indice: num)
                               num = num + 1
                            }
                        }
                    }
                }
            }while num < Nacionalidad2.count
         }
        
        //Estado
        if Estado2.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Estadov(registro: Estado2[num], indice: num)
                    num = num+1
                }else {
                    if num == 1{
                        Estadov(registro: Estado2[num], indice: num)
                        num = num+1
                    }
                }
           }while num < Estado2.count
        }
        //Delegacion o Municipio
        if Mun.count != 0 {
            num = 0
            repeat{
                if num == 0{
                    Municipio(registro: Mun[num], indice: num)
                    num = num+1
                }else {
                    if num == 1{
                        Municipio(registro: Mun[num], indice: num)
                        num = num+1
                    }
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
                    if num == 1{
                        Dcp.text = cp[num]
                        num = num+1
                    }
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
                    if num == 1{
                        Dtelefonoofic.text = Telcasa[num]
                        num = num+1
                    }
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
        //Titulo de Documentacion
       Didentificacionf.text = IdentificacionFrentePath
       Didentificaciona.text = IdentificacionAtrasPath
       Dfirma.text = FirmaPath
       Dcontrato.text = Contrato1Path
       Dcontratop.text = Contrato2Path
       Dextra1.text = Extra1
       Dextra2.text = Extra2
       Dextra3.text = Extra3
       Dextra4.text = Extra4
       Dextra5.text = Extra5
        
        if TieneParentesco == "SI" {
                Ppolitica2si.isOn = true
                Ppolitica2no.isOn = false
                Pfuncion2.alpha = 1
                Pfuncion3.alpha = 1
                Pfuncion3.text = TipoParentesco
                Pfuncion2.text =  Descparentesco
        }else {
                Pfuncion2.alpha = 0
                Pfuncion3.alpha = 0
                Ppolitica2no.isOn = true
                Ppolitica2si.isOn = false
        }
    
        //Es persona politica
        if EsPersonaPolitica == "SI" {
                Ppoliticasi.isOn = true
                Pfuncion.alpha = 1
                Pfuncion.text = Descfuncion
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
                    Dridestatus = registro
                    break
                }else {
                    num = num+1
                }
            }while num < cataloA.count
            
        }else {
            repeat {
                if cataloB[num].id_catalogo == Int32(registro){
                    Gestatusresidencia.text = cataloB[num].descripcion
                    Dridestatus = registro
                    break
                }else {
                    num = num+1
                }
            }while num < cataloB.count
            
        }
    }
    
    @objc func Nacionalidadv(registro:String,indice:Int) {
        var num = 0
        if indice == 0 {
            /*************************General***********************/
            if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(registro){
                        Gnan.text = cataloA[num].descripcion
                        Gridnacionalidad = registro
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(registro){
                        Gnan.text = cataloB[num].descripcion
                        Gridnacionalidad = registro
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
                            Rridnacionalidad = registro
                            break
                        }else {
                            num = num+1
                        }
                    }while num < cataloA.count
                    
                }else {
                    repeat {
                        if cataloB[num].id_catalogo == Int32(registro){
                            Rnan.text = cataloB[num].descripcion
                            Rridnacionalidad = registro
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
                                Rridnacionalidad2 = registro
                                break
                            }else {
                                num = num+1
                            }
                        }while num < cataloA.count
                        
                    }else {
                        repeat {
                            if cataloB[num].id_catalogo == Int32(registro){
                                R2nan.text = cataloB[num].descripcion
                                Rridnacionalidad2 = registro
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
                                    Rridnacionalidad3 = registro
                                    break
                                }else {
                                    num = num+1
                                }
                            }while num < cataloA.count
                            
                        }else {
                            repeat {
                                if cataloB[num].id_catalogo == Int32(registro){
                                    R3nan.text = cataloB[num].descripcion
                                    Rridnacionalidad3 = registro
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
    
    @objc func Estadov(registro:String,indice:Int){
     var num = 0
        if indice == 0 {
            //****************** Domicilio *********************************
           if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(registro){
                        Destado.text = cataloA[num].descripcion
                        Dridestado = registro
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(registro){
                        Destado.text = cataloB[num].descripcion
                        Dridestado = registro
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloB.count
                
            }
        }else {
            //****************************** Datos econmicos ****************
            if indice == 1 {
                if catalogoA == "A" {
                    repeat {
                        if cataloA[num].id_catalogo == Int32(registro){
                            Daestado.text = cataloA[num].descripcion
                            Dridestado2 = registro
                            break
                        }else {
                            num = num+1
                        }
                    }while num < cataloA.count
                    
                }else {
                    repeat {
                        if cataloB[num].id_catalogo == Int32(registro){
                            Daestado.text = cataloB[num].descripcion
                            Dridestado2 = registro
                            break
                        }else {
                            num = num+1
                        }
                    }while num < cataloB.count
                    
                }
            }
       }
    }
    
    @objc func Municipio(registro:String,indice:Int) {
        var num = 0
        if indice == 0 {
            //********************** Domicilio ******************
            if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(registro){
                        Dmun.text = cataloA[num].descripcion
                        Driddel = registro
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
               repeat {
                    if cataloB[num].id_catalogo == Int32(registro){
                        Dmun.text = cataloB[num].descripcion
                        Driddel = registro
                        
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloB.count
                
            }
        }else {
             //************************ Datos economicos *********************
            if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(registro){
                        Damun.text = cataloA[num].descripcion
                        Driddel2 = registro
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(registro){
                        Damun.text = cataloB[num].descripcion
                        Driddel2 = registro
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
                        Gridtipo = string
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(string){
                        Gtipo.text = cataloB[num].descripcion
                        Gridtipo = string
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
            sexo = string
        }
        if element == "Nacionalidad" {
           //print("nacionalidad",string)
           Nacionalidad2.append(string)
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
            Rfc.text = string
         
        }
        if element == "Edocivil" {
            var num = 0
            if catalogoA == "A" {
                repeat {
                    if cataloA[num].id_catalogo == Int32(string){
                        Gestado.text = cataloA[num].descripcion
                        Gridestcivil = string
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(string){
                        Gestado.text = cataloB[num].descripcion
                        Gridestcivil = string
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
            Estado2.append(string)
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
             Dcorreo.text = string
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
                        Dridcompania = string
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(string){
                        Dcompania.text = cataloB[num].descripcion
                        Dridcompania = string
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
                        Dridtipo = string
                        break
                    }else {
                        num = num+1
                    }
                }while num < cataloA.count
                
            }else {
                repeat {
                    if cataloB[num].id_catalogo == Int32(string){
                        Dtipo.text = cataloB[num].descripcion
                        Dridtipo = string
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
            //print("Tieneparentesco",string)
            TieneParentesco = string
           
        }
        if element == "EsPersonaPolitica" {
            //print("EsPersonaPolitica",string)
           EsPersonaPolitica = string
            
        }
        if element == "TipoParentesco" {
            //print("Tipoparentesco",string)
            TipoParentesco = string
            
        }
        if element == "Descfuncion" {
            print("Descfuncion",string)
           Descfuncion = string
        }
        if element == "Descparentesco" {
           
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
            IdentificacionAtrasPath = string
        }
        if element == "FirmaPath" {
           FirmaPath = string
        }
        if element == "Contrato1Path" {
          Contrato1Path = string
        }
        if element == "Contrato2Path" {
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
    }
 
    //Catalogo A
    @objc func CatalogoA(){
        var num = 0
        repeat{
            //Tipo de identificacion
            if cataloA[num].id_tipo_catalogo == "2" {
                Tipo.append(["Id":String(cataloA[num].id_catalogo),"Desc":cataloA[num].descripcion!])
                num = num+1
            }else {
                //Nacionalidad
                if cataloA[num].id_tipo_catalogo == "9" {
                    Nacionalidad.append(["Id":String(cataloA[num].id_catalogo),"Desc":cataloA[num].descripcion!])
                    num = num+1
                }else {
                    //EstadoCivil
                    if cataloA[num].id_tipo_catalogo == "3" {
                        Estadocivil.append(["Id":String(cataloA[num].id_catalogo),"Desc":cataloA[num].descripcion!])
                        num = num+1
                    }else {
                        //Estados
                        if cataloA[num].id_tipo_catalogo == "5" {
                            Estado.append(["Id":String(cataloA[num].id_catalogo),"Desc":cataloA[num].descripcion!])
                            num = num+1
                        }else {
                            //Delegacion
                            if cataloA[num].id_tipo_catalogo == "6" {
                                Delegacion.append(["Id":String(cataloA[num].id_catalogo),"Desc":cataloA[num].descripcion!])
                                num = num+1
                            }else {
                                //Compania movil
                                if cataloA[num].id_tipo_catalogo == "1" {
                                    Compania.append(["Id":String(cataloA[num].id_catalogo),"Desc":cataloA[num].descripcion!])
                                    num = num+1
                                }else {
                                    //Estatus de residencia
                                    if cataloA[num].id_tipo_catalogo == "4" {
                                        Arraystatus.append(["Id":String(cataloA[num].id_catalogo),"Desc":cataloA[num].descripcion!])
                                        num = num+1
                                    }else {
                                        //Tipo de contrato
                                        if cataloA[num].id_tipo_catalogo == "7" {
                                            contrato.append(["Id":String(cataloA[num].id_catalogo),"Desc":cataloA[num].descripcion!])
                                            num = num+1
                                        }else {
                                            num = num+1
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }while num < cataloA.count
    }
    //Catalogo B
    @objc func CatalogoB() {
        var num = 0
        repeat{
            //Tipo de identificacion
            if cataloB[num].id_tipo_catalogo == "2" {
                Tipo.append(["Id":String(cataloB[num].id_catalogo),"Desc":cataloB[num].descripcion!])
                num = num+1
            }else {
                //Nacionalidad
                if cataloB[num].id_tipo_catalogo == "9" {
                    Nacionalidad.append(["Id":String(cataloB[num].id_catalogo),"Desc":cataloB[num].descripcion!])
                    num = num+1
                }else {
                    //EstadoCivil
                    if cataloB[num].id_tipo_catalogo == "3" {
                        Estadocivil.append(["Id":String(cataloB[num].id_catalogo),"Desc":cataloB[num].descripcion!])
                        num = num+1
                    }else {
                        //Estados
                        if cataloB[num].id_tipo_catalogo == "5" {
                            Estado.append(["Id":String(cataloB[num].id_catalogo),"Desc":cataloB[num].descripcion!])
                            num = num+1
                        }else {
                            //Delegacion
                            if cataloB[num].id_tipo_catalogo == "6" {
                                Delegacion.append(["Id":String(cataloB[num].id_catalogo),"Desc":cataloB[num].descripcion!])
                                num = num+1
                            }else {
                                //Compania movil
                                if cataloB[num].id_tipo_catalogo == "1" {
                                    Compania.append(["Id":String(cataloB[num].id_catalogo),"Desc":cataloB[num].descripcion!])
                                    num = num+1
                                }else {
                                    //Estatus de residencia
                                    if cataloB[num].id_tipo_catalogo == "4" {
                                        Arraystatus.append(["Id":String(cataloB[num].id_catalogo),"Desc":cataloB[num].descripcion!])
                                        num = num+1
                                    }else {
                                        //Tipo de contrato
                                        if cataloB[num].id_tipo_catalogo == "7" {
                                            contrato.append(["Id":String(cataloB[num].id_catalogo),"Desc":cataloB[num].descripcion!])
                                            num = num+1
                                        }else {
                                            num = num+1
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }while num < cataloB.count
    }
    
    //Generales
    @IBAction func Identificacion(_ sender: UIButton) {
        print("identificacion")
        Gptipo.alpha = 1
    }
    
    @IBAction func Nacionalidad(_ sender: UIButton) {
        print("Nacionalidad")
        Gpnacionalidad.alpha = 1
    }
    
    @IBAction func Fechanacimiento(_ sender: UIButton) {
        print("Fecha nacimiento")
        Gpfecha.alpha = 1
    }
    
    @IBAction func Accionpicker(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let strDate = dateFormatter.string(from: Gpfecha.date)
        self.Fechanac.text = strDate
        Gpfecha.alpha = 0
    }
    
    
    @IBAction func Estadocivil(_ sender: UIButton) {
        print("Estado civil")
        Gpestcivil.alpha = 1
    }
    
    
    @IBAction func Dependientes(_ sender: UIButton) {
        print("Numero dependientes")
        Gpnumero.alpha = 1
    }
    //Domicilio
    @IBAction func Estado(_ sender: UIButton) {
        print("Estado")
        Dpestado.alpha = 1
    }
    
    @IBAction func Delegacion(_ sender: UIButton) {
        print("Delegacion")
        Dpdel.alpha = 1
    }
    
    @IBAction func Estatusresidencia(_ sender: UIButton) {
        print("Estatus de residencia")
        Dpestatus.alpha = 1
    }
    
    @IBAction func Compania(_ sender: UIButton) {
        print("Compania")
        Dpcompania.alpha = 1
    }
    //Datos economicos
    @IBAction func Tipocontrato(_ sender: UIButton) {
        print("Tipo contrato")
        Dptipo.alpha = 1
    }
    
    @IBAction func Estado2(_ sender: UIButton) {
        print("estado")
        Dpestado2.alpha = 1
    }
    
    @IBAction func Delegacion2(_ sender: UIButton) {
        print("Delegacion")
        Dpdel2.alpha = 1
    }

    //Referencias
    @IBAction func Nacionalidad2(_ sender: UIButton) {
        print("Nacionalidad")
        Rpnacionalidad.alpha = 1
    }
    
    @IBAction func Nacionalidad3(_ sender: UIButton) {
        print("Nacionalidad")
        R2pnacionalidad.alpha = 1
    }
    @IBAction func Nacionalidad4(_ sender: UIButton) {
        print("Nacionalidad")
        R3pnacionalidad.alpha = 1
    }
    @objc public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    @objc public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        var count = 0
        if pickerView == self.Gptipo {
            count = Tipo.count
        }
        if pickerView == self.Gpnacionalidad {
            count = Nacionalidad.count
        }
        if pickerView == self.Gpestcivil {
            count = Estadocivil.count
        }
        if pickerView == self.Gpnumero {
            count = dependientes.count
        }
        if pickerView == self.Dpestado {
            count = Estado.count
        }
        if pickerView == self.Dpdel {
            count = Delegacion.count
        }
        if pickerView == self.Dpestatus {
            count = Arraystatus.count
        }
        if pickerView == self.Dpcompania {
            count = Compania.count
        }
        if pickerView == self.Dptipo {
            count = contrato.count
        }
        if pickerView == self.Dpestado2 {
            count = Estado.count
        }
        if pickerView == self.Dpdel2 {
            count = Delegacion.count
        }
        if pickerView == self.Rpnacionalidad {
            count = Nacionalidad.count
        }
        if pickerView == self.R2pnacionalidad {
            count = Nacionalidad.count
        }
        if pickerView == self.R3pnacionalidad {
            count = Nacionalidad.count
        }
        return count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var valor = ""
        if pickerView == self.Gptipo {
            valor = Tipo[row]["Desc"]!
        }
        if pickerView == self.Gpnacionalidad {
            valor = Nacionalidad[row]["Desc"]!
        }
        if pickerView == self.Gpestcivil {
            valor = Estadocivil[row]["Desc"]!
        }
        if pickerView == self.Gpnumero {
            valor = dependientes[row]
        }
        if pickerView == self.Dpestado {
            valor = Estado[row]["Desc"]!
        }
        if pickerView == self.Dpdel {
            valor = Delegacion[row]["Desc"]!
        }
        if pickerView == self.Dpestatus {
            valor = Arraystatus[row]["Desc"]!
        }
        if pickerView == self.Dpcompania {
            valor = Compania[row]["Desc"]!
        }
        if pickerView == self.Dptipo {
            valor = contrato[row]["Desc"]!
        }
        if pickerView == self.Dpestado2 {
            valor = Estado[row]["Desc"]!
        }
        if pickerView == self.Dpdel2 {
            valor = Delegacion[row]["Desc"]!
        }
        if pickerView == self.Rpnacionalidad {
            valor = Nacionalidad[row]["Desc"]!
        }
        if pickerView == self.R2pnacionalidad {
            valor = Nacionalidad[row]["Desc"]!
        }
        if pickerView == self.R3pnacionalidad {
            valor = Nacionalidad[row]["Desc"]!
        }
        return valor
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == self.Gptipo {
            self.Gtipo.text = self.Tipo[row]["Desc"]
            Gridtipo = self.Tipo[row]["Id"]!
            Gptipo.alpha = 0
        }
        if pickerView == self.Gpnacionalidad {
            self.Gnan.text = self.Nacionalidad[row]["Desc"]!
            Gridnacionalidad = self.Nacionalidad[row]["Id"]!
            Gpnacionalidad.alpha = 0
        }
        if pickerView == self.Gpestcivil {
            self.Gestado.text = self.Estadocivil[row]["Desc"]!
            Gridestcivil =  self.Estadocivil[row]["Id"]!
            Gpestcivil.alpha = 0
        }
        if pickerView == self.Gpnumero {
            self.Numdependientes.text = self.dependientes[row]
            Gpnumero.alpha = 0
        }
        if pickerView == self.Dpestado {
            self.Destado.text = self.Estado[row]["Desc"]!
            Dridestado = self.Estado[row]["Id"]!
            Dpestado.alpha = 0
        }
        if pickerView == self.Dpdel {
            self.Dmun.text = self.Delegacion[row]["Desc"]!
            Driddel = self.Delegacion[row]["Id"]!
            Dpdel.alpha = 0
        }
        if pickerView == self.Dpestatus {
            self.Gestatusresidencia.text = self.Arraystatus[row]["Desc"]!
            Dridestatus = self.Arraystatus[row]["Id"]!
            Dpestatus.alpha = 0
        }
        if pickerView == self.Dpcompania {
            self.Dcompania.text = self.Compania[row]["Desc"]!
            Dridcompania = self.Compania[row]["Id"]!
            Dpcompania.alpha = 0
        }
        if pickerView == self.Dptipo {
            self.Dtipo.text = self.contrato[row]["Desc"]!
            Dridtipo =  self.contrato[row]["Id"]!
            Dptipo.alpha = 0
        }
        if pickerView == self.Dpestado2 {
            self.Daestado.text = self.Estado[row]["Desc"]!
            Dridestado2 =  self.Estado[row]["Id"]!
            Dpestado2.alpha = 0
        }
        if pickerView == self.Dpdel2 {
            self.Damun.text = self.Delegacion[row]["Desc"]!
            Driddel2 = self.Delegacion[row]["Id"]!
            Dpdel2.alpha = 0
        }
        if pickerView == self.Rpnacionalidad {
            self.Rnan.text = self.Nacionalidad[row]["Desc"]!
            Rridnacionalidad = self.Nacionalidad[row]["Id"]!
            Rpnacionalidad.alpha = 0
        }
        if pickerView == self.R2pnacionalidad {
            self.R2nan.text = self.Nacionalidad[row]["Desc"]!
            Rridnacionalidad2 = self.Nacionalidad[row]["Id"]!
            R2pnacionalidad.alpha = 0
        }
        if pickerView == self.R3pnacionalidad {
            self.R3nan.text = self.Nacionalidad[row]["Desc"]!
            Rridnacionalidad3 = self.Nacionalidad[row]["Id"]!
            R3pnacionalidad.alpha = 0
        }
    }
    func CamposVacios(){
        var num = 0
        var mensaje = "\n\n Campos Faltantes: "
        //Generales
        if Gnombre.text == "" {
            Arraycamp.append("Nombre")
        }
        
        if Gapep.text == "" {
            Arraycamp.append("Apellido Paterno")
        }
        
        if Gtipo.text == "Tipo de identificacion *" {
            Arraycamp.append("Tipo de identificacion")
        }
        
        if Gnumero.text == "" {
            Arraycamp.append("numero de identificacion")
        }
        
        if Gnan.text == "Nacionalidad*" {
            Arraycamp.append("Nacionalidad")
        }
        
        if Rfc.text == "" {
            Arraycamp.append("Rfc")
        }
        
        if Fechanac.text == "Fecha de nacimiento*" {
            Arraycamp.append("Fecha de nacimiento")
        }
        
        if Gestado.text == "Estado civil*" {
            Arraycamp.append("Estado civil")
        }
        
        if Gnumero.text == "" {
            Arraycamp.append("Numero de dependientes")
        }
        
        if sexo == "" {
            Arraycamp.append("Sexo ")
        }
        
        //Domicilio
        if Dcalle.text == "" {
            Arraycamp.append("Calle")
        }
        
        if Dnumext.text == "" {
            Arraycamp.append("Num. Exterior")
        }
        
        if Dcp.text == "" {
            Arraycamp.append("Codigo Postal")
        }
        
        if Destado.text == "Estado*" {
            Arraycamp.append("Estado")
        }
        
        if Dmun.text == "Delegación/Municipio*" {
            Arraycamp.append("Delegación/Municipio")
        }
        
        if Gcolonia.text == "" {
            Arraycamp.append("Colonia")
        }
        
        if Gtiemporesidencia.text == "" {
            Arraycamp.append("Tiempo de residencia")
        }
        
        if Gestatusresidencia.text == "Estatus de residencia*" {
            Arraycamp.append("Estatus de residencia")
        }
        
        if Gmontovivienda.text == "" {
            Arraycamp.append("Monto")
        }
        
        if Dcorreo.text == "" {
            Arraycamp.append("Correo")
        }
        
        if Dtelefono.text == "" {
            Arraycamp.append("Telefono de casa")
        }
        
        if Dcelular.text == "" {
            Arraycamp.append("Celular")
        }
        
        //Datos economicos
        if DEmpresa.text == "" {
            Arraycamp.append("Nombre de la empresa")
        }
        
        if DGiro.text == "" {
            Arraycamp.append("Giro")
        }
        
        if Dantiguedad.text == "" {
            Arraycamp.append("Antiguedad")
        }
        
        if Dpuesto.text == "" {
            Arraycamp.append("Puesto")
        }
        
        
        
        if Dingreso.text == "" {
            Arraycamp.append("Ingreso")
        }
        
        if Dcalle.text == "" {
            Arraycamp.append("Calle de la empresa")
        }
        
        if Dnumext.text == "" {
            Arraycamp.append("Numero externo de la empresa")
        }
        
        if Dcp.text == "" {
            Arraycamp.append("Codigo postal de la empresa")
        }
        
        if Daestado.text == "Estado*" {
            Arraycamp.append("Estado de la empresa")
        }
        
        if Damun.text == "Delegación/Municipio*" {
            Arraycamp.append("Delegacion o municipio de la empresa")
        }
        
        if DColonia.text == "" {
            Arraycamp.append("Colonia de la empresa")
        }
        
        if Dtelefonoofic.text == "" {
            Arraycamp.append("Telefono de la empresa")
        }
        //Referencias
        if Rnombre.text == "" {
            Arraycamp.append("Nombre de Referencia1")
        }
        
        if Rapep.text == "" {
            Arraycamp.append("Apellido paterno de Referencia1")
        }
        
        if Rnan.text == "Nacionalidad*" {
            Arraycamp.append("Nacionalidad de Referencia1")
        }
        
        if Rtelefono.text == "" {
            Arraycamp.append("Telefono de Referencia1")
        }
        
        if R2nombre.text == "" {
            Arraycamp.append("Nombre de Referencia2")
        }
        
        if R2apep.text == "" {
            Arraycamp.append("Apellido paterno de Referencia2")
        }
        
        if R2nan.text == "Nacionalidad*" {
            Arraycamp.append("Nacionalidad de Referencia2")
        }
        
        if R2telefono.text == "" {
            Arraycamp.append("Telefono de Referencia2")
        }
        
        if Arraycamp.count != 0 {
            Estatus = 0
            print("Estatus",Estatus)
            
            if Arraycamp.count > 5 {
                repeat {
                    mensaje = mensaje + Arraycamp[num] + ","
                    num = num+1
                }while num < 5
                let alert = UIAlertController(title: "Deseas Guardar la solicitud Incompleta", message: mensaje + "..." , preferredStyle: UIAlertControllerStyle.alert)
                
                alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
                    //self.datos()
                }))
                self.present(alert, animated: true, completion: nil)
                Arraycamp.removeAll()
            }else {
                repeat {
                    mensaje = mensaje + Arraycamp[num] + ","
                    num = num+1
                }while num < 5
                let alert = UIAlertController(title: "Deseas Guardar la solicitud Incompleta", message: mensaje , preferredStyle: UIAlertControllerStyle.alert)
                
                alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
                    self.datos()
                }))
                self.present(alert, animated: true, completion: nil)
                Arraycamp.removeAll()
            }
            
        }else {
            Estatus = 6
            print("Estatus",Estatus)
            datos()
        }
        
    }
    
    func datos() {
        
        //validacion de monto de vivienda hasta 100,000,000
        if Gmontovivienda.text != "" {
            let monto = Int(Gmontovivienda.text!)
            if monto! > 100000000 {
                print("monto no valido")
            }else {
                print("Monto valido")
            }
        }
        //validacion de Correo electronico
        if Dcorreo.text != "" {
            let bandera:Bool = validateEmail(enteredEmail: Dcorreo.text!)
            if  bandera == true {
                print("es un Correo ")
            }else{
                print("No es un correo")
            }
        }
        //Obtencion de dias y fecha y año de nacimiento
        var num = 0
        var cont = 0
        var dia = ""
        var mes = ""
        var anio = ""
        if Fechanac.text != "Fecha de nacimiento*" {
            
            let longitud = Fechanac.text?.characters.count
            var letters = Fechanac.text?.characters.map { String($0) }
            
            repeat{
                if letters![num] == "/" {
                    num = num+1
                    cont = cont+1
                }else {
                    if cont == 0 {
                        dia = dia+letters![num]
                        num = num+1
                    }else {
                        if cont == 1 {
                            mes = mes+letters![num]
                            num = num+1
                        }else {
                            if cont == 2 {
                                anio = anio+letters![num]
                                num = num+1
                            }
                        }
                    }
                }
            }while num < longitud!
            
            print("Valor de dia:",dia)
            print("valor de mes:",mes)
            print("valor de anio:",anio)
        }
        
        let fecha = Date()
        let dateformate = DateFormatter()
        dateformate.dateFormat = "dd/MM/yyyy"
        let fechaa = dateformate.string(from: fecha)
        print("Fecha Actual",fechaa)
        let longitud2 = fechaa.characters.count
        var letters2 = fechaa.characters.map { String($0) }
        num = 0
        cont = 0
        var dia2 = ""
        var mes2 = ""
        var anio2 = ""
        repeat{
            if letters2[num] == "/" {
                num = num+1
                cont = cont+1
            }else {
                if cont == 0 {
                    dia2 = dia2+letters2[num]
                    num = num+1
                }else {
                    if cont == 1 {
                        mes2 = mes2+letters2[num]
                        num = num+1
                    }else {
                        if cont == 2 {
                            anio2 = anio2+letters2[num]
                            num = num+1
                        }
                    }
                }
            }
        }while num < longitud2
        
        print("Valor de dia:",dia2)
        print("valor de mes:",mes2)
        print("valor de anio:",anio2)
        print("Id de la solicitud",Solicitud)
        
        Usuario()
        
        let c = Character(UnicodeScalar(34))
        let Comd = String(c)
        print("Valor de comd",Comd)
        
        let Xml = "<?xml version="+Comd+"1.0"+Comd+" encoding="+Comd+"UTF-8"+Comd+"?><SolicitudType xmlns:xsi="+Comd+"http://www.w3.org/2001/XMLSchema-instance"+Comd+" xmlns:xsd="+Comd+"http://www.w3.org/2001/XMLSchema"+Comd+"><generales><Tpoidentif>"+Gridtipo+"</Tpoidentif><Noidenficacion>"+Gnumero.text!+"</Noidenficacion><Pmrnombre>"+Gnombre.text!+"</Pmrnombre><Sdonombre>"+G2nombre.text!+"</Sdonombre><Apaterno>"+Gapep.text!+"</Apaterno><Amaterno>"+Gapem.text!+"</Amaterno><Sexo>"+sexo+"</Sexo><Nacionalidad>"+Gridnacionalidad+"</Nacionalidad><Fechanacdia>"+dia+"</Fechanacdia><Rfc>"+Rfc.text!+"</Rfc><Edocivil>"+Gridestcivil+"</Edocivil><Nodependiente>"+Numdependientes.text!+"</Nodependiente><Cveperspol>2</Cveperspol><FechasnacMes>"+mes+"</FechasnacMes><FechanacAnio>"+anio+"</FechanacAnio></generales><doc><IdentificacionFrentePath>TEC_636395911640643196.jpg</IdentificacionFrentePath><IdentificacionAtrasPath>TEC_636395912088133899.jpg</IdentificacionAtrasPath><Contrato1Path>TEC_636395912441057948.jpg</Contrato1Path><Contrato2Path>TEC_636395912942097782.jpg</Contrato2Path><FirmaPath>"+FirmaPath+"</FirmaPath><Extra1>TEC_636395912942097782.jpg</Extra1><Extra2>TEC_636395912942097782.jpg</Extra2><Extra3>TEC_636395912942097782.jpg</Extra3><Extra4>TEC_636395912942097782.jpg</Extra4><Extra5>TEC_636395912942097782.jpg</Extra5></doc><domicilio><Calle>"+Gcalle.text!+"</Calle><NoInt>"+Gnumint.text!+"</NoInt><NoExt>"+Gnumext.text!+"</NoExt><Cpdom>"+Ccp.text!+"</Cpdom><Estado>"+Dridestado+"</Estado><Delegacion>"+Driddel+"</Delegacion><Colonia>"+Gcolonia.text!+"</Colonia><TiempoResidencia>"+Gtiemporesidencia.text!+"</TiempoResidencia><EstatusResidencia>"+Dridestatus+"</EstatusResidencia><MontoVivienda>"+Gmontovivienda.text!+"</MontoVivienda><Email>"+Dcorreo.text!+"</Email><Telcasa>"+Dtelefono.text!+"</Telcasa><Telmovil>"+Dcelular.text!+"</Telmovil><CompaniaMovil>"+Dridcompania+"</CompaniaMovil></domicilio><Personapolitica><TipoParentesco>"+Pfuncion3.text!+"</TipoParentesco><Descfuncion>"+Pfuncion.text!+"</Descfuncion><Descparentesco>"+Pfuncion2.text!+"</Descparentesco><TieneParentesco>"+TieneParentesco+"</TieneParentesco><EsPersonaPolitica>"+EsPersonaPolitica+"</EsPersonaPolitica></Personapolitica><Refer><Pmrnombre>"+Rnombre.text!+"</Pmrnombre><Sdonombre/><Apaterno>"+Rapep.text!+"</Apaterno><Amaterno>"+Rapem.text!+"</Amaterno><Nacionalidad>"+Rridnacionalidad+"</Nacionalidad><TelefonoCasa>"+Rtelefono.text!+"</TelefonoCasa></Refer><Refer2><Pmrnombre>"+R2nombre.text!+"</Pmrnombre><Sdonombre/><Apaterno>"+R2apep.text!+"</Apaterno><Amaterno>"+R2apem.text!+"</Amaterno><Nacionalidad>"+Rridnacionalidad2+"</Nacionalidad><TelefonoCasa>"+R2telefono.text!+"</TelefonoCasa></Refer2><Refer3><Pmrnombre>"+R3nombre.text!+"</Pmrnombre><Sdonombre/><Apaterno>"+R3apep.text!+"</Apaterno><Amaterno>"+R3apem.text!+"</Amaterno><Nacionalidad>"+Rridnacionalidad3+"</Nacionalidad><TelefonoCasa>"+R3telefono.text!+"</TelefonoCasa></Refer3><Promotor><Compania>"+comp+"</Compania><Usuario>"+usuario+"</Usuario><Contrasenia>"+pass+"</Contrasenia></Promotor><FolioLocal>0</FolioLocal><DiaCreacion>"+dia2+"</DiaCreacion><MesCreacion>"+mes2+"</MesCreacion><AnioCreacion>"+anio2+"</AnioCreacion><Deconominos><TipoContrato>"+Dridtipo+"</TipoContrato><AntiguedadEmpleo>"+Dantiguedad.text!+"</AntiguedadEmpleo><AniosCasada>"+Dcasados.text!+"</AniosCasada><Ingresos>"+Dingreso.text!+"</Ingresos><NombreEmpresa>"+DEmpresa.text!+"</NombreEmpresa><GiroEmpresa>"+DGiro.text!+"</GiroEmpresa><Puesto>"+Dpuesto.text!+"</Puesto><Domicilio><Calle>"+Dcalle.text!+"</Calle><NoInt>"+Dnumint.text!+"</NoInt><NoExt>"+Dnumext.text!+"</NoExt><Cpdom>"+Dcp.text!+"</Cpdom><Estado>"+Dridestado2+"</Estado><Delegacion>"+Driddel2+"</Delegacion><Colonia>"+DColonia.text!+"</Colonia><TiempoResidencia>0</TiempoResidencia><EstatusResidencia>0</EstatusResidencia><MontoVivienda>0</MontoVivienda><Telcasa>"+Dtelefonoofic.text!+"</Telcasa><Telmovil/></Domicilio><OtrosIngresos>"+Dotrosingresos.text!+"</OtrosIngresos><FuenteOtrosIngresos>"+Dfuenteingresos.text!+"</FuenteOtrosIngresos></Deconominos><Lattitude>19.41409467264</Lattitude><Longuitud>-99.0129458034061</Longuitud></SolicitudType>"
        print("valor de XML: ",Xml)
        Update(Xml: Xml, ext1: Imagefirm, ext2: Imagefirm, ext3: Imagefirm, ext4: Imagefirm, ext5: Imagefirm, docc1: Imagefirm, docc2: Imagefirm, docia: Imagefirm, docif: Imagefirm, fi: Imagefirm)
    }
    
    @objc func Usuario() {
        var num = 0
        repeat {
            
            Idusuario = Int(userArray[num].id_usuario)
            usuario = userArray[num].user!
            comp = userArray[num].compania!
            pass = userArray[num].contrasena!
            num = num+1
            
        }while num < userArray.count
        
    }
    //Funcion para validar correo electronico
    @objc func validateEmail(enteredEmail:String) -> Bool {
        
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        
        return emailPredicate.evaluate(with: enteredEmail)
    }
    
    @objc func Update(Xml:String,ext1:String,ext2:String,ext3:String,ext4:String,ext5:String,docc1:String,docc2:String,docia:String,docif:String,fi:String) {
        if Buzon == "A" {
            let request = NSFetchRequest<Rbuzon>(entityName: "Rbuzon")
            do {
                let searchResults = try context.fetch(request)
                for task in searchResults {
                    if task.id_solicitud == Solicitud {
                        task.estatus = Int16(Estatus)
                        task.solicitud_xml = Xml
                        task.ext_c1 = ext1
                        task.ext_c2 = ext2
                        task.ext_c3 = ext3
                        task.ext_c4 = ext4
                        task.ext_c5 = ext4
                        task.doc_c1 = docc1
                        task.doc_c2 = docc2
                        task.doc_ia = docia
                        task.doc_if = docif
                        task.fi = fi
                    }
                }
            } catch {
                print("Error with request: \(error)")
            }
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            print("SOLICITUD MODIFICADA A")
        }else {
            let request = NSFetchRequest<BUZON_A>(entityName: "BUZON_A")
            do {
                let searchResults = try context.fetch(request)
                for task in searchResults {
                    if task.id_solicitud_b == Solicitud {
                        task.estatus_b = Int16(Estatus)
                        task.solicitud_xml_b = Xml
                        task.ext_c1 = ext1
                        task.ext_c2 = ext2
                        task.ext_c3 = ext3
                        task.ext_c4 = ext4
                        task.ext_c5 = ext4
                        task.doc_c1 = docc1
                        task.doc_c2 = docc2
                        task.doc_ia = docia
                        task.doc_if = docif
                        task.fi = fi
                    }
                }
            } catch {
                print("Error with request: \(error)")
            }
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            print("SOLICITUD MODIFICADA B")
        }
    }
}
