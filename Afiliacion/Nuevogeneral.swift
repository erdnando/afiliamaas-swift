//
//  Nuevogeneral.swift
//  Afiliacion
//
//  Created by stefanini on 19/09/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import CoreData
class Nuevogeneral: UIViewController,UIPickerViewDelegate,UIScrollViewDelegate{
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
    @IBOutlet weak var Gptipo: UIPickerView!
    @IBOutlet weak var Gh: UISwitch!
    @IBOutlet weak var Gm: UISwitch!
    var sexo = ""
    @IBOutlet weak var Gnacionalidad: UILabel!
    var Grnacionalidad = ""
    @IBOutlet weak var Gpnacionalidad: UIPickerView!
    @IBOutlet weak var Gfecha: UILabel!
    var Grfecha = ""
    @IBOutlet weak var Gpfecha: UIDatePicker!
    @IBOutlet weak var Gestcivil: UILabel!
    var Grestcivil = ""
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
    @IBOutlet weak var Dpestado: UIPickerView!
    @IBOutlet weak var Ddel: UILabel!
    var Drdel = ""
    @IBOutlet weak var Dpdel: UIPickerView!
    @IBOutlet weak var Dcp: UITextField!
    var Drcp = ""
    @IBOutlet weak var Dtiempo: UITextField!
    var Drtiempo = ""
    @IBOutlet weak var Destatus: UILabel!
    var Drestatus = ""
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
    @IBOutlet weak var Dpestado2: UIPickerView!
    @IBOutlet weak var Ddel2: UILabel!
    var Drdel2 = ""
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
    @IBOutlet weak var R3pnacionalidad: UIPickerView!
    @IBOutlet weak var R3telefono: UITextField!
    var R3rtelefono = ""
    
    //Base de datos
    var paramArray:[PARAMETRO] = []
    var cataloA:[CATALOGO_A] = []
    var cataloB:[Rcatalogo] = []

    //Arreglo de Spinner
    var Tipo:[String] = []
    var Nacionalidad:[String] = []
    var Estadocivil:[String] = []
    var Estado:[String] = []
    var Delegacion:[String] = []
    var Compania:[String] = []
    var Estatus:[String] = []
    var contrato:[String] = []
    
    //catalogo activo
    var Catalogoactivo = ""
    var visibilidad = false
    var deslizar = 0
     var margeny = 0
    override func viewDidLoad() {
        super.viewDidLoad()
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
            }else {
                if persona == "NO" {
                    Pno.isOn = true
                }
            }
            Pfuncion.text = Prfuncion
            
            if parentesco == "SI" {
                Psi2.isOn = true
            }else {
                if persona == "NO" {
                    Pno2.isOn = true
                }
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
        
        //recuperar valor de margen
        DispatchQueue.main.async
            {
                self.myscroll.contentOffset.y = CGFloat(self.margeny)
            }
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
                sol.Gridentificacion = Gidentificacion.text!
                sol.sexo = sexo
                sol.Grnacionalidad = Gnacionalidad.text!
                sol.Grfecha = Gfecha.text!
                sol.Grrfc = Grfc.text!
                sol.Grestcivil = Gestcivil.text!
                sol.Grnumero = Gnumero.text!
                
                //Domicilio
                sol.Drcalle = Dcalle.text!
                sol.Drnume = Dnume.text!
                sol.Drnumi = Dnumi.text!
                sol.Drcolonia = Dcolonia.text!
                sol.Drestado = Destado.text!
                sol.Drdel = Ddel.text!
                sol.Drcp = Dcp.text!
                sol.Drtiempo = Dtiempo.text!
                sol.Drestatus = Destatus.text!
                sol.Drmonto = Dmonto.text!
                sol.Drcorreo = Dcorreo.text!
                sol.Drtelefono = Dtelefono.text!
                sol.Drmovil = Dmovil.text!
                sol.Drcompania = Dcompania.text!
                
                //Datos economicos
                sol.Drnombre = Dnombre.text!
                sol.Drgiro = Dgiro.text!
                sol.Drantiguedad = Dantiguedad.text!
                sol.Drtipo = Dtipo.text!
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
                sol.Drdel2 = Ddel2.text!
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
                sol.Rrtelefono = Rtelefono.text!
                
                sol.R2rnombre = R2nombre.text!
                sol.R2rapep = R2apep.text!
                sol.R2rapem = R2apem.text!
                sol.Rr2nacionalidad = R2nacionalidad.text!
                sol.R2rtelefono = R2telefono.text!
                
                sol.R3rnombre = R3nombre.text!
                sol.R3rapep = R3apep.text!
                sol.R3rapem = R3apem.text!
                sol.Rr3nacionalidad = R3nacionalidad.text!
                sol.R3rtelefono = R3telefono.text!
                
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
                sol.Gridentificacion = Gidentificacion.text!
                sol.sexo = sexo
                sol.Grnacionalidad = Gnacionalidad.text!
                sol.Grfecha = Gfecha.text!
                sol.Grrfc = Grfc.text!
                sol.Grestcivil = Gestcivil.text!
                sol.Grnumero = Gnumero.text!
                
                //Domicilio
                sol.Drcalle = Dcalle.text!
                sol.Drnume = Dnume.text!
                sol.Drnumi = Dnumi.text!
                sol.Drcolonia = Dcolonia.text!
                sol.Drestado = Destado.text!
                sol.Drdel = Ddel.text!
                sol.Drcp = Dcp.text!
                sol.Drtiempo = Dtiempo.text!
                sol.Drestatus = Destatus.text!
                sol.Drmonto = Dmonto.text!
                sol.Drcorreo = Dcorreo.text!
                sol.Drtelefono = Dtelefono.text!
                sol.Drmovil = Dmovil.text!
                sol.Drcompania = Dcompania.text!
                
                //Datos economicos
                sol.Drnombre = Dnombre.text!
                sol.Drgiro = Dgiro.text!
                sol.Drantiguedad = Dantiguedad.text!
                sol.Drtipo = Dtipo.text!
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
                sol.Drdel2 = Ddel2.text!
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
                sol.Rrtelefono = Rtelefono.text!
                
                sol.R2rnombre = R2nombre.text!
                sol.R2rapep = R2apep.text!
                sol.R2rapem = R2apem.text!
                sol.Rr2nacionalidad = R2nacionalidad.text!
                sol.R2rtelefono = R2telefono.text!
                
                sol.R3rnombre = R3nombre.text!
                sol.R3rapep = R3apep.text!
                sol.R3rapem = R3apem.text!
                sol.Rr3nacionalidad = R3nacionalidad.text!
                sol.R3rtelefono = R3telefono.text!
                
                
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
                sol.Gridentificacion = Gidentificacion.text!
                sol.sexo = sexo
                sol.Grnacionalidad = Gnacionalidad.text!
                sol.Grfecha = Gfecha.text!
                sol.Grrfc = Grfc.text!
                sol.Grestcivil = Gestcivil.text!
                sol.Grnumero = Gnumero.text!
                
                //Domicilio
                sol.Drcalle = Dcalle.text!
                sol.Drnume = Dnume.text!
                sol.Drnumi = Dnumi.text!
                sol.Drcolonia = Dcolonia.text!
                sol.Drestado = Destado.text!
                sol.Drdel = Ddel.text!
                sol.Drcp = Dcp.text!
                sol.Drtiempo = Dtiempo.text!
                sol.Drestatus = Destatus.text!
                sol.Drmonto = Dmonto.text!
                sol.Drcorreo = Dcorreo.text!
                sol.Drtelefono = Dtelefono.text!
                sol.Drmovil = Dmovil.text!
                sol.Drcompania = Dcompania.text!
                
                //Datos economicos
                sol.Drnombre = Dnombre.text!
                sol.Drgiro = Dgiro.text!
                sol.Drantiguedad = Dantiguedad.text!
                sol.Drtipo = Dtipo.text!
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
                sol.Drdel2 = Ddel2.text!
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
                sol.Rrtelefono = Rtelefono.text!
                
                sol.R2rnombre = R2nombre.text!
                sol.R2rapep = R2apep.text!
                sol.R2rapem = R2apem.text!
                sol.Rr2nacionalidad = R2nacionalidad.text!
                sol.R2rtelefono = R2telefono.text!
                
                sol.R3rnombre = R3nombre.text!
                sol.R3rapep = R3apep.text!
                sol.R3rapem = R3apem.text!
                sol.Rr3nacionalidad = R3nacionalidad.text!
                sol.R3rtelefono = R3telefono.text!
                
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
                sol.Gridentificacion = Gidentificacion.text!
                sol.sexo = sexo
                sol.Grnacionalidad = Gnacionalidad.text!
                sol.Grfecha = Gfecha.text!
                sol.Grrfc = Grfc.text!
                sol.Grestcivil = Gestcivil.text!
                sol.Grnumero = Gnumero.text!
                
                //Domicilio
                sol.Drcalle = Dcalle.text!
                sol.Drnume = Dnume.text!
                sol.Drnumi = Dnumi.text!
                sol.Drcolonia = Dcolonia.text!
                sol.Drestado = Destado.text!
                sol.Drdel = Ddel.text!
                sol.Drcp = Dcp.text!
                sol.Drtiempo = Dtiempo.text!
                sol.Drestatus = Destatus.text!
                sol.Drmonto = Dmonto.text!
                sol.Drcorreo = Dcorreo.text!
                sol.Drtelefono = Dtelefono.text!
                sol.Drmovil = Dmovil.text!
                sol.Drcompania = Dcompania.text!
                
                //Datos economicos
                sol.Drnombre = Dnombre.text!
                sol.Drgiro = Dgiro.text!
                sol.Drantiguedad = Dantiguedad.text!
                sol.Drtipo = Dtipo.text!
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
                sol.Drdel2 = Ddel2.text!
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
                sol.Rrtelefono = Rtelefono.text!
                
                sol.R2rnombre = R2nombre.text!
                sol.R2rapep = R2apep.text!
                sol.R2rapem = R2apem.text!
                sol.Rr2nacionalidad = R2nacionalidad.text!
                sol.R2rtelefono = R2telefono.text!
                
                sol.R3rnombre = R3nombre.text!
                sol.R3rapep = R3apep.text!
                sol.R3rapem = R3apem.text!
                sol.Rr3nacionalidad = R3nacionalidad.text!
                sol.R3rtelefono = R3telefono.text!
                
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
                sol.Gridentificacion = Gidentificacion.text!
                sol.sexo = sexo
                sol.Grnacionalidad = Gnacionalidad.text!
                sol.Grfecha = Gfecha.text!
                sol.Grrfc = Grfc.text!
                sol.Grestcivil = Gestcivil.text!
                sol.Grnumero = Gnumero.text!
                
                //Domicilio
                sol.Drcalle = Dcalle.text!
                sol.Drnume = Dnume.text!
                sol.Drnumi = Dnumi.text!
                sol.Drcolonia = Dcolonia.text!
                sol.Drestado = Destado.text!
                sol.Drdel = Ddel.text!
                sol.Drcp = Dcp.text!
                sol.Drtiempo = Dtiempo.text!
                sol.Drestatus = Destatus.text!
                sol.Drmonto = Dmonto.text!
                sol.Drcorreo = Dcorreo.text!
                sol.Drtelefono = Dtelefono.text!
                sol.Drmovil = Dmovil.text!
                sol.Drcompania = Dcompania.text!
                
                //Datos economicos
                sol.Drnombre = Dnombre.text!
                sol.Drgiro = Dgiro.text!
                sol.Drantiguedad = Dantiguedad.text!
                sol.Drtipo = Dtipo.text!
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
                sol.Drdel2 = Ddel2.text!
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
                sol.Rrtelefono = Rtelefono.text!
                
                sol.R2rnombre = R2nombre.text!
                sol.R2rapep = R2apep.text!
                sol.R2rapem = R2apem.text!
                sol.Rr2nacionalidad = R2nacionalidad.text!
                sol.R2rtelefono = R2telefono.text!
                
                sol.R3rnombre = R3nombre.text!
                sol.R3rapep = R3apep.text!
                sol.R3rapem = R3apem.text!
                sol.Rr3nacionalidad = R3nacionalidad.text!
                sol.R3rtelefono = R3telefono.text!
                
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
                sol.Gridentificacion = Gidentificacion.text!
                sol.sexo = sexo
                sol.Grnacionalidad = Gnacionalidad.text!
                sol.Grfecha = Gfecha.text!
                sol.Grrfc = Grfc.text!
                sol.Grestcivil = Gestcivil.text!
                sol.Grnumero = Gnumero.text!
                
                //Domicilio
                sol.Drcalle = Dcalle.text!
                sol.Drnume = Dnume.text!
                sol.Drnumi = Dnumi.text!
                sol.Drcolonia = Dcolonia.text!
                sol.Drestado = Destado.text!
                sol.Drdel = Ddel.text!
                sol.Drcp = Dcp.text!
                sol.Drtiempo = Dtiempo.text!
                sol.Drestatus = Destatus.text!
                sol.Drmonto = Dmonto.text!
                sol.Drcorreo = Dcorreo.text!
                sol.Drtelefono = Dtelefono.text!
                sol.Drmovil = Dmovil.text!
                sol.Drcompania = Dcompania.text!
                
                //Datos economicos
                sol.Drnombre = Dnombre.text!
                sol.Drgiro = Dgiro.text!
                sol.Drantiguedad = Dantiguedad.text!
                sol.Drtipo = Dtipo.text!
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
                sol.Drdel2 = Ddel2.text!
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
                sol.Rrtelefono = Rtelefono.text!
                
                sol.R2rnombre = R2nombre.text!
                sol.R2rapep = R2apep.text!
                sol.R2rapem = R2apem.text!
                sol.Rr2nacionalidad = R2nacionalidad.text!
                sol.R2rtelefono = R2telefono.text!
                
                sol.R3rnombre = R3nombre.text!
                sol.R3rapep = R3apep.text!
                sol.R3rapem = R3apem.text!
                sol.Rr3nacionalidad = R3nacionalidad.text!
                sol.R3rtelefono = R3telefono.text!
                
                sol.deslizar = 1
                self.navigationController?.pushViewController(sol, animated: false)
            }
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
                Tipo.append(cataloA[num].descripcion!)
                num = num+1
            }else {
                //Nacionalidad
                if cataloA[num].id_tipo_catalogo == "9" {
                    Nacionalidad.append(cataloA[num].descripcion!)
                    num = num+1
                }else {
                    //EstadoCivil
                    if cataloA[num].id_tipo_catalogo == "3" {
                        Estadocivil.append(cataloA[num].descripcion!)
                        num = num+1
                    }else {
                        //Estados
                        if cataloA[num].id_tipo_catalogo == "5" {
                            Estado.append(cataloA[num].descripcion!)
                            num = num+1
                        }else {
                            //Delegacion
                            if cataloA[num].id_tipo_catalogo == "6" {
                                Delegacion.append(cataloA[num].descripcion!)
                                num = num+1
                            }else {
                                //Compania movil
                                if cataloA[num].id_tipo_catalogo == "1" {
                                    Compania.append(cataloA[num].descripcion!)
                                    num = num+1
                                }else {
                                    //Estatus de residencia
                                    if cataloA[num].id_tipo_catalogo == "4" {
                                        Estatus.append(cataloA[num].descripcion!)
                                        num = num+1
                                    }else {
                                        //Tipo de contrato
                                        if cataloA[num].id_tipo_catalogo == "7" {
                                            contrato.append(cataloA[num].descripcion!)
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
                Tipo.append(cataloB[num].descripcion!)
                num = num+1
            }else {
                //Nacionalidad
                if cataloB[num].id_tipo_catalogo == "9" {
                    Nacionalidad.append(cataloB[num].descripcion!)
                    num = num+1
                }else {
                    //EstadoCivil
                    if cataloB[num].id_tipo_catalogo == "3" {
                        Estadocivil.append(cataloB[num].descripcion!)
                        num = num+1
                    }else {
                        //Estados
                        if cataloB[num].id_tipo_catalogo == "5" {
                            Estado.append(cataloB[num].descripcion!)
                            num = num+1
                        }else {
                            //Delegacion
                            if cataloB[num].id_tipo_catalogo == "6" {
                                Delegacion.append(cataloB[num].descripcion!)
                                num = num+1
                            }else {
                                //Compania movil
                                if cataloB[num].id_tipo_catalogo == "1" {
                                    Compania.append(cataloB[num].descripcion!)
                                    num = num+1
                                }else {
                                    //Estatus de residencia
                                    if cataloB[num].id_tipo_catalogo == "4" {
                                        Estatus.append(cataloB[num].descripcion!)
                                        num = num+1
                                    }else {
                                        //Tipo de contrato
                                        if cataloB[num].id_tipo_catalogo == "7" {
                                            contrato.append(cataloB[num].descripcion!)
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
            valor = Tipo[row]
        }
        if pickerView == self.Gpnacionalidad {
            valor = Nacionalidad[row]
        }
        if pickerView == self.Gpestcivil {
            valor = Estadocivil[row]
        }
        if pickerView == self.Dpestado {
            valor = Estado[row]
        }
        if pickerView == self.Dpdel {
            valor = Delegacion[row]
        }
        if pickerView == self.Dpestatus {
            valor = Estatus[row]
        }
        if pickerView == self.Dpcompania {
            valor = Compania[row]
        }
        if pickerView == self.Dptipo {
            valor = contrato[row]
        }
        if pickerView == self.Dpestado2 {
            valor = Estado[row]
        }
        if pickerView == self.Dpdel2 {
            valor = Delegacion[row]
        }
        if pickerView == self.Rpnacionalidad {
            valor = Nacionalidad[row]
        }
        if pickerView == self.R2pnacionalidad {
            valor = Nacionalidad[row]
        }
        if pickerView == self.R3pnacionalidad {
            valor = Nacionalidad[row]
        }
        return valor
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == self.Gptipo {
            self.Gtipo.text = self.Tipo[row]
            Gptipo.alpha = 0
        }
        if pickerView == self.Gpnacionalidad {
           self.Gnacionalidad.text = self.Nacionalidad[row]
            Gpnacionalidad.alpha = 0
        }
        if pickerView == self.Gpestcivil {
            self.Gestcivil.text = self.Estadocivil[row]
            Gpestcivil.alpha = 0
        }
        if pickerView == self.Dpestado {
            self.Destado.text = self.Estado[row]
            Dpestado.alpha = 0
        }
        if pickerView == self.Dpdel {
            self.Ddel.text = self.Delegacion[row]
            Dpdel.alpha = 0
        }
        if pickerView == self.Dpestatus {
            self.Destatus.text = self.Estatus[row]
            Dpestatus.alpha = 0
        }
        if pickerView == self.Dpcompania {
            self.Dcompania.text = self.Compania[row]
            Dpcompania.alpha = 0
        }
        if pickerView == self.Dptipo {
            self.Dtipo.text = self.contrato[row]
            Dptipo.alpha = 0
        }
        if pickerView == self.Dpestado2 {
            self.Destado2.text = self.Estado[row]
            Dpestado2.alpha = 0
        }
        if pickerView == self.Dpdel2 {
            self.Ddel2.text = self.Delegacion[row]
            Dpdel2.alpha = 0
        }
        if pickerView == self.Rpnacionalidad {
            self.Rnacionalidad.text = self.Nacionalidad[row]
            Rpnacionalidad.alpha = 0
        }
        if pickerView == self.R2pnacionalidad {
            self.R2nacionalidad.text = self.Nacionalidad[row]
            R2pnacionalidad.alpha = 0
        }
        if pickerView == self.R3pnacionalidad {
            self.R3nacionalidad.text = self.Nacionalidad[row]
            R3pnacionalidad.alpha = 0
        }
    }
}
