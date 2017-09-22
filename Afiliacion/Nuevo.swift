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
    //Etiquetas
    @IBOutlet weak var General: UILabel!
    @IBOutlet weak var LDom: UILabel!
    @IBOutlet weak var Domicilio: UILabel!
    @IBOutlet weak var LDatos: UILabel!
    @IBOutlet weak var Datos: UILabel!
    @IBOutlet weak var Lpersona: UILabel!
    @IBOutlet weak var Persona: UILabel!
    @IBOutlet weak var Lreferencias: UILabel!
    @IBOutlet weak var Referencias: UILabel!
    @IBOutlet weak var Ldocumentos: UILabel!
    @IBOutlet weak var Documentos: UILabel!
    
    
     //General
    var Grnombre = ""
    var Grsnombre = ""
    var Grapep = ""
    var Grapem = ""
    var Grtipo = "Tipo de identificacion"
    var Gridentificacion = ""
    var sexo = ""
    var Grnacionalidad = "Nacionalidad"
    var Grfecha = "Fecha de nacimiento"
    var Grrfc = ""
    var Grestcivil = "Estado civil"
    var Grnumero = ""
    
    //Domicilio
    var Drcalle = ""
    var Drnume = ""
    var Drnumi = ""
    var Drcolonia = ""
    var Drestado = "Estado"
    var Drdel = "Delegación/Municipio"
    var Drcp = ""
    var Drtiempo = ""
    var Drestatus = "Estatus de residencia"
    var Drmonto = ""
    var Drcorreo = ""
    var Drtelefono = ""
    var Drmovil = ""
    var Drcompania = "Compañia movil"
    
    //Datos economicos
    var Drnombre = ""
    var Drgiro = ""
    var Drantiguedad = ""
    var Drtipo = "Tipo de contrato"
    var Drpuesto = ""
    var Dringreso = ""
    var Drcasado = ""
    var Drfuente = ""
    var Drotros = ""
    var Drcalle2 = ""
    var Drnume2 = ""
    var Drnumi2 = ""
    var Drcolonia2 = ""
    var Drestado2 = "Estado"
    var Drdel2 = "Delegación/Municipio"
    var Drcp2 = ""
    var Drtelefono2 = ""
    var Drextencion = ""
    
    //Persona politica
    var person = ""
    var Prfuncion = ""
    var parentesco = ""
    var Prfuncion2 = ""
    var Prparentesco = ""
    
    //Referecias familiares
    var Rrnombre = ""
    var Rrapep = ""
    var Rrapem = ""
    var Rrnacionalidad = "Nacionalidad"
    var Rrtelefono = ""
    
    var R2rnombre = ""
    var R2rapep = ""
    var R2rapem = ""
    var Rr2nacionalidad = "Nacionalidad"
    var R2rtelefono = ""
    
    var R3rnombre = ""
    var R3rapep = ""
    var R3rapem = ""
    var Rr3nacionalidad = "Nacionalidad"
    var R3rtelefono = ""

    
    
    var identificador = 0
    var margen = 0
    var deslizar = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        //Etiquetas Redondas
        
        General.layer.masksToBounds = true
        General.layer.cornerRadius = 17.5
        
        Domicilio?.layer.masksToBounds = true
        Domicilio?.layer.cornerRadius = 17.5
        
        Datos.layer.masksToBounds = true
        Datos.layer.cornerRadius = 17.5
        
        Persona.layer.masksToBounds = true
        Persona.layer.cornerRadius = 17.5
        
        Referencias.layer.masksToBounds = true
        Referencias.layer.cornerRadius = 17.5
        
        Documentos.layer.masksToBounds = true
        Documentos.layer.cornerRadius = 17.5
        
       
        
        
        if identificador == 2 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
        }
        if identificador == 3 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
            LDatos.backgroundColor = UIColor.blue
            Datos.backgroundColor = UIColor.blue
        }
        if identificador == 4 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
            LDatos.backgroundColor = UIColor.blue
            Datos.backgroundColor = UIColor.blue
            Lpersona.backgroundColor = UIColor.blue
            Persona.backgroundColor = UIColor.blue
        }
        if identificador == 5 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
            LDatos.backgroundColor = UIColor.blue
            Datos.backgroundColor = UIColor.blue
            Lpersona.backgroundColor = UIColor.blue
            Persona.backgroundColor = UIColor.blue
            Lreferencias.backgroundColor = UIColor.blue
            Referencias.backgroundColor = UIColor.blue
        }
        if identificador == 6 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
            LDatos.backgroundColor = UIColor.blue
            Datos.backgroundColor = UIColor.blue
            Lpersona.backgroundColor = UIColor.blue
            Persona.backgroundColor = UIColor.blue
            Lreferencias.backgroundColor = UIColor.blue
            Referencias.backgroundColor = UIColor.blue
            Ldocumentos.backgroundColor = UIColor.blue
            Documentos.backgroundColor = UIColor.blue
        }
        General.backgroundColor = UIColor.blue

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
            Ngen.Gridentificacion = Gridentificacion
            Ngen.sexo = sexo
            Ngen.Grnacionalidad = Grnacionalidad
            Ngen.Grfecha = Grfecha
            Ngen.Grrfc = Grrfc
            Ngen.Grestcivil = Grestcivil
            Ngen.Grnumero = Grnumero
        
            
            //Domicilio
            Ngen.Drcalle = Drcalle
            Ngen.Drnume = Drnume
            Ngen.Drnumi = Drnumi
            Ngen.Drcolonia = Drcolonia
            Ngen.Drestado = Drestado
            Ngen.Drdel = Drdel
            Ngen.Drcp = Drcp
            Ngen.Drtiempo = Drtiempo
            Ngen.Drestatus = Drestatus
            Ngen.Drmonto = Drmonto
            Ngen.Drcorreo = Drcorreo
            Ngen.Drtelefono = Drtelefono
            Ngen.Drmovil = Drmovil
            Ngen.Drcompania = Drcompania
            
            //Datos economicos
            Ngen.Drnombre = Drnombre
            Ngen.Drgiro = Drgiro
            Ngen.Drantiguedad = Drantiguedad
            Ngen.Drtipo = Drtipo
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
            Ngen.Drdel2 = Drdel2
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
            Ngen.Rrtelefono = Rrtelefono
            
            Ngen.R2rnombre = R2rnombre
            Ngen.R2rapep = R2rapep
            Ngen.R2rapem = R2rapem
            Ngen.R2rnacionalidad = Rr2nacionalidad
            Ngen.R2rtelefono = R2rtelefono
            
            Ngen.R3rnombre = R3rnombre
            Ngen.R3rapep = R3rapep
            Ngen.R3rapem = R3rapem
            Ngen.Rr3nacionalidad = Rr3nacionalidad
            Ngen.R3rtelefono = R3rtelefono
            
            Ngen.deslizar = deslizar
            Ngen.margeny = margen
        }
    }
}
