//
//  Nuevo.swift
//  Afiliacion
//
//  Created by stefanini on 7/31/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import CoreData
class Nuevo: BaseViewController {
    
    //Variable que Verifica si ya se guardo una vez
    var guardar = 0
    var validador = 0
   
    
    @objc var prueba = ""
     //General
    
   
    @objc var Grnombre = ""
    @objc var Grsnombre = ""
    @objc var Grapep = ""
    @objc var Grapem = ""
    @objc var Grtipo = "Tipo de identificacion *"
    @objc var Gridtipo = ""
    @objc var Gridentificacion = ""
    @objc var sexo = ""
    @objc var Grnacionalidad = "Nacionalidad*"
    @objc var Gridnacionalidad = ""
    @objc var Grfecha = "Fecha de nacimiento*"
    @objc var Grrfc = ""
    @objc var Grestcivil = "Estado civil*"
    @objc var Gridestcivil = ""
    @objc var Grnumero = ""

    
    //Domicilio
   
    @objc var Drcalle = ""
    @objc var Drnume = ""
    @objc var Drnumi = ""
    @objc var Drcolonia = ""
    @objc var Drestado = "Estado*"
    @objc var Dridestado = ""
    @objc var Drdel = "Delegación/Municipio*"
    @objc var Driddel = ""
    @objc var Drcp = ""
    @objc var Drtiempo = ""
    @objc var Drestatus = "Estatus de residencia*"
    @objc var Dridestatus = ""
    @objc var Drmonto = ""
    @objc var Drcorreo = ""
    @objc var Drtelefono = ""
    @objc var Drmovil = ""
    @objc var Drcompania = "Compañia movil*"
    @objc var Dridcompania = ""
    
    //Datos economicos
   
    @objc var Drnombre = ""
    @objc var Drgiro = ""
    @objc var Drantiguedad = ""
    @objc var Drtipo = "Tipo de contrato*"
    @objc var Dridtipo = ""
    @objc var Drpuesto = ""
    @objc var Dringreso = ""
    @objc var Drcasado = ""
    @objc var Drfuente = ""
    @objc var Drotros = ""
    @objc var Drcalle2 = ""
    @objc var Drnume2 = ""
    @objc var Drnumi2 = ""
    @objc var Drcolonia2 = ""
    @objc var Drestado2 = "Estado*"
    @objc var Dridestado2 = ""
    @objc var Drdel2 = "Delegación/Municipio*"
    @objc var Driddel2 = ""
    @objc var Drcp2 = ""
    @objc var Drtelefono2 = ""
    @objc var Drextencion = ""
    
    //Persona politica
  
    @objc var person = ""
    @objc var Prfuncion = ""
    @objc var parentesco = ""
    @objc var Prfuncion2 = ""
    @objc var Prparentesco = ""
    
    //Referecias familiares
   
    @objc var Rrnombre = ""
    @objc var Rrapep = ""
    @objc var Rrapem = ""
    @objc var Rrnacionalidad = "Nacionalidad*"
    @objc var Rridnacionalidad = ""
    @objc var Rrtelefono = ""
    
    @objc var R2rnombre = ""
    @objc var R2rapep = ""
    @objc var R2rapem = ""
    @objc var Rr2nacionalidad = "Nacionalidad*"
    @objc var Rridnacionalidad2 = ""
    @objc var R2rtelefono = ""
    
    @objc var R3rnombre = ""
    @objc var R3rapep = ""
    @objc var R3rapem = ""
    @objc var Rr3nacionalidad = "Nacionalidad"
    @objc var Rridnacionalidad3 = ""
    @objc var R3rtelefono = ""
    //Documentos
    @objc var bidentificacionf = ""
    var tidentificacionf = "Identificacion parte frontal"
    @objc var bidentificaciont = ""
    var tidentificaciont = "Identificacion parte posterior"
    @objc var bfirma = ""
    var tfirma = "Firma"
    
   
    /*
    //BASE DE DATOS
   
    @objc var paramArray:[PARAMETRO] = []
  
    */
    
    //validadores de Clase Nuevo
    @objc var identificador = 0
    @objc var margen = 0
    @objc var deslizar = 0
    var marco = 0
   
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        print("valor de deslizar regreso",deslizar)
     
        
    }
   
    
    @IBAction func Atras(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "¡Aviso!", message: "Deseas dirigirte hacia mis solicitudes", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
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
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "NuevoGeneral"{
            let Ngen = segue.destination as! Nuevogeneral
           
            
                //General
                Ngen.Grnombre = Grnombre
                Ngen.Grsnombre = Grsnombre
                Ngen.Grapep = Grapep
                Ngen.Grapem = Grapem
                Ngen.Grtipo = Grtipo
                Ngen.Gridtipo = Gridtipo
                Ngen.Gridentificacion = Gridentificacion
                Ngen.sexo = sexo
                Ngen.Grnacionalidad = Grnacionalidad
                Ngen.Gridnacionalidad = Gridnacionalidad
                Ngen.Grfecha = Grfecha
                Ngen.Grrfc = Grrfc
                Ngen.Grestcivil = Grestcivil
                Ngen.Gridestcivil = Gridestcivil
                Ngen.Grnumero = Grnumero
                
                
                //Domicilio
                Ngen.Drcalle = Drcalle
                Ngen.Drnume = Drnume
                Ngen.Drnumi = Drnumi
                Ngen.Drcolonia = Drcolonia
                Ngen.Drestado = Drestado
                Ngen.Dridestado = Dridestado
                Ngen.Drdel = Drdel
                Ngen.Driddel = Driddel
                Ngen.Drcp = Drcp
                Ngen.Drtiempo = Drtiempo
                Ngen.Drestatus = Drestatus
                Ngen.Dridestatus = Dridestatus
                Ngen.Drmonto = Drmonto
                Ngen.Drcorreo = Drcorreo
                Ngen.Drtelefono = Drtelefono
                Ngen.Drmovil = Drmovil
                Ngen.Drcompania = Drcompania
                Ngen.Dridcompania = Dridcompania
                
                //Datos economicos
                Ngen.Drnombre = Drnombre
                Ngen.Drgiro = Drgiro
                Ngen.Drantiguedad = Drantiguedad
                Ngen.Drtipo = Drtipo
                Ngen.Dridtipo = Dridtipo
                Ngen.Drpuesto = Drpuesto
                Ngen.Dringreso = Dringreso
                Ngen.Drcasado = Drcasado
                Ngen.Drfuente = Drfuente
                Ngen.Drotros = Drotros
                Ngen.Drcalle2 = Drcalle2
                Ngen.Drnume2 = Drnume2
                Ngen.Drnumi2 = Drnumi2
                Ngen.Drcolonia2 = Drcolonia2
                Ngen.Drestado2 = Drestado2
                Ngen.Dridestado2 = Dridestado2
                Ngen.Drdel2 = Drdel2
                Ngen.Driddel2 = Driddel2
                Ngen.Drcp2 = Drcp2
                Ngen.Drtelefono2 = Drtelefono2
                Ngen.Drextencion = Drextencion
                
                
                //Persona politica
                Ngen.persona = person
                Ngen.Prfuncion = Prfuncion
                Ngen.parentesco = parentesco
                Ngen.Prfuncion2 = Prfuncion2
                Ngen.Prparentesco = Prparentesco
                
                //Referencias familiares
                Ngen.Rrnombre = Rrnombre
                Ngen.Rrapep = Rrapep
                Ngen.Rrapem = Rrapem
                Ngen.Rrnacionalidad = Rrnacionalidad
                Ngen.Rridnacionalidad = Rridnacionalidad
                Ngen.Rrtelefono = Rrtelefono
                
                Ngen.R2rnombre = R2rnombre
                Ngen.R2rapep = R2rapep
                Ngen.R2rapem = R2rapem
                Ngen.R2rnacionalidad = Rr2nacionalidad
                Ngen.Rridnacionalidad2 = Rridnacionalidad2
                Ngen.R2rtelefono = R2rtelefono
                
                Ngen.R3rnombre = R3rnombre
                Ngen.R3rapep = R3rapep
                Ngen.R3rapem = R3rapem
                Ngen.Rr3nacionalidad = Rr3nacionalidad
                Ngen.Rridnacionalidad3 = Rridnacionalidad3
                Ngen.R3rtelefono = R3rtelefono
                //Documentos
                Ngen.bidentificacionf = bidentificacionf
                Ngen.tidentificacionf = tidentificacionf
                Ngen.bidentificaciont = bidentificaciont
                Ngen.tidentificaciont = tidentificaciont
                Ngen.bfirma = bfirma
                Ngen.tfirma = tfirma
                
                Ngen.deslizar = deslizar
                Ngen.margeny = margen
                Ngen.Imagen = marco
                Ngen.guardar = guardar
            }
    }
 
}

