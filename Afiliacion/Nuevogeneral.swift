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
   
    //General
    @IBOutlet weak var General: UILabel!
    @IBOutlet weak var Gnombre: UITextField!
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
    
    //Arreglo de Spinner
    @objc var Tipo = [Dictionary<String,String>]()
    @objc var Nacionalidad = [Dictionary<String,String>]()
    @objc var Estadocivil = [Dictionary<String,String>]()
    @objc var Estado = [Dictionary<String,String>]()
    @objc var Delegacion = [Dictionary<String,String>]()
    @objc var Compania = [Dictionary<String,String>]()
    @objc var Estatus = [Dictionary<String,String>]()
    @objc var contrato = [Dictionary<String,String>]()
    var dependientes = ["1","2","4","5","6","7","8","9","10"]
    
    //catalogo activo
    @objc var Catalogoactivo = ""
    @objc var visibilidad = false
    @objc var deslizar = 0
    @objc var margeny = 0
   
    //variable donde se almacena la vocal del apellido paterno
    var vocal = ""
    var banderav:Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //funcion que oculta el teclado
        self.hideKeyboardWhenTappedAround()
        myscroll.delegate = self
        
        fetchData2()
        fetchData5()
        fetchData6()
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
        Gnombre.delegate = self
        Gnombre.layer.cornerRadius = 15
        Gnombre.layer.borderWidth = 1
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
        
        Gpnacionalidad.delegate = self
        Gpnacionalidad.dataSource = self as? UIPickerViewDataSource
        
        Gpestcivil.delegate = self
        Gpestcivil.dataSource = self as? UIPickerViewDataSource
        
        Gpnumero.delegate = self
        Gpnumero.dataSource = self as? UIPickerViewDataSource
        
        Dpestado.delegate = self
        Dpestado.dataSource = self as? UIPickerViewDataSource
        
        Dpdel.delegate = self
        Dpdel.dataSource = self as? UIPickerViewDataSource
        
        Dpestatus.delegate = self
        Dpestatus.dataSource = self as? UIPickerViewDataSource
        
        Dpcompania.delegate = self
        Dpcompania.dataSource = self as? UIPickerViewDataSource
    
        Dptipo.delegate = self
        Dptipo.dataSource = self as? UIPickerViewDataSource
        
        Dpestado2.delegate = self
        Dpestado2.dataSource = self as? UIPickerViewDataSource
        
        Dpdel2.delegate = self
        Dpdel2.dataSource = self as? UIPickerViewDataSource
        
        Rpnacionalidad.delegate = self
        Rpnacionalidad.dataSource = self as? UIPickerViewDataSource
        
        R2pnacionalidad.delegate = self
        R2pnacionalidad.dataSource = self as? UIPickerViewDataSource
        
        R3pnacionalidad.delegate = self
        R3pnacionalidad.dataSource = self as? UIPickerViewDataSource
        
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
            //General
            Gnombre.text = Grnombre
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
                Pfuncion.alpha = 1
            }
            if persona == "NO" {
                Pno.isOn = true
                Pfuncion2.alpha = 1
                Pparentesco.alpha = 1
            }
               
            
            Pfuncion.text = Prfuncion
            
            if parentesco == "SI" {
                Psi2.isOn = true
            }
            if parentesco == "NO" {
                Pno2.isOn = true
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
        }else {
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
        //Accion en etiquetas
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
        //funcion para calcular RFC
        if Gnombre.text != "" && Gapep.text != "" && Gapem.text != "" && Gfecha.text != "Fecha de nacimiento*"{
             RFC()
        }
        //recuperar valor de margen
        DispatchQueue.main.async
            {
                self.myscroll.contentOffset.y = CGFloat(self.margeny)
            }
    }
    func RFC() {
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
    @objc func CargarImagen() {
        //identificacion frente
        let identf : Data = Data(base64Encoded: bidentificacionf, options: .ignoreUnknownCharacters)!
        let decodedimagef = UIImage(data: identf)
        Iidenntificacionf.image = decodedimagef
        
        //identificacion atras
        let identa : Data = Data(base64Encoded: bidentificaciont, options: .ignoreUnknownCharacters)!
        let decodedimagea = UIImage(data: identa)
        Iidentificaciont.image = decodedimagea
        
        //firma
        let fir : Data = Data(base64Encoded: bfirma, options: .ignoreUnknownCharacters)!
        let decodedimagefir = UIImage(data: fir)
        Ifirma.image = decodedimagefir
        
       
    }
    
    @objc func frente() {
        if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "Identificacionf") as? Identificacionf {
            sol.margen = Int(myscroll.contentOffset.y)
            //General
            sol.Grnombre = Gnombre.text!
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
            sol.bidentificaciont = bidentificaciont
            
            sol.bfirma = bfirma
            
            sol.deslizar = 1
            self.navigationController?.pushViewController(sol, animated: false)
        }
    }
    @objc func atras() {
        
    }
    @objc func firma(){
        if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "Firma") as? Firma {
            sol.margen = Int(myscroll.contentOffset.y)
            //General
            sol.Grnombre = Gnombre.text!
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
                guard let text = Gnombre.text else { return true }
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
            //solo tiene un rango de 4 caracteres
            guard let text = Dnume.text else { return true }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= 4
        }
        
        if textField == self.Dnumi {
        //solo tiene un rango de 4 caracteres
        guard let text = Dnumi.text else { return true }
        let newLength = text.characters.count + string.characters.count - range.length
        return newLength <= 4
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
            guard let text = Rtelefono.text else { return true }
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
            guard let text = Rtelefono.text else { return true }
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
            
            if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "New") as? Nuevo {
                sol.identificador = 1
                sol.margen = Int(scrollView.contentOffset.y)
                //General
                sol.Grnombre = Gnombre.text!
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
                
                sol.deslizar = 1
                self.navigationController?.pushViewController(sol, animated: false)
            }
            
        }
        if scrollView.contentOffset.y > 200 && scrollView.contentOffset.y < 692{
            // Vistadata(valor: 2)
            print("domicilio")
            
            if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "New") as? Nuevo {
                sol.identificador = 2
                sol.margen = Int(scrollView.contentOffset.y)
                //General
                sol.Grnombre = Gnombre.text!
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
                
                sol.deslizar = 1
                self.navigationController?.pushViewController(sol, animated: false)
            }
            
        }
        if scrollView.contentOffset.y > 692 && scrollView.contentOffset.y < 1349{
            //Vistadata(valor: 3)
            print("Datos Economicos")
            
            if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "New") as? Nuevo {
                sol.identificador = 3
                sol.margen = Int(scrollView.contentOffset.y)
                //General
                sol.Grnombre = Gnombre.text!
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
                
                sol.deslizar = 1
                self.navigationController?.pushViewController(sol, animated: false)
            }
            
        }
        
        if scrollView.contentOffset.y > 1349 && scrollView.contentOffset.y < 1758{
            //Vistadata(valor: 4)
            print("Persona Politica")
            
            if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "New") as? Nuevo {
                sol.identificador = 4
                sol.margen = Int(scrollView.contentOffset.y)
                //General
                sol.Grnombre = Gnombre.text!
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

                
                sol.deslizar = 1
                self.navigationController?.pushViewController(sol, animated: false)
            }
        }
        if  scrollView.contentOffset.y > 1758 && scrollView.contentOffset.y < 2393{
            
            print("Referencias Familiares")
            if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "New") as? Nuevo {
                sol.identificador = 5
                sol.margen = Int(scrollView.contentOffset.y)
                //General
                sol.Grnombre = Gnombre.text!
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
                
                sol.deslizar = 1
                self.navigationController?.pushViewController(sol, animated: false)
            }
        }
        if  scrollView.contentOffset.y > 2393 {
           
            print("Documentos")
            if  let sol = self.storyboard?.instantiateViewController(withIdentifier: "New") as? Nuevo {
                sol.identificador = 6
                sol.margen = Int(scrollView.contentOffset.y)
                //General
                sol.Grnombre = Gnombre.text!
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
                
                
                sol.deslizar = 1
                self.navigationController?.pushViewController(sol, animated: false)
            }
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
                                        Estatus.append(["Id":String(cataloA[num].id_catalogo),"Desc":cataloA[num].descripcion!])
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
                                        Estatus.append(["Id":String(cataloB[num].id_catalogo),"Desc":cataloB[num].descripcion!])
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
            count = Estatus.count
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
            valor = Estatus[row]["Desc"]!
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
            self.Destatus.text = self.Estatus[row]["Desc"]!
            Dridestatus = self.Estatus[row]["Id"]!
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
