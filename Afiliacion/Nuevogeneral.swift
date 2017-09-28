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
    @IBOutlet weak var Gnombre: UITextField!
    var Grnombre = ""
    @IBOutlet weak var Gsnombre: UITextField!
    var Grsnombre = ""
    @IBOutlet weak var Gapep: UITextField!
    var Grapep = ""
    @IBOutlet weak var Gapem: UITextField!
    var Grapem = ""
    @IBOutlet weak var Gidentificacion: UITextField!
    var Gridentificacion = ""
    @IBOutlet weak var Grfc: UITextField!
    var Grrfc = ""
    @IBOutlet weak var Gnumero: UITextField!
    var Grnumero = ""
    @IBOutlet weak var Gtipo: UILabel!
    var Grtipo = ""
    var Gridtipo = "" //id
    @IBOutlet weak var Gptipo: UIPickerView!
    @IBOutlet weak var Gh: UISwitch!
    @IBOutlet weak var Gm: UISwitch!
    var sexo = ""
    @IBOutlet weak var Gnacionalidad: UILabel!
    var Grnacionalidad = ""
    var Gridnacionalidad = "" //id
    @IBOutlet weak var Gpnacionalidad: UIPickerView!
    @IBOutlet weak var Gfecha: UILabel!
    var Grfecha = ""
    @IBOutlet weak var Gpfecha: UIDatePicker!
    @IBOutlet weak var Gestcivil: UILabel!
    var Grestcivil = ""
    var Gridestcivil = "" //id
    @IBOutlet weak var Gpestcivil: UIPickerView!
    
    
    
    //Domicilio
    @IBOutlet weak var Dcalle: UITextField!
    var Drcalle = ""
    @IBOutlet weak var Dnume: UITextField!
    var Drnume = ""
    @IBOutlet weak var Dnumi: UITextField!
    var Drnumi = ""
    @IBOutlet weak var Dcolonia: UITextField!
    var Drcolonia = ""
    @IBOutlet weak var Destado: UILabel!
    var Drestado = ""
    var Dridestado = ""
    @IBOutlet weak var Dpestado: UIPickerView!
    @IBOutlet weak var Ddel: UILabel!
    var Drdel = ""
    var Driddel = ""
    @IBOutlet weak var Dpdel: UIPickerView!
    @IBOutlet weak var Dcp: UITextField!
    var Drcp = ""
    @IBOutlet weak var Dtiempo: UITextField!
    var Drtiempo = ""
    @IBOutlet weak var Destatus: UILabel!
    var Drestatus = ""
    var Dridestatus = ""
    @IBOutlet weak var Dpestatus: UIPickerView!
    @IBOutlet weak var Dmonto: UITextField!
    var Drmonto = ""
    @IBOutlet weak var Dcorreo: UITextField!
    var Drcorreo = ""
    @IBOutlet weak var Dtelefono: UITextField!
    var Drtelefono = ""
    @IBOutlet weak var Dmovil: UITextField!
    var Drmovil = ""
    @IBOutlet weak var Dcompania: UILabel!
    var Drcompania = ""
    var Dridcompania = ""
    @IBOutlet weak var Dpcompania: UIPickerView!
    
    //Datos econmicos
    
    @IBOutlet weak var Dnombre: UITextField!
    var Drnombre = ""
    @IBOutlet weak var Dgiro: UITextField!
    var Drgiro = ""
    @IBOutlet weak var Dantiguedad: UITextField!
    var Drantiguedad = ""
    @IBOutlet weak var Dtipo: UILabel!
    var Drtipo = ""
    var Dridtipo = ""
    @IBOutlet weak var Dptipo: UIPickerView!
    @IBOutlet weak var Dpuesto: UITextField!
    var Drpuesto = ""
    @IBOutlet weak var Dingreso: UITextField!
    var Dringreso = ""
    @IBOutlet weak var Dcasado: UITextField!
    var Drcasado = ""
    @IBOutlet weak var Dfuente: UITextField!
    var Drfuente = ""
    @IBOutlet weak var Dotros: UITextField!
    var Drotros = ""
    @IBOutlet weak var Dcalle2: UITextField!
    var Drcalle2 = ""
    @IBOutlet weak var Dnume2: UITextField!
    var Drnume2 = ""
    @IBOutlet weak var Dnumi2: UITextField!
    var Drnumi2 = ""
    @IBOutlet weak var Dcolonia2: UITextField!
    var Drcolonia2 = ""
    @IBOutlet weak var Destado2: UILabel!
    var Drestado2 = ""
    var Dridestado2 = ""
    @IBOutlet weak var Dpestado2: UIPickerView!
    @IBOutlet weak var Ddel2: UILabel!
    var Drdel2 = ""
    var Driddel2 = ""
    @IBOutlet weak var Dpdel2: UIPickerView!
    @IBOutlet weak var Dcp2: UITextField!
    var Drcp2 = ""
    @IBOutlet weak var Dtelefono2: UITextField!
    var Drtelefono2 = ""
    @IBOutlet weak var Dextencion: UITextField!
    var Drextencion = ""
    
    //Persona politica
    @IBOutlet weak var Psi: UISwitch!
    @IBOutlet weak var Pno: UISwitch!
    var persona = ""
    @IBOutlet weak var Pfuncion: UITextField!
    var Prfuncion = ""
    @IBOutlet weak var Psi2: UISwitch!
    @IBOutlet weak var Pno2: UISwitch!
    var parentesco = ""
    @IBOutlet weak var Pfuncion2: UITextField!
    var Prfuncion2 = ""
    @IBOutlet weak var Pparentesco: UITextField!
    var Prparentesco = ""
    
    //Referencias Familiares
    
    @IBOutlet weak var Rnombre: UITextField!
    var Rrnombre = ""
    @IBOutlet weak var Rapep: UITextField!
    var Rrapep = ""
    @IBOutlet weak var Rapem: UITextField!
    var Rrapem = ""
    @IBOutlet weak var Rnacionalidad: UILabel!
    var Rrnacionalidad = ""
    var Rridnacionalidad = ""
    @IBOutlet weak var Rpnacionalidad: UIPickerView!
    @IBOutlet weak var Rtelefono: UITextField!
    var Rrtelefono = ""
    
    @IBOutlet weak var R2nombre: UITextField!
    var R2rnombre = ""
    @IBOutlet weak var R2apep: UITextField!
    var R2rapep = ""
    @IBOutlet weak var R2apem: UITextField!
    var R2rapem = ""
    @IBOutlet weak var R2nacionalidad: UILabel!
    var R2rnacionalidad = ""
    var Rridnacionalidad2 = ""
    @IBOutlet weak var R2pnacionalidad: UIPickerView!
    @IBOutlet weak var R2telefono: UITextField!
    var R2rtelefono = ""
    
    @IBOutlet weak var R3nombre: UITextField!
    var R3rnombre = ""
    @IBOutlet weak var R3apep: UITextField!
    var R3rapep = ""
    @IBOutlet weak var R3apem: UITextField!
    var R3rapem = ""
    @IBOutlet weak var R3nacionalidad: UILabel!
    var Rr3nacionalidad = ""
    var Rridnacionalidad3 = ""
    @IBOutlet weak var R3pnacionalidad: UIPickerView!
    @IBOutlet weak var R3telefono: UITextField!
    var R3rtelefono = ""
    
    //Documentos
    @IBOutlet weak var Iidenntificacionf: UIImageView!
    var bidentificacionf = ""
    @IBOutlet weak var Iidentificaciont: UIImageView!
    var bidentificaciont = ""
    @IBOutlet weak var Icontrato: UIImageView!
    var bcontrato = ""
    @IBOutlet weak var Icontratop: UIImageView!
    var bcontratop = ""
    @IBOutlet weak var Ifirma: UIImageView!
    var bfirma = ""
    //Base de datos
    var userArray:[USUARIO] = []
    var paramArray:[PARAMETRO] = []
    var cataloA:[CATALOGO_A] = []
    var cataloB:[Rcatalogo] = []
    
    
    //Datos de promotor
    var usuario = ""
    var pass = ""
    var comp = ""
    
    //Arreglo de Spinner
    var Tipo = [Dictionary<String,String>]()
    var Nacionalidad = [Dictionary<String,String>]()
    var Estadocivil = [Dictionary<String,String>]()
    var Estado = [Dictionary<String,String>]()
    var Delegacion = [Dictionary<String,String>]()
    var Compania = [Dictionary<String,String>]()
    var Estatus = [Dictionary<String,String>]()
    var contrato = [Dictionary<String,String>]()
    
    //catalogo activo
    var Catalogoactivo = ""
    var visibilidad = false
    var deslizar = 0
    var margeny = 0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //funcion que oculta el teclado
        self.hideKeyboardWhenTappedAround()
        myscroll.delegate = self
        fetchData()
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
        Gnombre.delegate = self
        Gsnombre.delegate = self
        Gapep.delegate = self
        Gapem.delegate = self
        Gidentificacion.delegate = self
        Grfc.delegate = self
        Gnumero.delegate = self
        //Domicilio
        Dcalle.delegate = self
        Dnume.delegate = self
        Dnumi.delegate = self
        Dcolonia.delegate = self
        Dcp.delegate = self
        Dtiempo.delegate = self
        Dmonto.delegate = self
        Dtelefono.delegate = self
        Dmovil.delegate = self
        //Datos economicos
        Dnombre.delegate = self
        Dgiro.delegate = self
        Dantiguedad.delegate = self
        Dpuesto.delegate = self
        Dingreso.delegate = self
        Dcasado.delegate = self
        Dfuente.delegate = self
        Dotros.delegate = self
        Dcalle2.delegate = self
        Dnume2.delegate = self
        Dnumi2.delegate = self
        Dcolonia2.delegate = self
        Dcp2.delegate = self
        Dtelefono2.delegate = self
        Dextencion.delegate = self
        //Persona politica
        Pfuncion.delegate = self
        Pfuncion2.delegate = self
        Pparentesco.delegate = self
        
        //Referencias familiares
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
        
        //Delgate de picker view
        Gptipo.delegate = self
        Gptipo.dataSource = self as? UIPickerViewDataSource
        
        Gpnacionalidad.delegate = self
        Gpnacionalidad.dataSource = self as? UIPickerViewDataSource
        
        Gpestcivil.delegate = self
        Gpestcivil.dataSource = self as? UIPickerViewDataSource
        
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
            Grfc.text = Grrfc
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
            }
            if persona == "NO" {   //Aqui me quede !!!!!!!!!!
                Pno.isOn = true
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
      
        
        //Contrato pt1
        let cont = UITapGestureRecognizer(target: self, action: #selector(Nuevogeneral.cont))
        Icontrato.addGestureRecognizer(cont)
        Icontrato.isUserInteractionEnabled = true
      
        
        //Contrato pt2
        let cont2 = UITapGestureRecognizer(target: self, action: #selector(Nuevogeneral.contp))
        Icontratop.addGestureRecognizer(cont2)
        Icontratop.isUserInteractionEnabled = true
        
        //funcion para cargar imagen en imageview
        CargarImagen()
        //recuperar valor de margen
        DispatchQueue.main.async
            {
                self.myscroll.contentOffset.y = CGFloat(self.margeny)
            }
    }
    
    func CargarImagen() {
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
        
        //contrato
        let cont : Data = Data(base64Encoded: bcontrato, options: .ignoreUnknownCharacters)!
        let decodedimagecont = UIImage(data: cont)
        Icontrato.image = decodedimagecont
        
        //contrato parte 2
        let contp : Data = Data(base64Encoded: bcontratop, options: .ignoreUnknownCharacters)!
        let decodedimagecontp = UIImage(data: contp)
        Icontratop.image = decodedimagecontp
    }
    
    func frente() {
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
            sol.bcontrato = bcontrato
            sol.bcontratop = bcontratop
            sol.bfirma = bfirma
            
            sol.deslizar = 1
            self.navigationController?.pushViewController(sol, animated: false)
        }
    }
    func atras() {
        
    }
    func firma(){
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
            sol.bidentificaciont = bidentificaciont
            sol.bcontrato = bcontrato
            sol.bcontratop = bcontratop
            sol.bfirma = bfirma
            
            sol.deslizar = 1
            self.navigationController?.pushViewController(sol, animated: false)
        }
    }
    func cont() {
        
    }
    func contp() {
        
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
        
        if textField == self.Grfc {
            //solo acepta letras y numeros
            let invalidChars = NSCharacterSet.alphanumerics.inverted
            let rango = string.rangeOfCharacter(from: invalidChars)
            if rango != nil {
                
                return false
            } else {
                //solo tiene un rango de 13 caracteres
                guard let text = Grfc.text else { return true }
                let newLength = text.characters.count + string.characters.count - range.length
                return newLength <= 13
            }
        }
        
        if textField == self.Gnumero {
          //solo tiene un rango de 3 caracteres
          guard let text = Gnumero.text else { return true }
          let newLength = text.characters.count + string.characters.count - range.length
          return newLength <= 3
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
            return newLength <= 7
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
           return newLength <= 7
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
    
    //Funcion para validar correo electronico
    func validateEmail(enteredEmail:String) -> Bool {
        
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
        
    }
    //Ocultar Teclado
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Nuevogeneral.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    func dismissKeyboard() {
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
                sol.bidentificaciont = bidentificaciont
                sol.bcontrato = bcontrato
                sol.bcontratop = bcontratop
                sol.bfirma = bfirma

                
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
                sol.bidentificaciont = bidentificaciont
                sol.bcontrato = bcontrato
                sol.bcontratop = bcontratop
                sol.bfirma = bfirma

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
                sol.bidentificaciont = bidentificaciont
                sol.bcontrato = bcontrato
                sol.bcontratop = bcontratop
                sol.bfirma = bfirma

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
                sol.bidentificaciont = bidentificaciont
                sol.bcontrato = bcontrato
                sol.bcontratop = bcontratop
                sol.bfirma = bfirma

                
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
                sol.bidentificaciont = bidentificaciont
                sol.bcontrato = bcontrato
                sol.bcontratop = bcontratop
                sol.bfirma = bfirma

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
                sol.bidentificaciont = bidentificaciont
                sol.bcontrato = bcontrato
                sol.bcontratop = bcontratop
                sol.bfirma = bfirma

                
                
                sol.deslizar = 1
                self.navigationController?.pushViewController(sol, animated: false)
            }
        }
        
    }
    
    func fetchData () {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            userArray = try context.fetch(USUARIO.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    func fetchData2() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            paramArray = try context.fetch(PARAMETRO.fetchRequest())
        }catch {
            print(error)
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
    
    //Buscar Catalogo Activo
    func Buscarparamca() {
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
    func CatalogoA(){
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
    func CatalogoB() {
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
        }
    }
    
    @IBAction func pno(_ sender: UISwitch) {
        if Pno.isOn {
            persona = "NO"
          Psi.isOn = false
        }
    }
    
    @IBAction func psi2(_ sender: UISwitch) {
        if Psi2.isOn {
            parentesco = "SI"
            Pno2.isOn = false
        }
    }
    
    @IBAction func pno2(_ sender: UISwitch) {
        if Pno2.isOn {
            parentesco = "NO"
            Psi2.isOn = false
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
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
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
    
    @IBAction func Guardar(_ sender: UIButton) {
        
        //Obtencion de dias y fecha y año de nacimiento
        let longitud = Grfecha.characters.count
        var letters = Grfecha.characters.map { String($0) }
        var num = 0
        var cont = 0
        var dia = ""
        var mes = ""
        var anio = ""
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
    
 
        let fecha = Date()
        let dateformate = DateFormatter()
        dateformate.dateStyle = .short
        let fechaa = dateformate.string(from: fecha)
        
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
        let Xml = "<?xml version="+Comd+"1.0"+Comd+" encoding="+Comd+"UTF-8"+Comd+"?> <SolicitudType xmlns:xsi="+Comd+"http://www.w3.org/2001/XMLSchema-instance"+Comd+" xmlns:xsd="+Comd+"http://www.w3.org/2001/XMLSchema"+Comd+"><Lattitude>19.4140762787095</Lattitude><Longuitud>-99.0129281651914</Longuitud><generales><Tpoidentif>"+Gridtipo+"</Tpoidentif> <Noidenficacion>"+Gridentificacion+"</Noidenficacion><Pmrnombre>"+Grnombre+"</Pmrnombre><Sdonombre>"+Grsnombre+"</Sdonombre><Apaterno>"+Grapep+"</Apaterno><Amaterno>"+Grapem+"</Amaterno><Sexo>"+sexo+"</Sexo><Nacionalidad>"+Gridnacionalidad+"</Nacionalidad><Fechanacdia>"+dia+"</Fechanacdia><Rfc>"+Grrfc+"</Rfc><Edocivil>"+Gridestcivil+"</Edocivil><Nodependiente>"+Grnumero+"</Nodependiente><Cveperspol>2</Cveperspol> <FechasnacMes>"+mes+"</FechasnacMes><FechanacAnio>"+anio+"</FechanacAnio></generales><doc><IdentificacionFrentePath>TEC_636395911640643196.jpg</IdentificacionFrentePath> <IdentificacionAtrasPath>TEC_636395912088133899.jpg</IdentificacionAtrasPath><Contrato1Path>TEC_636395912441057948.jpg</Contrato1Path><Contrato2Path>TEC_636395912942097782.jpg</Contrato2Path><Extra1>TEC_636395913267419058.jpg</Extra1><Extra2>..</Extra2><Extra3>..</Extra3><Extra4>..</Extra4><Extra5>..</Extra5><FirmaPath>TEC_636395912150998843.jpg</FirmaPath></doc><domicilio><Calle>"+Drcalle+"</Calle><NoInt>"+Drnumi+"</NoInt><NoExt>"+Drnume+"</NoExt><Cpdom>"+Drcp+"</Cpdom><Estado>"+Dridestado+"</Estado><Delegacion>"+Driddel+"</Delegacion><Colonia>"+Drcolonia+"</Colonia> <TiempoResidencia>"+Drtiempo+"</TiempoResidencia><EstatusResidencia>"+Dridestatus+"</EstatusResidencia><MontoVivienda>"+Drmonto+"</MontoVivienda><Email>"+Drcorreo+"</Email><Telcasa>"+Drtelefono+"</Telcasa><Telmovil>"+Drmovil+"</Telmovil><CompaniaMovil>"+Dridcompania+"</CompaniaMovil></domicilio><Personapolitica><EsPersonaPolitica>"+persona+"</EsPersonaPolitica><TipoParentesco>"+Prparentesco+"</TipoParentesco> <Descfuncion>"+Prfuncion+"</Descfuncion><Descparentesco>"+Prfuncion2+"</Descparentesco><TieneParentesco>"+parentesco+"</TieneParentesco></Personapolitica><Refer><Pmrnombre>"+Rrnombre+"</Pmrnombre> <Sdonombre/><Apaterno>"+Rrapep+"</Apaterno><Amaterno>"+Rrapem+"</Amaterno><Nacionalidad>"+Rridnacionalidad+"</Nacionalidad><TelefonoCasa>"+Rrtelefono+"</TelefonoCasa></Refer><Refer2> <Pmrnombre>"+R2rnombre+"</Pmrnombre><Sdonombre/><Apaterno>"+R2rapep+"</Apaterno><Amaterno>"+R2rapem+"</Amaterno><Nacionalidad>"+Rridnacionalidad2+"</Nacionalidad><TelefonoCasa>"+R2rtelefono+"</TelefonoCasa></Refer2><Refer3> <Pmrnombre>"+R3rnombre+"</Pmrnombre><Sdonombre/><Apaterno>"+R3rapep+"</Apaterno><Amaterno>"+R3rapem+"</Amaterno><Nacionalidad>"+Rridnacionalidad3+"</Nacionalidad><TelefonoCasa>"+R3rtelefono+"</TelefonoCasa></Refer3><Promotor><Compania>"+comp+"</Compania><Usuario>"+usuario+"</Usuario><Contrasenia>"+pass+"</Contrasenia></Promotor><FolioLocal>0</FolioLocal><DiaCreacion>"+dia2+"</DiaCreacion><MesCreacion>"+mes2+"</MesCreacion><AnioCreacion>"+anio2+"</AnioCreacion><Deconominos><TipoContrato>"+Dridtipo+"</TipoContrato><AntiguedadEmpleo>"+Drantiguedad+"</AntiguedadEmpleo><AniosCasada>"+Drcasado+"</AniosCasada><Ingresos>"+Dringreso+"</Ingresos><NombreEmpresa>"+Drnombre+"</NombreEmpresa><GiroEmpresa>"+Drgiro+"</GiroEmpresa><Puesto>"+Drpuesto+"</Puesto><Domicilio><Calle>"+Drcalle2+"</Calle><NoInt>"+Drnumi2+"</NoInt> <NoExt>"+Drnume2+"</NoExt><Cpdom>"+Drcp2+"</Cpdom><Estado>"+Dridestado2+"</Estado><Delegacion>"+Driddel2+"</Delegacion><Colonia>"+Drcolonia2+"</Colonia><TiempoResidencia>0</TiempoResidencia><EstatusResidencia>0</EstatusResidencia><MontoVivienda>0</MontoVivienda><Telcasa>"+Drtelefono2+"</Telcasa><Telmovil/></Domicilio><OtrosIngresos>"+Drotros+"</OtrosIngresos><FuenteOtrosIngresos>"+Drfuente+"</FuenteOtrosIngresos></Deconominos></SolicitudType>"
        print("valor de XML: ",Xml)
    }
    
    func Usuario() {
        var num = 0
        repeat {
            usuario = userArray[num].user!
            comp = userArray[num].compania!
            pass = userArray[num].contrasena!
            num = num+1
        }while num < userArray.count
    }
}
