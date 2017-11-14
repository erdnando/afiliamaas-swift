//
//  Nuevogeneral.swift
//  Afiliacion
//
//  Created by stefanini on 19/09/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import CoreData
class Nuevogeneral: UIViewController,UIPickerViewDelegate,UIScrollViewDelegate,UITextFieldDelegate{
    //Scroll
    @IBOutlet weak var myscroll: UIScrollView!
    //Datos de promotor
    var Idusuario = 0
    @objc var usuario = ""
    @objc var pass = ""
    @objc var comp = ""
    //Variable que Verifica si ya se guardo una vez
    var guardar = 0
     var validador = 1
    //ID solicitud
    var IdSolicitud = 1
    //Estatus de solicitud
    var Estatus = 6
    //General
    @IBOutlet weak var General: UILabel!
   
    @IBOutlet weak var Gnombre: CustomUITextField!
    @objc var Grnombre = ""
    @IBOutlet weak var Gsnombre: UITextField!
    @objc var Grsnombre = ""
    @IBOutlet weak var Gapep: UITextField!
    @objc var Grapep = ""
    @IBOutlet weak var Gapem: UITextField!
    @objc var Grapem = ""
    @IBOutlet weak var Gidentificacion: UITextField!
    @objc var Gridentificacion = ""
    
    @IBOutlet weak var Grfc: UILabel!
    var Grrfc = ""
   
    @IBOutlet weak var Gnumero: UILabel!
    @objc var Grnumero = ""
    @IBOutlet weak var GBtnumero: UIButton!
    @IBOutlet weak var Gpnumero: UIPickerView!
    
    
    @IBOutlet weak var GBttipo: UIButton!
    @IBOutlet weak var Gtipo: UILabel!
    @objc var Grtipo = ""
    @objc var Gridtipo = "" //id
    @IBOutlet weak var Gptipo: UIPickerView!
    @IBOutlet weak var Gh: UISwitch!
    @IBOutlet weak var Gm: UISwitch!
    @objc var sexo = ""
   
    @IBOutlet weak var GBtnacionalidad: UIButton!
    @IBOutlet weak var Gnacionalidad: UILabel!
    @objc var Grnacionalidad = ""
    @objc var Gridnacionalidad = "" //id
    @IBOutlet weak var Gpnacionalidad: UIPickerView!
    
    @IBOutlet weak var GBtfecha: UIButton!
    @IBOutlet weak var Gfecha: UILabel!
    @objc var Grfecha = ""
    @IBOutlet weak var Gpfecha: UIDatePicker!
    
    @IBOutlet weak var GBtestcivil: UIButton!
    @IBOutlet weak var Gestcivil: UILabel!
    @objc var Grestcivil = ""
    @objc var Gridestcivil = "" //id
    @IBOutlet weak var Gpestcivil: UIPickerView!
    
    
    
    //Domicilio
    
    @IBOutlet weak var Domicilio: UILabel!
    @IBOutlet weak var Dcalle: UITextField!
    @objc var Drcalle = ""
    @IBOutlet weak var Dnume: UITextField!
    @objc var Drnume = ""
    @IBOutlet weak var Dnumi: UITextField!
    @objc var Drnumi = ""
    @IBOutlet weak var Dcolonia: UITextField!
    @objc var Drcolonia = ""
   
    @IBOutlet weak var DBtestado: UIButton!
    @IBOutlet weak var Destado: UILabel!
    @objc var Drestado = ""
    @objc var Dridestado = ""
    @IBOutlet weak var Dpestado: UIPickerView!
    @IBOutlet weak var DBtdel: UIButton!
    @IBOutlet weak var Ddel: UILabel!
    @objc var Drdel = ""
    @objc var Driddel = ""
    @IBOutlet weak var Dpdel: UIPickerView!
    @IBOutlet weak var Dcp: UITextField!
    @objc var Drcp = ""
    @IBOutlet weak var Dtiempo: UITextField!
    @objc var Drtiempo = ""
    
    @IBOutlet weak var DBtestatus: UIButton!
    @IBOutlet weak var Destatus: UILabel!
    @objc var Drestatus = ""
    @objc var Dridestatus = ""
    @IBOutlet weak var Dpestatus: UIPickerView!
    @IBOutlet weak var Dmonto: UITextField!
    @objc var Drmonto = ""
    @IBOutlet weak var Dcorreo: UITextField!
    @objc var Drcorreo = ""
    @IBOutlet weak var Dtelefono: UITextField!
    @objc var Drtelefono = ""
    @IBOutlet weak var Dmovil: UITextField!
    @objc var Drmovil = ""
    
    @IBOutlet weak var DBtcompania: UIButton!
    @IBOutlet weak var Dcompania: UILabel!
    @objc var Drcompania = ""
    @objc var Dridcompania = ""
    @IBOutlet weak var Dpcompania: UIPickerView!
    
    //Datos econmicos
    
    @IBOutlet weak var Datos: UILabel!
    @IBOutlet weak var Dnombre: UITextField!
    @objc var Drnombre = ""
    @IBOutlet weak var Dgiro: UITextField!
    @objc var Drgiro = ""
    @IBOutlet weak var Dantiguedad: UITextField!
    @objc var Drantiguedad = ""
    
    @IBOutlet weak var DBttipo: UIButton!
    @IBOutlet weak var Dtipo: UILabel!
    @objc var Drtipo = ""
    @objc var Dridtipo = ""
    @IBOutlet weak var Dptipo: UIPickerView!
    @IBOutlet weak var Dpuesto: UITextField!
    @objc var Drpuesto = ""
    @IBOutlet weak var Dingreso: UITextField!
    @objc var Dringreso = ""
    @IBOutlet weak var Dcasado: UITextField!
    @objc var Drcasado = ""
    @IBOutlet weak var Dfuente: UITextField!
    @objc var Drfuente = ""
    @IBOutlet weak var Dotros: UITextField!
    @objc var Drotros = ""
    @IBOutlet weak var Dcalle2: UITextField!
    @objc var Drcalle2 = ""
    @IBOutlet weak var Dnume2: UITextField!
    @objc var Drnume2 = ""
    @IBOutlet weak var Dnumi2: UITextField!
    @objc var Drnumi2 = ""
    @IBOutlet weak var Dcolonia2: UITextField!
    @objc var Drcolonia2 = ""
    
    @IBOutlet weak var DBtestado2: UIButton!
    @IBOutlet weak var Destado2: UILabel!
    @objc var Drestado2 = ""
    @objc var Dridestado2 = ""
    @IBOutlet weak var Dpestado2: UIPickerView!
    
    @IBOutlet weak var DBtdel2: UIButton!
    @IBOutlet weak var Ddel2: UILabel!
    @objc var Drdel2 = ""
    @objc var Driddel2 = ""
    @IBOutlet weak var Dpdel2: UIPickerView!
    @IBOutlet weak var Dcp2: UITextField!
    @objc var Drcp2 = ""
    @IBOutlet weak var Dtelefono2: UITextField!
    @objc var Drtelefono2 = ""
    @IBOutlet weak var Dextencion: UITextField!
    @objc var Drextencion = ""
    
    //Persona politica
    
    @IBOutlet weak var Personapolitica: UILabel!
    @IBOutlet weak var Psi: UISwitch!
    @IBOutlet weak var Pno: UISwitch!
    @objc var persona = ""
    @IBOutlet weak var Pfuncion: UITextField!
    @objc var Prfuncion = ""
    @IBOutlet weak var Psi2: UISwitch!
    @IBOutlet weak var Pno2: UISwitch!
    @objc var parentesco = ""
    @IBOutlet weak var Pfuncion2: UITextField!
    @objc var Prfuncion2 = ""
    @IBOutlet weak var Pparentesco: UITextField!
    @objc var Prparentesco = ""
    
    //Referencias Familiares
    @IBOutlet weak var Referencias: UILabel!
    
    @IBOutlet weak var Rnombre: UITextField!
    @objc var Rrnombre = ""
    @IBOutlet weak var Rapep: UITextField!
    @objc var Rrapep = ""
    @IBOutlet weak var Rapem: UITextField!
    @objc var Rrapem = ""
    
    @IBOutlet weak var RBtnacionalidad: UIButton!
    @IBOutlet weak var Rnacionalidad: UILabel!
    @objc var Rrnacionalidad = ""
    @objc var Rridnacionalidad = ""
    @IBOutlet weak var Rpnacionalidad: UIPickerView!
    @IBOutlet weak var Rtelefono: UITextField!
    @objc var Rrtelefono = ""
    
    @IBOutlet weak var R2nombre: UITextField!
    @objc var R2rnombre = ""
    @IBOutlet weak var R2apep: UITextField!
    @objc var R2rapep = ""
    @IBOutlet weak var R2apem: UITextField!
    @objc var R2rapem = ""
    
    @IBOutlet weak var R2Btnacionalidad: UIButton!
    @IBOutlet weak var R2nacionalidad: UILabel!
    @objc var R2rnacionalidad = ""
    @objc var Rridnacionalidad2 = ""
    @IBOutlet weak var R2pnacionalidad: UIPickerView!
    @IBOutlet weak var R2telefono: UITextField!
    @objc var R2rtelefono = ""
    
    @IBOutlet weak var R3nombre: UITextField!
    @objc var R3rnombre = ""
    @IBOutlet weak var R3apep: UITextField!
    @objc var R3rapep = ""
    @IBOutlet weak var R3apem: UITextField!
    @objc var R3rapem = ""
    
    @IBOutlet weak var R3Btnacionalidad: UIButton!
    @IBOutlet weak var R3nacionalidad: UILabel!
    @objc var Rr3nacionalidad = ""
    @objc var Rridnacionalidad3 = ""
    @IBOutlet weak var R3pnacionalidad: UIPickerView!
    @IBOutlet weak var R3telefono: UITextField!
    @objc var R3rtelefono = ""
    
    //Documentos
    
    @IBOutlet weak var Documentos: UILabel!
    
    @IBOutlet weak var Iidenntificacionf: UIImageView!
    @objc var bidentificacionf = ""
    @IBOutlet weak var Eidentificacionf: UILabel!
    var tidentificacionf = ""
    
    @IBOutlet weak var Iidentificaciont: UIImageView!
    @objc var bidentificaciont = ""
    @IBOutlet weak var Eidentificaciont: UILabel!
    var tidentificaciont = ""
    
    @IBOutlet weak var Ifirma: UIImageView!
    @objc var bfirma = ""
    @IBOutlet weak var Efirma: UILabel!
    var tfirma = ""
    
    @IBOutlet weak var Iextra1: UIImageView!
    @IBOutlet weak var Btextra1: UIButton!
    @IBOutlet weak var Eextra1: UILabel!
    
    @IBOutlet weak var Iextra2: UIImageView!
    @IBOutlet weak var Btextra2: UIButton!
    @IBOutlet weak var Eextra2: UILabel!
    
    @IBOutlet weak var Iextra3: UIImageView!
    @IBOutlet weak var Btextra3: UIButton!
    @IBOutlet weak var Eextra3: UILabel!
    
    
    @IBOutlet weak var Iextra4: UIImageView!
    @IBOutlet weak var Btextra4: UIButton!
    @IBOutlet weak var Eextra4: UILabel!
    
    @IBOutlet weak var Iextra5: UIImageView!
    @IBOutlet weak var Btextra5: UIButton!
    @IBOutlet weak var Eextra5: UILabel!
    var Imagen = 0
    //Base de datos
    @objc var paramArray:[PARAMETRO] = []
    @objc var cataloA:[CATALOGO_A] = []
    @objc var cataloB:[Rcatalogo] = []
    @objc var userArray:[USUARIO] = []
    @objc var buzonA:[Rbuzon] = []
    @objc var buzonB:[BUZON_A] = []
    @objc var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    //Arreglo de Spinner
    @objc var Tipo = [Dictionary<String,String>]()
    @objc var Nacionalidad = [Dictionary<String,String>]()
    @objc var Estadocivil = [Dictionary<String,String>]()
    @objc var Estado = [Dictionary<String,String>]()
    @objc var Delegacion = [Dictionary<String,String>]()
    @objc var Compania = [Dictionary<String,String>]()
    @objc var Arraystatus = [Dictionary<String,String>]()
    @objc var contrato = [Dictionary<String,String>]()
    var dependientes = ["1","2","4","5","6","7","8","9","10"]
    //Arreglo de anexos
    var Anexo1 = [Dictionary<String,String>]()
    var Anexo2 = [Dictionary<String,String>]()
    var Anexo3 = [Dictionary<String,String>]()
    //Arreglo de nombre completo en numeros
    var Vnumerico:[String] = []
    //catalogo activo
    @objc var Catalogoactivo = ""
    @objc var visibilidad = false
    @objc var deslizar = 0
    @objc var margeny = 0
    //Buzon Activo
     var Buzon = ""
    var Caractersuma = 0
    //variable donde se almacena la vocal del apellido paterno
    var vocal = ""
    var banderav:Bool = true
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
    //Array de campos faltantes
    var Arraycamp:[String] = []
   
    override func viewDidLoad() {
        super.viewDidLoad()
      
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
       //Boton de guardar
        let button = UIButton(frame: CGRect(x: 270, y: 0, width: 80, height: 20))
        button.backgroundColor = UIColor.darkGray
        button.setTitle("Guardar", for: .normal)
        button.addTarget(self, action: #selector(buttonAction(sender:)), for: .touchUpInside)
        //button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(button)
   
  
        //funcion que oculta el teclado
        self.hideKeyboardWhenTappedAround()
        myscroll.delegate = self
        fetchData()
        fetchData2()
        fetchData3()
        fetchData4()
        fetchData5()
        fetchData6()
        //Buscar Catalogo activo
        Buscarparamca()
        print("Catalogo activo:",Catalogoactivo)
        if Catalogoactivo == "A" {
            CatalogoA()
        }else {
            CatalogoB()
        }
        
        //Delegate de etiquetas
        //General
        General.layer.masksToBounds = true
        General.layer.cornerRadius = 10
        General.layer.borderWidth = 1
        
        Gnombre?.delegate = self
        Gnombre?.layer.cornerRadius = 15
        Gnombre?.layer.borderWidth = 1
        
        Gsnombre.delegate = self
        Gsnombre.layer.cornerRadius = 15
        Gsnombre.layer.borderWidth = 1
        Gapep.delegate = self
        Gapep.layer.cornerRadius = 15
        Gapep.layer.borderWidth = 1
        Gapem.delegate = self
        Gapem.layer.cornerRadius = 15
        Gapem.layer.borderWidth = 1
        GBttipo.layer.cornerRadius = 15
        GBttipo.layer.borderWidth = 1
        Gidentificacion.delegate = self
        Gidentificacion.layer.cornerRadius = 15
        Gidentificacion.layer.borderWidth = 1
        GBtnacionalidad.layer.cornerRadius = 15
        GBtnacionalidad.layer.borderWidth = 1
        GBtfecha.layer.cornerRadius = 15
        GBtfecha.layer.borderWidth = 1
        Gpfecha.backgroundColor = UIColor(red:0.11, green:0.74, blue:0.92, alpha:1.0)
        Grfc.layer.cornerRadius = 15
        Grfc.layer.borderWidth = 1
        GBtestcivil.layer.cornerRadius = 15
        GBtestcivil.layer.borderWidth = 1
        GBtnumero.layer.cornerRadius = 15
        GBtnumero.layer.borderWidth = 1
        
        //Domicilio
        Domicilio.layer.masksToBounds = true
        Domicilio.layer.cornerRadius = 10
        Domicilio.layer.borderWidth = 1
        Dcalle.delegate = self
        Dcalle.layer.cornerRadius = 15
        Dcalle.layer.borderWidth = 1
        Dnume.delegate = self
        Dnume.layer.cornerRadius = 15
        Dnume.layer.borderWidth = 1
        Dnumi.delegate = self
        Dnumi.layer.cornerRadius = 15
        Dnumi.layer.borderWidth = 1
        Dcolonia.delegate = self
        Dcolonia.layer.cornerRadius = 15
        Dcolonia.layer.borderWidth = 1
        DBtestado.layer.cornerRadius = 15
        DBtestado.layer.borderWidth = 1
        DBtdel.layer.cornerRadius = 15
        DBtdel.layer.borderWidth = 1
        Dcp.delegate = self
        Dcp.layer.cornerRadius = 15
        Dcp.layer.borderWidth = 1
        Dtiempo.delegate = self
        Dtiempo.layer.cornerRadius = 15
        Dtiempo.layer.borderWidth = 1
        DBtestatus.layer.cornerRadius = 15
        DBtestatus.layer.borderWidth = 1
        Dmonto.delegate = self
        Dmonto.layer.cornerRadius = 15
        Dmonto.layer.borderWidth = 1
        Dcorreo.layer.cornerRadius = 15
        Dcorreo.layer.borderWidth = 1
        Dtelefono.delegate = self
        Dtelefono.layer.cornerRadius = 15
        Dtelefono.layer.borderWidth = 1
        Dmovil.delegate = self
        Dmovil.layer.cornerRadius = 15
        Dmovil.layer.borderWidth = 1
        DBtcompania.layer.cornerRadius = 15
        DBtcompania.layer.borderWidth = 1
        
        //Datos economicos
        Datos.layer.masksToBounds = true
        Datos.layer.cornerRadius = 10
        Datos.layer.borderWidth = 1
        Dnombre.delegate = self
        Dnombre.layer.cornerRadius = 15
        Dnombre.layer.borderWidth = 1
        Dgiro.delegate = self
        Dgiro.layer.cornerRadius = 15
        Dgiro.layer.borderWidth = 1
        Dantiguedad.delegate = self
        Dantiguedad.layer.cornerRadius = 15
        Dantiguedad.layer.borderWidth = 1
        DBttipo.layer.cornerRadius = 15
        DBttipo.layer.borderWidth = 1
        Dpuesto.delegate = self
        Dpuesto.layer.cornerRadius = 15
        Dpuesto.layer.borderWidth = 1
        Dingreso.delegate = self
        Dingreso.layer.cornerRadius = 15
        Dingreso.layer.borderWidth = 1
        Dcasado.delegate = self
        Dcasado.layer.cornerRadius = 15
        Dcasado.layer.borderWidth = 1
        Dfuente.delegate = self
        Dfuente.layer.cornerRadius = 15
        Dfuente.layer.borderWidth = 1
        Dotros.delegate = self
        Dotros.layer.cornerRadius = 15
        Dotros.layer.borderWidth = 1
        Dcalle2.delegate = self
        Dcalle2.layer.cornerRadius = 15
        Dcalle2.layer.borderWidth = 1
        Dnume2.delegate = self
        Dnume2.layer.cornerRadius = 15
        Dnume2.layer.borderWidth = 1
        Dnumi2.delegate = self
        Dnumi2.layer.cornerRadius = 15
        Dnumi2.layer.borderWidth = 1
        Dcolonia2.delegate = self
        Dcolonia2.layer.cornerRadius = 15
        Dcolonia2.layer.borderWidth = 1
        DBtestado2.layer.cornerRadius = 15
        DBtestado2.layer.borderWidth = 1
        DBtdel2.layer.cornerRadius = 15
        DBtdel2.layer.borderWidth = 1
        Dcp2.delegate = self
        Dcp2.layer.cornerRadius = 15
        Dcp2.layer.borderWidth = 1
        Dtelefono2.delegate = self
        Dtelefono2.layer.cornerRadius = 15
        Dtelefono2.layer.borderWidth = 1
        Dextencion.delegate = self
        Dextencion.layer.cornerRadius = 15
        Dextencion.layer.borderWidth = 1
        
        //Persona politica
        Personapolitica.layer.masksToBounds = true
        Personapolitica.layer.cornerRadius = 10
        Personapolitica.layer.borderWidth = 1
        Pfuncion.delegate = self
        Pfuncion.layer.cornerRadius = 15
        Pfuncion.layer.borderWidth = 1
        Pfuncion2.delegate = self
        Pfuncion2.layer.cornerRadius = 15
        Pfuncion2.layer.borderWidth = 1
        Pparentesco.delegate = self
        Pparentesco.layer.cornerRadius = 15
        Pparentesco.layer.borderWidth = 1
        
        //Referencias familiares
        Referencias.layer.masksToBounds = true
        Referencias.layer.cornerRadius = 10
        Referencias.layer.borderWidth = 1
        Rnombre.delegate = self
        Rnombre.layer.cornerRadius = 15
        Rnombre.layer.borderWidth = 1
        Rapep.delegate = self
        Rapep.layer.cornerRadius = 15
        Rapep.layer.borderWidth = 1
        Rapem.delegate = self
        Rapem.layer.cornerRadius = 15
        Rapem.layer.borderWidth = 1
        RBtnacionalidad.layer.cornerRadius = 15
        RBtnacionalidad.layer.borderWidth = 1
        Rtelefono.delegate = self
        Rtelefono.layer.cornerRadius = 15
        Rtelefono.layer.borderWidth = 1
        
        R2nombre.delegate = self
        R2nombre.layer.cornerRadius = 15
        R2nombre.layer.borderWidth = 1
        R2apep.delegate = self
        R2apep.layer.cornerRadius = 15
        R2apep.layer.borderWidth = 1
        R2apem.delegate = self
        R2apem.layer.cornerRadius = 15
        R2apem.layer.borderWidth = 1
        R2Btnacionalidad.layer.cornerRadius = 15
        R2Btnacionalidad.layer.borderWidth = 1
        R2telefono.delegate = self
        R2telefono.layer.cornerRadius = 15
        R2telefono.layer.borderWidth = 1
        
        R3nombre.delegate = self
        R3nombre.layer.cornerRadius = 15
        R3nombre.layer.borderWidth = 1
        R3apep.delegate = self
        R3apep.layer.cornerRadius = 15
        R3apep.layer.borderWidth = 1
        R3apem.delegate = self
        R3apem.layer.cornerRadius = 15
        R3apem.layer.borderWidth = 1
        R3Btnacionalidad.layer.cornerRadius = 15
        R3Btnacionalidad.layer.borderWidth = 1
        R3telefono.delegate = self
        R3telefono.layer.cornerRadius = 15
        R3telefono.layer.borderWidth = 1
        
        //Documentacion
         Documentos.layer.masksToBounds = true
        Documentos.layer.cornerRadius = 10
        Documentos.layer.borderWidth = 1
        
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
        
        // Recuperar datos al momento de deslizar el scroll
        if deslizar == 1 {
            if guardar != 0 {
                //Boton de guardar
                let button = UIButton(frame: CGRect(x: 30, y: 0, width: 80, height: 20))
                button.backgroundColor = UIColor.darkGray
                button.setTitle("Cancelar", for: .normal)
                button.addTarget(self, action: #selector(buttonActioncancelar(sender:)), for: .touchUpInside)
                self.view.addSubview(button)
            }
            //General
            Gnombre?.text = Grnombre
            Gsnombre.text = Grsnombre
            Gapep.text = Grapep
            Gapem.text = Grapem
            Gtipo.text = Grtipo
            Gidentificacion.text = Gridentificacion
            if sexo == "MASCULINO" {
                Gh.isOn = true
            }
            if sexo == "FEMENINO"{
                Gm.isOn = true
            }
            Grfc.text = Grrfc
            Gnacionalidad.text = Grnacionalidad
            Gfecha.text = Grfecha
            Gestcivil.text = Grestcivil
            Gnumero.text = Grnumero
            
            //Domicilio
            Dcalle.text = Drcalle
            Dnume.text = Drnume
            Dnumi.text = Drnumi
            Dcolonia.text = Drcolonia
            Destado.text = Drestado
            Ddel.text = Drdel
            Dcp.text = Drcp
            Dtiempo.text = Drtiempo
            Destatus.text = Drestatus
            Dmonto.text = Drmonto
            Dcorreo.text = Drcorreo
            Dtelefono.text = Drtelefono
            Dmovil.text = Drmovil
            Dcompania.text = Drcompania
          
            //Datos economicos
            Dnombre.text = Drnombre
            Dgiro.text = Drgiro
            Dantiguedad.text = Drantiguedad
            Dtipo.text = Drtipo
            Dpuesto.text = Drpuesto
            Dingreso.text = Dringreso
            Dcasado.text = Drcasado
            Dfuente.text = Drfuente
            Dotros.text = Drotros
            Dcalle2.text = Drcalle2
            Dnume2.text = Drnume2
            Dnumi2.text = Drnumi2
            Dcolonia2.text = Drcolonia2
            Destado2.text = Drestado2
            Ddel2.text = Drdel2
            Dcp2.text = Drcp2
            Dtelefono2.text = Drtelefono2
            Dextencion.text = Drextencion
            
            //Persona Politica
            if persona == "SI" {
                Psi.isOn = true
                Pno.isOn = false
                Pfuncion.alpha = 1
            }
            if persona == "NO" {
                Psi.isOn = false
                Pno.isOn = true
                Pfuncion.alpha = 0
            }
               
            
            Pfuncion.text = Prfuncion
            
            if parentesco == "SI" {
                Psi2.isOn = true
                Pno2.isOn = false
                Pfuncion2.alpha = 1
                Pparentesco.alpha = 1
            }
            if parentesco == "NO" {
                Psi2.isOn = false
                Pno2.isOn = true
                Pfuncion2.alpha = 0
                Pparentesco.alpha = 0
            }
            Pfuncion2.text = Prfuncion2
            Pparentesco.text = Prparentesco
            
            //Referencias familiares
            Rnombre.text = Rrnombre
            Rapep.text = Rrapep
            Rapem.text = Rrapem
            Rnacionalidad.text = Rrnacionalidad
            Rtelefono.text = Rrtelefono
            
            R2nombre.text = R2rnombre
            R2apep.text = R2rapep
            R2apem.text = R2rapem
            R2nacionalidad.text = R2rnacionalidad
            R2telefono.text = R2rtelefono
            
            R3nombre.text = R3rnombre
            R3apep.text = R3rapep
            R3apem.text = R3rapem
            R3nacionalidad.text = Rr3nacionalidad
            R3telefono.text = R3rtelefono
            // Documentacion
            Eidentificacionf.text = tidentificacionf
            Eidentificaciont.text = tidentificaciont
            Efirma.text = tfirma
            if Imagen == 1 {
                Iextra1.alpha = 1
                Btextra1.alpha = 0
                Eextra1.alpha = 1
                Btextra2.alpha = 1
            }
            if Imagen == 2 {
                Iextra1.alpha = 1
                Btextra1.alpha = 0
                Eextra1.alpha = 1
                Iextra2.alpha = 1
                Btextra2.alpha = 0
                Eextra2.alpha = 1
                Btextra3.alpha = 1
            }
            if Imagen == 3 {
                Iextra1.alpha = 1
                Btextra1.alpha = 0
                Eextra1.alpha = 1
                Iextra2.alpha = 1
                Btextra2.alpha = 0
                Eextra2.alpha = 1
                Iextra3.alpha = 1
                Btextra3.alpha = 0
                Eextra3.alpha = 1
                Btextra4.alpha = 1
            }
            if Imagen == 4 {
                Iextra1.alpha = 1
                Btextra1.alpha = 0
                Eextra1.alpha = 1
                Iextra2.alpha = 1
                Btextra2.alpha = 0
                Eextra2.alpha = 1
                Iextra3.alpha = 1
                Btextra3.alpha = 0
                Eextra3.alpha = 1
                Iextra4.alpha = 1
                Btextra4.alpha = 0
                Eextra4.alpha = 1
                Btextra5.alpha = 1
            }
            if Imagen == 5 {
                Iextra1.alpha = 1
                Btextra1.alpha = 0
                Eextra1.alpha = 1
                Iextra2.alpha = 1
                Btextra2.alpha = 0
                Eextra2.alpha = 1
                Iextra3.alpha = 1
                Btextra3.alpha = 0
                Eextra3.alpha = 1
                Iextra4.alpha = 1
                Btextra4.alpha = 0
                Eextra4.alpha = 1
                Iextra5.alpha = 1
                Btextra5.alpha = 0
                Eextra5.alpha = 1
            }
            //scroll
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
            
        }else {
            print("Sin deslizamiento")
            
            //General
            Gtipo.text = Grtipo
            Gnacionalidad.text = Grnacionalidad
            Gfecha.text = Grfecha
            Gestcivil.text = Grestcivil
            
            //Domicilio
            Destado.text = Drestado
            Ddel.text = Drdel
            Destatus.text = Drestatus
            Dcompania.text = Drcompania
            
            //Datos economicos
            Dtipo.text = Drtipo
            Destado2.text = Drestado2
            Ddel2.text = Drdel2
            
            //Referencias familiares
            Rnacionalidad.text = Rrnacionalidad
            R2nacionalidad.text = R2rnacionalidad
            R3nacionalidad.text = Rr3nacionalidad
           
        }
 
        
        //Accion en imagenes
        
        //Identificacion frente
        let Identf = UITapGestureRecognizer(target: self, action: #selector(Nuevogeneral.frente))
        Iidenntificacionf.addGestureRecognizer(Identf)
        Iidenntificacionf.isUserInteractionEnabled = true
        
        
        //Identificacion atras
        let Identa = UITapGestureRecognizer(target: self, action: #selector(Nuevogeneral.atras))
        Iidentificaciont.addGestureRecognizer(Identa)
        Iidentificaciont.isUserInteractionEnabled = true
        
        
        //firma
        let firm = UITapGestureRecognizer(target: self, action: #selector(Nuevogeneral.firma))
        Ifirma.addGestureRecognizer(firm)
        Ifirma.isUserInteractionEnabled = true
 
        //funcion para cargar imagen en imageview
        CargarImagen()
         //Tablas de homoclave
        Anexos()
        
        //recuperar valor de margen
        DispatchQueue.main.async
            {
                self.myscroll.contentOffset.y = CGFloat(self.margeny)
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
    //Accion del boton
    @objc func buttonAction(sender: UIButton) {
        //Boton de guardar
        let button = UIButton(frame: CGRect(x: 30, y: 0, width: 80, height: 20))
        button.backgroundColor = UIColor.darkGray
        button.setTitle("Cancelar", for: .normal)
        button.addTarget(self, action: #selector(buttonActioncancelar(sender:)), for: .touchUpInside)
        self.view.addSubview(button)
         Buscarparamba()
         CamposVacios()
    }
    //Accion del boton cancelar
    @objc func buttonActioncancelar(sender: UIButton) {
        print("Cancelar")
        let alert = UIAlertController(title: "¡Aviso!", message: "Deseas Cancelar la solicitud", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
            print("valor de guardar",self.guardar)
            self.Buscarparamba()
            self.BuscarIdSolicitud2()
            
            let destViewController : UIViewController = self.storyboard!.instantiateViewController(withIdentifier: "Home")
            let topViewController : UIViewController = self.navigationController!.topViewController!
            if (topViewController.restorationIdentifier! == destViewController.restorationIdentifier!){
                print("Same VC")
            } else {
                self.navigationController!.pushViewController(destViewController, animated: true)
            }
        }))
        alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    //Buscar buzon activo
    @objc func Buscarparamba(){
       var num = 0
        repeat{
            if paramArray[num].parametro == "BUZON_ACTIVO" {
                Buzon = paramArray[num].valor!
                print("Buzon activo es:",Buzon)
                break
            }else {
                num = num+1
            }
        }while num < paramArray.count
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
        
        if Gidentificacion.text == "" {
            Arraycamp.append("numero de identificacion")
        }
        
        if Gnacionalidad.text == "Nacionalidad*" {
            Arraycamp.append("Nacionalidad")
        }
        
        if Grfc.text == "" {
            Arraycamp.append("Rfc")
        }
        
        if Gfecha.text == "Fecha de nacimiento*" {
            Arraycamp.append("Fecha de nacimiento")
        }
        
        if Gestcivil.text == "Estado civil*" {
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
        
        if Dnume.text == "" {
            Arraycamp.append("Num. Exterior")
        }
        
        if Dcp.text == "" {
            Arraycamp.append("Codigo Postal")
        }
        
        if Destado.text == "Estado*" {
            Arraycamp.append("Estado")
        }
        
        if Ddel.text == "Delegación/Municipio*" {
            Arraycamp.append("Delegación/Municipio")
        }
        
        if Dcolonia.text == "Colonia" {
            Arraycamp.append("Colonia")
        }
        
        if Dtiempo.text == "" {
            Arraycamp.append("Tiempo de residencia")
        }
        
        if Destatus.text == "" {
            Arraycamp.append("Estatus de residencia")
        }
        
        if Dmonto.text == "" {
            Arraycamp.append("Monto")
        }
        
        if Dcorreo.text == "" {
            Arraycamp.append("Correo")
        }
        
        if Dtelefono.text == "" {
            Arraycamp.append("Telefono de casa")
        }
        
        if Dmovil.text == "" {
            Arraycamp.append("Celular")
        }
        
        //Datos economicos
        if Dnombre.text == "" {
            Arraycamp.append("Nombre de la empresa")
        }
        
        if Dgiro.text == "" {
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
        
        if Dcalle2.text == "" {
            Arraycamp.append("Calle de la empresa")
        }
        
        if Dnume.text == "" {
            Arraycamp.append("Numero externo de la empresa")
        }
        
        if Dcp2.text == "" {
            Arraycamp.append("Codigo postal de la empresa")
        }
        
        if Destado2.text == "Estado*" {
            Arraycamp.append("Estado de la empresa")
        }
        
        if Ddel2.text == "Delegación/Municipio*" {
            Arraycamp.append("Delegacion o municipio de la empresa")
        }
        
        if Dcolonia2.text == "" {
            Arraycamp.append("Colonia de la empresa")
        }
        
        if Dtelefono2.text == "" {
            Arraycamp.append("Telefono de la empresa")
        }
        //Referencias
        if Rnombre.text == "" {
            Arraycamp.append("Nombre de Referencia1")
        }
        
        if Rapep.text == "" {
            Arraycamp.append("Apellido paterno de Referencia1")
        }
        
        if Rnacionalidad.text == "Nacionalidad*" {
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
        
        if R2nacionalidad.text == "Nacionalidad*" {
            Arraycamp.append("Nacionalidad de Referencia2")
        }
        
        if R2telefono.text == "" {
            Arraycamp.append("Telefono de Referencia2")
        }
        //firma
        if tfirma == "Firma" {
            Arraycamp.append("Firma Usuario")
        }
        
        if Arraycamp.count != 0 {
            Estatus = 0
            print("Estatus",Estatus)
            if Arraycamp.count > 5 {
                repeat {
                    if num == 4 {
                        mensaje = mensaje + Arraycamp[num]
                        num = num+1
                    }else {
                        mensaje = mensaje + Arraycamp[num] + ","
                        num = num+1
                    }
                }while num < 5
                
                let alert = UIAlertController(title: "Deseas Guardar la solicitud Incompleta", message: mensaje + " .....", preferredStyle: UIAlertControllerStyle.alert)
                //alert.view.addSubview(createSwitch())
                alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
                    self.datos()
                }))
                self.present(alert, animated: true, completion: nil)
                Arraycamp.removeAll()
            }else {
                repeat {
                    if num == 4 {
                        mensaje = mensaje + Arraycamp[num]
                        num = num+1
                    }else {
                        mensaje = mensaje + Arraycamp[num] + ","
                        num = num+1
                    }
                }while num < Arraycamp.count
                
                let alert = UIAlertController(title: "Deseas Guardar la solicitud Incompleta", message: mensaje , preferredStyle: UIAlertControllerStyle.alert)
                //alert.view.addSubview(createSwitch())
                alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
                    //self.datos()
                }))
                self.present(alert, animated: true, completion: nil)
                Arraycamp.removeAll()
            }
           
            
        }else {
            if guardar == 0 {
                validador = 2
                datos()
                print("Estatus",Estatus)
            }else {
                Estatus = 6
                validador = 3
                datos()
                print("Estatus",Estatus)
            }
            
        }
        
    }
    func datos() {
        
        //validacion de monto de vivienda hasta 100,000,000
        if Drmonto != "" {
            let monto = Int(Drmonto)
            if monto! > 100000000 {
                print("monto no valido")
            }else {
                print("Monto valido")
            }
        }
        //validacion de Correo electronico
        if Drcorreo != "" {
            let bandera:Bool = validateEmail(enteredEmail: Drcorreo)
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
        if Grfecha != "Fecha de nacimiento*" {
            let longitud = Grfecha.characters.count
            var letters = Grfecha.characters.map { String($0) }
            
            repeat{
                if letters[num] == "/" {
                    num = num+1
                    cont = cont+1
                }else {
                    if cont == 0 {
                        dia = dia+letters[num]
                        num = num+1
                    }else {
                        if cont == 1 {
                            mes = mes+letters[num]
                            num = num+1
                        }else {
                            if cont == 2 {
                                anio = anio+letters[num]
                                num = num+1
                            }
                        }
                    }
                }
            }while num < longitud
            
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
        
        Usuario()
        
        let c = Character(UnicodeScalar(34))
        let Comd = String(c)
        print("Valor de comd",Comd)
        
        let Xml = "<?xml version="+Comd+"1.0"+Comd+" encoding="+Comd+"UTF-8"+Comd+"?><SolicitudType xmlns:xsi="+Comd+"http://www.w3.org/2001/XMLSchema-instance"+Comd+" xmlns:xsd="+Comd+"http://www.w3.org/2001/XMLSchema"+Comd+"><generales><Tpoidentif>"+Gridtipo+"</Tpoidentif><Noidenficacion>"+Gidentificacion.text!+"</Noidenficacion><Pmrnombre>"+Gnombre.text!+"</Pmrnombre><Sdonombre>"+Gsnombre.text!+"</Sdonombre><Apaterno>"+Gapep.text!+"</Apaterno><Amaterno>"+Gapem.text!+"</Amaterno><Sexo>"+sexo+"</Sexo><Nacionalidad>"+Gridnacionalidad+"</Nacionalidad><Fechanacdia>"+dia+"</Fechanacdia><Rfc>"+Grfc.text!+"</Rfc><Edocivil>"+Gridestcivil+"</Edocivil><Nodependiente>"+Gnumero.text!+"</Nodependiente><Cveperspol>2</Cveperspol><FechasnacMes>"+mes+"</FechasnacMes><FechanacAnio>"+anio+"</FechanacAnio></generales><doc><IdentificacionFrentePath>TEC_636395911640643196.jpg</IdentificacionFrentePath><IdentificacionAtrasPath>TEC_636395912088133899.jpg</IdentificacionAtrasPath><Contrato1Path>TEC_636395912441057948.jpg</Contrato1Path><Contrato2Path>TEC_636395912942097782.jpg</Contrato2Path><FirmaPath>"+tfirma+"</FirmaPath><Extra1>TEC_636395912942097782.jpg</Extra1><Extra2>TEC_636395912942097782.jpg</Extra2><Extra3>TEC_636395912942097782.jpg</Extra3><Extra4>TEC_636395912942097782.jpg</Extra4><Extra5>TEC_636395912942097782.jpg</Extra5></doc><domicilio><Calle>"+Dcalle.text!+"</Calle><NoInt>"+Dnumi.text!+"</NoInt><NoExt>"+Dnume.text!+"</NoExt><Cpdom>"+Dcp.text!+"</Cpdom><Estado>"+Dridestado+"</Estado><Delegacion>"+Driddel+"</Delegacion><Colonia>"+Dcolonia.text!+"</Colonia><TiempoResidencia>"+Dtiempo.text!+"</TiempoResidencia><EstatusResidencia>"+Dridestatus+"</EstatusResidencia><MontoVivienda>"+Dmonto.text!+"</MontoVivienda><Email>"+Dcorreo.text!+"</Email><Telcasa>"+Dtelefono.text!+"</Telcasa><Telmovil>"+Dmovil.text!+"</Telmovil><CompaniaMovil>"+Dridcompania+"</CompaniaMovil></domicilio><Personapolitica><TipoParentesco>"+Pparentesco.text!+"</TipoParentesco><Descfuncion>"+Pfuncion.text!+"</Descfuncion><Descparentesco>"+Pfuncion2.text!+"</Descparentesco><TieneParentesco>"+parentesco+"</TieneParentesco><EsPersonaPolitica>"+persona+"</EsPersonaPolitica></Personapolitica><Refer><Pmrnombre>"+Rnombre.text!+"</Pmrnombre><Sdonombre/><Apaterno>"+Rapep.text!+"</Apaterno><Amaterno>"+Rapem.text!+"</Amaterno><Nacionalidad>"+Rridnacionalidad+"</Nacionalidad><TelefonoCasa>"+Rtelefono.text!+"</TelefonoCasa></Refer><Refer2><Pmrnombre>"+R2nombre.text!+"</Pmrnombre><Sdonombre/><Apaterno>"+R2apep.text!+"</Apaterno><Amaterno>"+R2apem.text!+"</Amaterno><Nacionalidad>"+Rridnacionalidad2+"</Nacionalidad><TelefonoCasa>"+R2telefono.text!+"</TelefonoCasa></Refer2><Refer3><Pmrnombre>"+R3nombre.text!+"</Pmrnombre><Sdonombre/><Apaterno>"+R3apep.text!+"</Apaterno><Amaterno>"+R3apem.text!+"</Amaterno><Nacionalidad>"+Rridnacionalidad3+"</Nacionalidad><TelefonoCasa>"+R3telefono.text!+"</TelefonoCasa></Refer3><Promotor><Compania>"+comp+"</Compania><Usuario>"+usuario+"</Usuario><Contrasenia>"+pass+"</Contrasenia></Promotor><FolioLocal>0</FolioLocal><DiaCreacion>"+dia2+"</DiaCreacion><MesCreacion>"+mes2+"</MesCreacion><AnioCreacion>"+anio2+"</AnioCreacion><Deconominos><TipoContrato>"+Dridtipo+"</TipoContrato><AntiguedadEmpleo>"+Dantiguedad.text!+"</AntiguedadEmpleo><AniosCasada>"+Dcasado.text!+"</AniosCasada><Ingresos>"+Dingreso.text!+"</Ingresos><NombreEmpresa>"+Dnombre.text!+"</NombreEmpresa><GiroEmpresa>"+Dgiro.text!+"</GiroEmpresa><Puesto>"+Dpuesto.text!+"</Puesto><Domicilio><Calle>"+Dcalle2.text!+"</Calle><NoInt>"+Dnumi2.text!+"</NoInt><NoExt>"+Dnume2.text!+"</NoExt><Cpdom>"+Dcp2.text!+"</Cpdom><Estado>"+Dridestado2+"</Estado><Delegacion>"+Driddel2+"</Delegacion><Colonia>"+Dcolonia2.text!+"</Colonia><TiempoResidencia>0</TiempoResidencia><EstatusResidencia>0</EstatusResidencia><MontoVivienda>0</MontoVivienda><Telcasa>"+Dtelefono2.text!+"</Telcasa><Telmovil/></Domicilio><OtrosIngresos>"+Dotros.text!+"</OtrosIngresos><FuenteOtrosIngresos>"+Dfuente.text!+"</FuenteOtrosIngresos></Deconominos><Lattitude>19.41409467264</Lattitude><Longuitud>-99.0129458034061</Longuitud></SolicitudType>"
        print("valor de XML: ",Xml)
        
       //Si realiza una accion
        print("Valor de Guardar:",guardar)
 
         if validador == 1 && guardar == 0 {
         
         BuscarIdSolicitud()
            guardar = IdSolicitud
         print("Insertar")
         Insertarbuzon(sol: Xml, ext1: bfirma, ext2: bfirma, ext3: bfirma, ext4: bfirma, ext5: bfirma, docc1: bfirma, docc2: bfirma, docia: bfirma, docif: bfirma, fi: bfirma)
         Refresh()
        
         } else{//Cuando sigue en estatus 0 y aun faltan campos
         if validador == 1 && guardar != 0 {
         //guardar
         IdSolicitud = guardar
         print("ID al buscar:",IdSolicitud)
         print("Modificar")
         Update(Xml: Xml, ext1: bfirma, ext2: bfirma, ext3: bfirma, ext4: bfirma, ext5: bfirma, docc1: bfirma, docc2: bfirma, docia: bfirma, docif: bfirma, fi: bfirma)
         }else {//Cuando todos los campos estan llenos
         if validador == 2 && guardar == 0 {
            BuscarIdSolicitud()
            print("Insercion Completa")
           Insertarbuzon(sol: Xml, ext1: bfirma, ext2: bfirma, ext3: bfirma, ext4: bfirma, ext5: bfirma, docc1: bfirma, docc2: bfirma, docia: bfirma, docif: bfirma, fi: bfirma)
           let destViewController : UIViewController = self.storyboard!.instantiateViewController(withIdentifier: "Home")
         
           let topViewController : UIViewController = self.navigationController!.topViewController!
         
           if (topViewController.restorationIdentifier! == destViewController.restorationIdentifier!){
              print("Same VC")
           } else {
             self.navigationController!.pushViewController(destViewController, animated: true)
            }
            
         }else {//Cuando pasa de estatus 0 a estatus 6
            if validador == 3 && guardar != 0 {
                IdSolicitud = guardar
                print("ID al buscar:",IdSolicitud)
                
                print("Modificacion final")
                Update(Xml: Xml, ext1: bfirma, ext2: bfirma, ext3: bfirma, ext4: bfirma, ext5: bfirma, docc1: bfirma, docc2: bfirma, docia: bfirma, docif: bfirma, fi: bfirma)
                let destViewController : UIViewController = self.storyboard!.instantiateViewController(withIdentifier: "Home")
                let topViewController : UIViewController = self.navigationController!.topViewController!
                if (topViewController.restorationIdentifier! == destViewController.restorationIdentifier!){
                    print("Same VC")
                } else {
                  self.navigationController!.pushViewController(destViewController, animated: true)
                 }
             }
           }
         }
      }
      
    }
    
    @objc func  Refresh() {
        //Refresh
        if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "New") as? Nuevo {
            sol.margen = Int(myscroll.contentOffset.y)
            //General
            sol.Grnombre = (Gnombre?.text)!
            sol.Grsnombre = Gsnombre.text!
            sol.Grapep = Gapep.text!
            sol.Grapem = Gapem.text!
            sol.Grtipo = Gtipo.text!
            sol.Gridtipo = Gridtipo
            sol.Gridentificacion = Gidentificacion.text!
            sol.sexo = sexo
            sol.Grnacionalidad = Gnacionalidad.text!
            sol.Gridnacionalidad = Gridnacionalidad
            sol.Grfecha = Gfecha.text!
            sol.Grrfc = Grfc.text!
            sol.Grestcivil = Gestcivil.text!
            sol.Gridestcivil = Gridestcivil
            sol.Grnumero = Gnumero.text!
            
            //Domicilio
            sol.Drcalle = Dcalle.text!
            sol.Drnume = Dnume.text!
            sol.Drnumi = Dnumi.text!
            sol.Drcolonia = Dcolonia.text!
            sol.Drestado = Destado.text!
            sol.Dridestado = Dridestado
            sol.Drdel = Ddel.text!
            sol.Driddel = Driddel
            sol.Drcp = Dcp.text!
            sol.Drtiempo = Dtiempo.text!
            sol.Drestatus = Destatus.text!
            sol.Dridestatus = Dridestatus
            sol.Drmonto = Dmonto.text!
            sol.Drcorreo = Dcorreo.text!
            sol.Drtelefono = Dtelefono.text!
            sol.Drmovil = Dmovil.text!
            sol.Drcompania = Dcompania.text!
            sol.Dridcompania = Dridcompania
            
            //Datos economicos
            sol.Drnombre = Dnombre.text!
            sol.Drgiro = Dgiro.text!
            sol.Drantiguedad = Dantiguedad.text!
            sol.Drtipo = Dtipo.text!
            sol.Dridtipo = Dridtipo
            sol.Drpuesto = Dpuesto.text!
            sol.Dringreso = Dingreso.text!
            sol.Drcasado = Dcasado.text!
            sol.Drfuente = Dfuente.text!
            sol.Drotros = Dotros.text!
            sol.Drcalle2 = Dcalle2.text!
            sol.Drnume2 = Dnume2.text!
            sol.Drnumi2 = Dnumi2.text!
            sol.Drcolonia2 = Dcolonia2.text!
            sol.Drestado2 = Destado2.text!
            sol.Dridestado2 = Dridestado2
            sol.Drdel2 = Ddel2.text!
            sol.Driddel2 = Driddel2
            sol.Drcp2 = Dcp2.text!
            sol.Drtelefono2 = Dtelefono2.text!
            sol.Drextencion = Dextencion.text!
            
            //Persona politica
            sol.person = persona
            sol.Prfuncion = Pfuncion.text!
            sol.parentesco = parentesco
            sol.Prfuncion2 = Pfuncion2.text!
            sol.Prparentesco = Pparentesco.text!
            
            //Referencias familiares
            sol.Rrnombre = Rnombre.text!
            sol.Rrapep = Rapep.text!
            sol.Rrapem = Rapem.text!
            sol.Rrnacionalidad = Rnacionalidad.text!
            sol.Rridnacionalidad = Rridnacionalidad
            sol.Rrtelefono = Rtelefono.text!
            
            sol.R2rnombre = R2nombre.text!
            sol.R2rapep = R2apep.text!
            sol.R2rapem = R2apem.text!
            sol.Rr2nacionalidad = R2nacionalidad.text!
            sol.Rridnacionalidad2 = Rridnacionalidad2
            sol.R2rtelefono = R2telefono.text!
            
            sol.R3rnombre = R3nombre.text!
            sol.R3rapep = R3apep.text!
            sol.R3rapem = R3apem.text!
            sol.Rr3nacionalidad = R3nacionalidad.text!
            sol.Rridnacionalidad3 = Rridnacionalidad3
            sol.R3rtelefono = R3telefono.text!
            
            //Documentos
            sol.bidentificacionf = bidentificacionf
            sol.tidentificacionf = tidentificacionf
            sol.bidentificaciont = bidentificaciont
            sol.tidentificaciont = tidentificaciont
            sol.bfirma = bfirma
            sol.tfirma = tfirma
            sol.marco = Imagen
            sol.guardar = guardar
            
            sol.deslizar = 1
            self.navigationController?.pushViewController(sol, animated: false)
        }
    }
    @objc func ToastExample(message:String){
        let toastLabel =
            UILabel(frame:
                CGRect(x: self.view.frame.size.width/2 - 150,
                       y: self.view.frame.size.height-100,
                       width: 300,
                       height: 35))
        toastLabel.backgroundColor = UIColor.darkGray
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(toastLabel)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        UIView.animate(withDuration: 3.0, animations: {
            toastLabel.alpha = 0.0
        })
    }
    
    
    //Buscar IdSolicitud
    func BuscarIdSolicitud(){
        var num = 0
        if Buzon == "A" {
            repeat {
                if buzonA[num].estatus == 6 || buzonA[num].estatus == 0 {
                    print("IdSolicitud",buzonA[num].id_solicitud,"Estatus",buzonA[num].estatus)
                    if IdSolicitud <= buzonA[num].id_solicitud {
                        IdSolicitud = Int(buzonA[num].id_solicitud)+1
                    }
                    num = num+1
                } else {
                    num = num+1
                }
           }while num < buzonA.count
        
            print("Id Solicitud",IdSolicitud)
        }else { //Buzonb
            repeat {
                if buzonB[num].estatus_b == 6 || buzonB[num].estatus_b == 0 {
                    print("IdSolicitud",buzonB[num].id_solicitud_b)
                    if IdSolicitud <= buzonB[num].id_solicitud_b {
                        IdSolicitud = Int(buzonB[num].id_solicitud_b)+1
                    }
                    num = num+1
                }else {
                    num = num+1
                }
            }while num < buzonB.count
            print("Id Solicitud",IdSolicitud)
        }
    }
    //Buscar IdSolicitud2
    @objc func BuscarIdSolicitud2(){
        print("buscando solicitud",guardar)
        
        if Buzon == "A" {
            print("Buzon a")
           Eliminarsol(Indice: buzonA.count-1)
        }else { //Buzonb
            print("Buzon b")
            print("tamano de buzonb",buzonB.count)
            Eliminarsol(Indice: buzonB.count-1)
        }
    }
    
    @objc func Eliminarsol(Indice:Int){
        if Buzon == "A" {
            let noteEntity = "Rbuzon" //Entity Name
            
            let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            
            let note = buzonA[Indice]
            
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
            if Buzon == "B" {
                let noteEntity = "BUZON_A" //Entity Name
                
                let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                
                let note = buzonB[Indice]
                
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
    }
    
    @objc func Update(Xml:String,ext1:String,ext2:String,ext3:String,ext4:String,ext5:String,docc1:String,docc2:String,docia:String,docif:String,fi:String) {
        if Buzon == "A" {
            let request = NSFetchRequest<Rbuzon>(entityName: "Rbuzon")
            do {
                let searchResults = try context.fetch(request)
                for task in searchResults {
                    if task.id_solicitud == Int32(IdSolicitud) {
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
                    if task.id_solicitud_b == Int32(IdSolicitud) {
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
    
    @objc func Insertarbuzon(sol:String,ext1:String,ext2:String,ext3:String,ext4:String,ext5:String,docc1:String,docc2:String,docia:String,docif:String,fi:String){
        
        if Buzon == "A" {
            let fecha = Date()
            
            
            let newBuz = NSEntityDescription.insertNewObject(forEntityName: "Rbuzon", into: context)
            newBuz.setValue("", forKey: "comentario")
            newBuz.setValue(Estatus, forKey: "estatus")
            newBuz.setValue(fecha, forKey: "fecha_alta")
            newBuz.setValue(fecha, forKey: "fecha_modificacion")
            newBuz.setValue(IdSolicitud, forKey: "id_solicitud")//esta debe de ser calculable
            newBuz.setValue(Idusuario, forKey: "id_usuario")
            newBuz.setValue(0, forKey: "motivo")
            newBuz.setValue("", forKey: "producto")
            newBuz.setValue("", forKey: "promedio_scoring")
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
            
            let fecha = Date()
            
            
            let newBuz = NSEntityDescription.insertNewObject(forEntityName: "BUZON_A", into: context)
            
            newBuz.setValue("", forKey: "comentario_b")
            newBuz.setValue(Estatus, forKey: "estatus_b")
            newBuz.setValue(fecha, forKey: "fecha_alta_b")
            newBuz.setValue(fecha, forKey: "fecha_modificacion_b")
            newBuz.setValue(IdSolicitud, forKey: "id_solicitud_b")//esta debe de ser calculable
            newBuz.setValue(Idusuario, forKey: "id_usuario_b")
            newBuz.setValue(0, forKey: "motivo_b")
            newBuz.setValue("", forKey: "producto_b")
            newBuz.setValue("", forKey: "promedio_scoring_b")
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
    /*
    //funcion Switch
    func createSwitch() -> UISwitch{
        let switchControl = UISwitch(frame:CGRect(x: 120, y: 65, width: 0, height: 10))
        switchControl.isOn = false
        //switchControl.setOn(false, animated: false)
        switchControl.addTarget(self, action: #selector(self.switchValueDidChange), for: .valueChanged)
        //switchControl.addTarget(self, action: "switchValueDidChange:", forSelector("switchValueDidChange:"),: .valueChanged)
        return switchControl
    }
    
    @objc func switchValueDidChange(sender:UISwitch!){
        print("Switch Value",sender.isOn)
        if sender.isOn == true {
            print("Guardar Registro")
            validador = 1
            
        }else {
            validador = 0
            print("No agas nada")
        }
    }
    */
    func Anexos() {
        //tabla Anexo1
        Anexo1.append(["Carac":"0","valor":"00"])
        Anexo1.append(["Carac":"1","valor":"01"])
        Anexo1.append(["Carac":"2","valor":"02"])
        Anexo1.append(["Carac":"3","valor":"03"])
        Anexo1.append(["Carac":"4","valor":"04"])
        Anexo1.append(["Carac":"5","valor":"05"])
        Anexo1.append(["Carac":"6","valor":"06"])
        Anexo1.append(["Carac":"7","valor":"07"])
        Anexo1.append(["Carac":"8","valor":"08"])
        Anexo1.append(["Carac":"9","valor":"09"])
        Anexo1.append(["Carac":"&","valor":"10"])
        Anexo1.append(["Carac":"A","valor":"11"])
        Anexo1.append(["Carac":"B","valor":"12"])
        Anexo1.append(["Carac":"C","valor":"13"])
        Anexo1.append(["Carac":"D","valor":"14"])
        Anexo1.append(["Carac":"E","valor":"15"])
        Anexo1.append(["Carac":"F","valor":"16"])
        Anexo1.append(["Carac":"G","valor":"17"])
        Anexo1.append(["Carac":"H","valor":"18"])
        Anexo1.append(["Carac":"I","valor":"19"])
        Anexo1.append(["Carac":"J","valor":"21"])
        Anexo1.append(["Carac":"K","valor":"22"])
        Anexo1.append(["Carac":"L","valor":"23"])
        Anexo1.append(["Carac":"M","valor":"24"])
        Anexo1.append(["Carac":"N","valor":"25"])
        Anexo1.append(["Carac":"O","valor":"26"])
        Anexo1.append(["Carac":"P","valor":"27"])
        Anexo1.append(["Carac":"Q","valor":"28"])
        Anexo1.append(["Carac":"R","valor":"29"])
        Anexo1.append(["Carac":"S","valor":"32"])
        Anexo1.append(["Carac":"T","valor":"33"])
        Anexo1.append(["Carac":"U","valor":"34"])
        Anexo1.append(["Carac":"V","valor":"35"])
        Anexo1.append(["Carac":"W","valor":"36"])
        Anexo1.append(["Carac":"X","valor":"37"])
        Anexo1.append(["Carac":"Y","valor":"38"])
        Anexo1.append(["Carac":"Z","valor":"39"])
        Anexo1.append(["Carac":"Ñ","valor":"40"])
        //Tabla Anexo 2
        Anexo2.append(["Carac":"0","valor":"1"])
        Anexo2.append(["Carac":"1","valor":"2"])
        Anexo2.append(["Carac":"2","valor":"3"])
        Anexo2.append(["Carac":"3","valor":"4"])
        Anexo2.append(["Carac":"4","valor":"5"])
        Anexo2.append(["Carac":"5","valor":"6"])
        Anexo2.append(["Carac":"6","valor":"7"])
        Anexo2.append(["Carac":"7","valor":"8"])
        Anexo2.append(["Carac":"8","valor":"9"])
        Anexo2.append(["Carac":"9","valor":"A"])
        Anexo2.append(["Carac":"10","valor":"B"])
        Anexo2.append(["Carac":"11","valor":"C"])
        Anexo2.append(["Carac":"12","valor":"D"])
        Anexo2.append(["Carac":"13","valor":"E"])
        Anexo2.append(["Carac":"14","valor":"F"])
        Anexo2.append(["Carac":"15","valor":"G"])
        Anexo2.append(["Carac":"16","valor":"H"])
        Anexo2.append(["Carac":"17","valor":"I"])
        Anexo2.append(["Carac":"18","valor":"J"])
        Anexo2.append(["Carac":"19","valor":"K"])
        Anexo2.append(["Carac":"20","valor":"L"])
        Anexo2.append(["Carac":"21","valor":"M"])
        Anexo2.append(["Carac":"22","valor":"N"])
        Anexo2.append(["Carac":"23","valor":"P"])
        Anexo2.append(["Carac":"24","valor":"Q"])
        Anexo2.append(["Carac":"25","valor":"R"])
        Anexo2.append(["Carac":"26","valor":"S"])
        Anexo2.append(["Carac":"27","valor":"T"])
        Anexo2.append(["Carac":"28","valor":"U"])
        Anexo2.append(["Carac":"29","valor":"V"])
        Anexo2.append(["Carac":"30","valor":"W"])
        Anexo2.append(["Carac":"31","valor":"X"])
        Anexo2.append(["Carac":"32","valor":"Y"])
        Anexo2.append(["Carac":"33","valor":"Z"])
        //Tabla anexo 3
        Anexo3.append(["Carac":"0","valor":"00"])
        Anexo3.append(["Carac":"1","valor":"01"])
        Anexo3.append(["Carac":"2","valor":"02"])
        Anexo3.append(["Carac":"3","valor":"03"])
        Anexo3.append(["Carac":"4","valor":"04"])
        Anexo3.append(["Carac":"5","valor":"05"])
        Anexo3.append(["Carac":"6","valor":"06"])
        Anexo3.append(["Carac":"7","valor":"07"])
        Anexo3.append(["Carac":"8","valor":"08"])
        Anexo3.append(["Carac":"9","valor":"09"])
        Anexo3.append(["Carac":"A","valor":"10"])
        Anexo3.append(["Carac":"B","valor":"11"])
        Anexo3.append(["Carac":"C","valor":"12"])
        Anexo3.append(["Carac":"D","valor":"13"])
        Anexo3.append(["Carac":"E","valor":"14"])
        Anexo3.append(["Carac":"F","valor":"15"])
        Anexo3.append(["Carac":"G","valor":"16"])
        Anexo3.append(["Carac":"H","valor":"17"])
        Anexo3.append(["Carac":"I","valor":"18"])
        Anexo3.append(["Carac":"J","valor":"19"])
        Anexo3.append(["Carac":"K","valor":"20"])
        Anexo3.append(["Carac":"L","valor":"21"])
        Anexo3.append(["Carac":"M","valor":"22"])
        Anexo3.append(["Carac":"N","valor":"23"])
        Anexo3.append(["Carac":"O","valor":"24"])
        Anexo3.append(["Carac":"P","valor":"25"])
        Anexo3.append(["Carac":"Q","valor":"26"])
        Anexo3.append(["Carac":"R","valor":"27"])
        Anexo3.append(["Carac":"S","valor":"28"])
        Anexo3.append(["Carac":"T","valor":"29"])
        Anexo3.append(["Carac":"U","valor":"30"])
        Anexo3.append(["Carac":"V","valor":"32"])
        Anexo3.append(["Carac":"W","valor":"33"])
        Anexo3.append(["Carac":"X","valor":"34"])
        Anexo3.append(["Carac":"Y","valor":"35"])
        Anexo3.append(["Carac":"Z","valor":"36"])
      }
    
    func RFC() {
        //Convertir a Mayusculas
        Grnombre = (Gnombre.text?.uppercased())!
        //print("Nombre",Grnombre)
        Grapep = (Gapep.text?.uppercased())!
        Grapem = (Gapem.text?.uppercased())!
        //Nombre
        var letters = Grnombre.characters.map { String($0) }
        //Apellido Paterno
        let longitud2 = Grapep.characters.count
        var letters2 = Grapep.characters.map { String($0) }
        //Apellido Materno
        var letters3 = Grapem.characters.map { String($0) }
        //Primera letra del apellido paterno
        var Rfc = ""
        Rfc = Rfc + letters2[0]
        //Primera vocal del apellido paterno
        var num = 1
        repeat {
            extvocal(valor: String(letters2[num]))
            if banderav == true {
                num = num+1
            }else {
                break
            }
        }while num < longitud2
        Rfc = Rfc + letters2[num]
        //Primera letra del apellido materno
        Rfc = Rfc + letters3[0]
        //Primera letra del nombre
        Rfc = Rfc + letters[0]
        //Obtencion de dias y fecha y año de nacimiento
        Grfecha = Gfecha.text!
        let longitud4 = Grfecha.characters.count
        var letters4 = Grfecha.characters.map { String($0) }
        num = 0
        var cont = 0
        var dia = ""
        var mes = ""
        var anio = ""
        repeat{
            if letters4[num] == "/" {
                num = num+1
                cont = cont+1
            }else {
                if cont == 0 {
                    dia = dia+letters4[num]
                    num = num+1
                }else {
                    if cont == 1 {
                        mes = mes+letters4[num]
                        num = num+1
                    }else {
                        if cont == 2 {
                            anio = anio+letters4[num]
                            num = num+1
                        }
                    }
                }
            }
        }while num < longitud4
        var letters5 = anio.characters.map { String($0) }
        let year = letters5[2] + letters5[3]
        Rfc = Rfc+year+mes+dia
        let nombrec = Grnombre + Grapep + Grapem
        homoclave(nombreC: nombrec, nombre: Grnombre, apep: Grapep, apem: Grapem)
        Grfc.text = Rfc
        
    }
    func extvocal(valor:String){
        var arrayvocal = ["a","e","i","o","u","A","E","I","O","U"]
        var num = 0
        repeat {
            if valor == arrayvocal[num] {
               banderav = false
               break
            }else {
                num = num+1
            }
        }while num < arrayvocal.count
    }
    func homoclave(nombreC:String,nombre:String,apep:String,apem:String) {
        
        print("Nombre",nombre)
        print("Apep:",apep)
        print("Apem",apem)
        print("Nombre completo:",nombreC)
        
        //Descomponer en una cadena de caracteres
        let letters = nombreC.characters.map { String($0) }
        let longitud = nombreC.characters.count
        var num = 0
        repeat{
             Extvalnum(valor: letters[num])
             num = num+1
        }while num < longitud
        
        //Visualizar Valor numerico
        num = 0
        print("***Valor de nombre completo en numeros")
        repeat{
            print("letra:",letters[num],"Valor numerico:",Vnumerico[num])
            
            num=num+1
        }while num < Vnumerico.count
        
    }
    
    func Extvalnum(valor:String) {
      var num = 0
        repeat {
            if valor == Anexo1[num]["Carac"] {
                Vnumerico.append(Anexo1[num]["valor"]!)
                break
            }else {
                num = num+1
            }
        }while num < Anexo1.count
    }
    
    @objc func CargarImagen() {
        //identificacion frente
        let identf : Data = Data(base64Encoded: bidentificacionf, options: .ignoreUnknownCharacters)!
        let decodedimagef = UIImage(data: identf)
        Iidenntificacionf.image = decodedimagef
        Eidentificacionf.text = tidentificacionf
        //identificacion atras
        let identa : Data = Data(base64Encoded: bidentificaciont, options: .ignoreUnknownCharacters)!
        let decodedimagea = UIImage(data: identa)
        Iidentificaciont.image = decodedimagea
        Eidentificaciont.text = tidentificaciont
        //firma
        let fir : Data = Data(base64Encoded: bfirma, options: .ignoreUnknownCharacters)!
        let decodedimagefir = UIImage(data: fir)
        Ifirma.image = decodedimagefir
        Efirma.text = tfirma
       
    }
    
    @objc func frente() {
       
    }
    @objc func atras() {
        
    }
    @objc func firma(){
        if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "Firma") as? Firma {
            sol.margen = Int(myscroll.contentOffset.y)
            //General
            sol.Grnombre = (Gnombre?.text)!
            sol.Grsnombre = Gsnombre.text!
            sol.Grapep = Gapep.text!
            sol.Grapem = Gapem.text!
            sol.Grtipo = Gtipo.text!
            sol.Gridtipo = Gridtipo
            sol.Gridentificacion = Gidentificacion.text!
            sol.sexo = sexo
            sol.Grnacionalidad = Gnacionalidad.text!
            sol.Gridnacionalidad = Gridnacionalidad
            sol.Grfecha = Gfecha.text!
            sol.Grrfc = Grfc.text!
            sol.Grestcivil = Gestcivil.text!
            sol.Gridestcivil = Gridestcivil
            sol.Grnumero = Gnumero.text!
            
            //Domicilio
            sol.Drcalle = Dcalle.text!
            sol.Drnume = Dnume.text!
            sol.Drnumi = Dnumi.text!
            sol.Drcolonia = Dcolonia.text!
            sol.Drestado = Destado.text!
            sol.Dridestado = Dridestado
            sol.Drdel = Ddel.text!
            sol.Driddel = Driddel
            sol.Drcp = Dcp.text!
            sol.Drtiempo = Dtiempo.text!
            sol.Drestatus = Destatus.text!
            sol.Dridestatus = Dridestatus
            sol.Drmonto = Dmonto.text!
            sol.Drcorreo = Dcorreo.text!
            sol.Drtelefono = Dtelefono.text!
            sol.Drmovil = Dmovil.text!
            sol.Drcompania = Dcompania.text!
            sol.Dridcompania = Dridcompania
            
            //Datos economicos
            sol.Drnombre = Dnombre.text!
            sol.Drgiro = Dgiro.text!
            sol.Drantiguedad = Dantiguedad.text!
            sol.Drtipo = Dtipo.text!
            sol.Dridtipo = Dridtipo
            sol.Drpuesto = Dpuesto.text!
            sol.Dringreso = Dingreso.text!
            sol.Drcasado = Dcasado.text!
            sol.Drfuente = Dfuente.text!
            sol.Drotros = Dotros.text!
            sol.Drcalle2 = Dcalle2.text!
            sol.Drnume2 = Dnume2.text!
            sol.Drnumi2 = Dnumi2.text!
            sol.Drcolonia2 = Dcolonia2.text!
            sol.Drestado2 = Destado2.text!
            sol.Dridestado2 = Dridestado2
            sol.Drdel2 = Ddel2.text!
            sol.Driddel2 = Driddel2
            sol.Drcp2 = Dcp2.text!
            sol.Drtelefono2 = Dtelefono2.text!
            sol.Drextencion = Dextencion.text!
            
            //Persona politica
            sol.person = persona
            sol.Prfuncion = Pfuncion.text!
            sol.parentesco = parentesco
            sol.Prfuncion2 = Pfuncion2.text!
            sol.Prparentesco = Pparentesco.text!
            
            //Referencias familiares
            sol.Rrnombre = Rnombre.text!
            sol.Rrapep = Rapep.text!
            sol.Rrapem = Rapem.text!
            sol.Rrnacionalidad = Rnacionalidad.text!
            sol.Rridnacionalidad = Rridnacionalidad
            sol.Rrtelefono = Rtelefono.text!
            
            sol.R2rnombre = R2nombre.text!
            sol.R2rapep = R2apep.text!
            sol.R2rapem = R2apem.text!
            sol.Rr2nacionalidad = R2nacionalidad.text!
            sol.Rridnacionalidad2 = Rridnacionalidad2
            sol.R2rtelefono = R2telefono.text!
            
            sol.R3rnombre = R3nombre.text!
            sol.R3rapep = R3apep.text!
            sol.R3rapem = R3apem.text!
            sol.Rr3nacionalidad = R3nacionalidad.text!
            sol.Rridnacionalidad3 = Rridnacionalidad3
            sol.R3rtelefono = R3telefono.text!
            
            //Documentos
            sol.bidentificacionf = bidentificacionf
            sol.tidentificacionf = tidentificacionf
            sol.bidentificaciont = bidentificaciont
            sol.tidentificaciont = tidentificaciont
            sol.bfirma = bfirma
            sol.tfirma = tfirma
            sol.marco = Imagen
            sol.guardar = guardar
            
            sol.deslizar = 1
            self.navigationController?.pushViewController(sol, animated: false)
        }
    }
    
    @IBAction func Addextra1(_ sender: UIButton) {
        Iextra1.alpha = 1
        Btextra1.alpha = 0
        Eextra1.alpha = 1
        Btextra2.alpha = 1
        Imagen = 1
    }
    
    @IBAction func Addextra2(_ sender: UIButton) {
        Iextra2.alpha = 1
        Btextra2.alpha = 0
        Eextra2.alpha = 1
        Btextra3.alpha = 1
        Imagen = 2
    }
    
    @IBAction func Addextra3(_ sender: UIButton) {
        Iextra3.alpha = 1
        Btextra3.alpha = 0
        Eextra3.alpha = 1
        Btextra4.alpha = 1
        Imagen = 3
    }
    
    @IBAction func Addextra4(_ sender: UIButton) {
        Iextra4.alpha = 1
        Btextra4.alpha = 0
        Eextra4.alpha = 1
        Btextra5.alpha = 1
        Imagen = 4
    }
    
    @IBAction func Addextra5(_ sender: UIButton) {
        Iextra5.alpha = 1
        Btextra5.alpha = 0
        Eextra5.alpha = 1
        Imagen = 5
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
        
        if textField == self.Gsnombre {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Gsnombre.text else { return true }
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
        
        if textField == self.Gidentificacion {
            //solo tiene un rango de 20 caracteres
            guard let text = Gidentificacion.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 20
        }
        
      
        
   
        //******************************************Domicilio*******************************
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
        
        if textField == self.Dnume {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
            //solo tiene un rango de 4 caracteres
            guard let text = Dnume.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 50
            }
        }
        
        if textField == self.Dnumi {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
             //solo tiene un rango de 4 caracteres
             guard let text = Dnumi.text else { return true }
             let newLength = text.characters.count + string.characters.count - range.length
             return newLength <= 50
                 }
        }
        
        if textField == self.Dcolonia {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Dcolonia.text else { return true }
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
        
        if textField == self.Dtiempo {
           //solo tiene un rango de 2 caracteres
                guard let text = Dtiempo.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 2
        }
        
        if textField == self.Dmonto {
            if(string == "." ){
                let countdots = (Dmonto.text?.components(separatedBy: ".").count)! - 1
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
        
        if textField == self.Dmovil {
           //solo tiene un rango de 10 caracteres
           guard let text = Dmovil.text else { return true }
           let newLength = text.characters.count + string.characters.count - range.length
           return newLength <= 10
        }
        
        //******************************Datos economicos*********************************
        if textField == self.Dnombre {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Dnombre.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Dgiro {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Dgiro.text else { return true }
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
        
        if textField == self.Dcasado {
            //solo tiene un rango de 2 caracteres
            guard let text = Dcasado.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 2
        }
        
        if textField == self.Dfuente {
            //solo tiene un rango de 2 caracteres
            guard let text = Dcasado.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 10
        }
        
        if textField == self.Dotros {
           //solo tiene un rango de 7 caracteres
           guard let text = Dotros.text else { return true }
           let newLength = text.characters.count + string.characters.count - range.length
           return newLength <= 6
        }
        
        if textField == self.Dcalle2 {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Dcalle2.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Dnume2 {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Dnume2.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Dnumi2 {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Dnumi2.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Dcolonia2 {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Dcolonia2.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 50
            }
        }
        
        if textField == self.Dcp2 {
            //solo tiene un rango de 5 caracteres
            guard let text = Dcp2.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 5
        }
        
        if textField == self.Dtelefono2 {
            //solo tiene un rango de 14 caracteres
            guard let text = Dtelefono2.text else { return true }
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
        
        if textField == self.Pparentesco {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 50 caracteres
                guard let text = Pparentesco.text else { return true }
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
   
    
    //Ocultar Teclado
    @objc func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Nuevogeneral.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
        
    }
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
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
            //funcion para calcular RFC
            if Gnombre.text != "" && Gapep.text != "" && Gapem.text != "" && Gfecha.text != "Fecha de nacimiento*" && Grfc.text == "RFC"{
                RFC()
                Vnumerico.removeAll()
            }
            
        }
        if scrollView.contentOffset.y > 200 && scrollView.contentOffset.y < 692 {
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
            //funcion para calcular RFC
            if Gnombre.text != "" && Gapep.text != "" && Gapem.text != "" && Gfecha.text != "Fecha de nacimiento*" && Grfc.text == "RFC"{
                RFC()
                Vnumerico.removeAll()
            }
        }
        if scrollView.contentOffset.y > 692 && scrollView.contentOffset.y < 1349 {
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
        if scrollView.contentOffset.y > 1349 && scrollView.contentOffset.y < 1758 {
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
        if  scrollView.contentOffset.y > 1758 && scrollView.contentOffset.y < 2393 {
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
   
    
    //Buscar Catalogo Activo
    @objc func Buscarparamca() {
        var num = 0
        repeat{
            if paramArray[num].parametro == "CATALOGO_ACTIVO" {
                //Catalogo Activo
                break
            }else {
                num = num+1
            }
        }while num < paramArray.count
        if paramArray[num].valor == "A" {
            Catalogoactivo = "A"
        }else {
            Catalogoactivo = "B"
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
    
    
    //General
    
    @IBAction func Tipo(_ sender: UIButton) {
        
        Gptipo.alpha = 1
    }

    @IBAction func Hombre(_ sender: UISwitch) {
        if Gh.isOn {
            sexo = "MASCULINO"
            Gm.isOn = false
        }
    }
    
    @IBAction func Mujer(_ sender: UISwitch) {
        if Gm.isOn {
            sexo = "FEMENINO"
            Gh.isOn = false
        }
    }
    

    @IBAction func Nacionalidad(_ sender: UIButton) {
        Gpnacionalidad.alpha = 1
    }
   
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        let strDate = dateFormatter.string(from: Gpfecha.date)
        self.Gfecha.text = strDate
        
    }
  
    @IBAction func Fecha(_ sender: UIButton) {
        if visibilidad == false {
            Gpfecha.alpha = 1
            visibilidad = true
        }else {
            Gpfecha.alpha = 0
            visibilidad = false
        }
        
    }
    
    @IBAction func EstadoCivil(_ sender: UIButton) {
        Gpestcivil.alpha = 1
    }
    
    @IBAction func Numerodedependientes(_ sender: UIButton) {
        Gpnumero.alpha = 1
    }
    //Domilicio
    @IBAction func Estado(_ sender: UIButton) {
        Dpestado.alpha = 1
    }
    
    @IBAction func Delegacion(_ sender: UIButton) {
        Dpdel.alpha = 1
    }
    
    @IBAction func Estatus(_ sender: UIButton) {
        Dpestatus.alpha = 1
    }
    
    @IBAction func Compania(_ sender: UIButton) {
        Dpcompania.alpha = 1
    }
    //Datos economicos
    @IBAction func Tipocontrato(_ sender: UIButton) {
        Dptipo.alpha = 1
    }
    
    @IBAction func Estado2(_ sender: UIButton) {
        Dpestado2.alpha = 1
    }
    
    @IBAction func Delegacion2(_ sender: UIButton) {
        Dpdel2.alpha = 1
    }
    //persona politica
    
    @IBAction func psi(_ sender: UISwitch) {
        if Psi.isOn {
            persona = "SI"
            Pno.isOn = false
            Pfuncion.alpha = 1
        }
    }
    
    @IBAction func pno(_ sender: UISwitch) {
        if Pno.isOn {
            persona = "NO"
            Psi.isOn = false
            Pfuncion.alpha = 0
        }
    }
    
    @IBAction func psi2(_ sender: UISwitch) {
        if Psi2.isOn {
            parentesco = "SI"
            Pno2.isOn = false
            Pfuncion2.alpha = 1
            Pparentesco.alpha = 1
        }
    }
    
    @IBAction func pno2(_ sender: UISwitch) {
        if Pno2.isOn {
            parentesco = "NO"
            Psi2.isOn = false
            Pfuncion2.alpha = 0
            Pparentesco.alpha = 0
        }
    }
   
    //Referencias familiares
  
    @IBAction func Nacionalidad2(_ sender: UIButton) {
        Rpnacionalidad.alpha = 1
    }
   
    @IBAction func Nacionalidad3(_ sender: UIButton) {
        R2pnacionalidad.alpha = 1
    }
    
    @IBAction func Nacionalidad4(_ sender: UIButton) {
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
           self.Gnacionalidad.text = self.Nacionalidad[row]["Desc"]!
            Gridnacionalidad = self.Nacionalidad[row]["Id"]!
            Gpnacionalidad.alpha = 0
        }
        if pickerView == self.Gpestcivil {
            self.Gestcivil.text = self.Estadocivil[row]["Desc"]!
            Gridestcivil =  self.Estadocivil[row]["Id"]!
            Gpestcivil.alpha = 0
        }
        if pickerView == self.Gpnumero {
            self.Gnumero.text = self.dependientes[row]
            Gpnumero.alpha = 0
        }
        if pickerView == self.Dpestado {
            self.Destado.text = self.Estado[row]["Desc"]!
            Dridestado = self.Estado[row]["Id"]!
            Dpestado.alpha = 0
        }
        if pickerView == self.Dpdel {
            self.Ddel.text = self.Delegacion[row]["Desc"]!
            Driddel = self.Delegacion[row]["Id"]!
            Dpdel.alpha = 0
        }
        if pickerView == self.Dpestatus {
            self.Destatus.text = self.Arraystatus[row]["Desc"]!
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
            self.Destado2.text = self.Estado[row]["Desc"]!
            Dridestado2 =  self.Estado[row]["Id"]!
            Dpestado2.alpha = 0
        }
        if pickerView == self.Dpdel2 {
            self.Ddel2.text = self.Delegacion[row]["Desc"]!
            Driddel2 = self.Delegacion[row]["Id"]!
            Dpdel2.alpha = 0
        }
        if pickerView == self.Rpnacionalidad {
            self.Rnacionalidad.text = self.Nacionalidad[row]["Desc"]!
            Rridnacionalidad = self.Nacionalidad[row]["Id"]!
            Rpnacionalidad.alpha = 0
        }
        if pickerView == self.R2pnacionalidad {
            self.R2nacionalidad.text = self.Nacionalidad[row]["Desc"]!
            Rridnacionalidad2 = self.Nacionalidad[row]["Id"]!
            R2pnacionalidad.alpha = 0
        }
        if pickerView == self.R3pnacionalidad {
            self.R3nacionalidad.text = self.Nacionalidad[row]["Desc"]!
            Rridnacionalidad3 = self.Nacionalidad[row]["Id"]!
            R3pnacionalidad.alpha = 0
        }
    }
}
