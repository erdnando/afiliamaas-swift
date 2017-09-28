//
//  Firma.swift
//  Afiliacion
//
//  Created by stefanini on 27/09/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class Firma: UIViewController {
    
    //General
    var Grnombre = ""
    var Grsnombre = ""
    var Grapep = ""
    var Grapem = ""
    var Grtipo = "Tipo de identificacion"
    var Gridtipo = ""
    var Gridentificacion = ""
    var sexo = ""
    var Grnacionalidad = "Nacionalidad"
    var Gridnacionalidad = ""
    var Grfecha = "Fecha de nacimiento"
    var Grrfc = ""
    var Grestcivil = "Estado civil"
    var Gridestcivil = ""
    var Grnumero = ""
    
    //Domicilio
    var Drcalle = ""
    var Drnume = ""
    var Drnumi = ""
    var Drcolonia = ""
    var Drestado = "Estado"
    var Dridestado = ""
    var Drdel = "Delegación/Municipio"
    var Driddel = ""
    var Drcp = ""
    var Drtiempo = ""
    var Drestatus = "Estatus de residencia"
    var Dridestatus = ""
    var Drmonto = ""
    var Drcorreo = ""
    var Drtelefono = ""
    var Drmovil = ""
    var Drcompania = "Compañia movil"
    var Dridcompania = ""
    
    //Datos economicos
    var Drnombre = ""
    var Drgiro = ""
    var Drantiguedad = ""
    var Drtipo = "Tipo de contrato"
    var Dridtipo = ""
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
    var Dridestado2 = ""
    var Drdel2 = "Delegación/Municipio"
    var Driddel2 = ""
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
    var Rridnacionalidad = ""
    var Rrtelefono = ""
    
    var R2rnombre = ""
    var R2rapep = ""
    var R2rapem = ""
    var Rr2nacionalidad = "Nacionalidad"
    var Rridnacionalidad2 = ""
    var R2rtelefono = ""
    
    var R3rnombre = ""
    var R3rapep = ""
    var R3rapem = ""
    var Rr3nacionalidad = "Nacionalidad"
    var Rridnacionalidad3 = ""
    var R3rtelefono = ""
    //Documentos
    var bidentificacionf = ""
    var bidentificaciont = ""
    var bcontrato = ""
    var bcontratop = ""
    var bfirma = ""
    
    var margen = 0
    var deslizar = 0
    
    @IBOutlet weak var Panel: UIImageView!
    var lastPoint = CGPoint.zero
    var red: CGFloat = 0.0
    var green: CGFloat = 0.0
    var blue: CGFloat = 0.0
    var brushWidth: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var swiped = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = false
        if let touch = touches.first {
            lastPoint = touch.location(in: self.view)
        }
    }
    
    func drawLineFrom(fromPoint: CGPoint, toPoint: CGPoint) {
        
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, false, 0)
        
        Panel.image?.draw(in: view.bounds)
        
        let context = UIGraphicsGetCurrentContext()
        
        context?.move(to: fromPoint)
        context?.addLine(to: toPoint)
        
        context?.setLineCap(CGLineCap.round)
        context?.setLineWidth(brushWidth)
        context?.setStrokeColor(red: red, green: green, blue: blue, alpha: 1.0)
        context?.setBlendMode(CGBlendMode.normal)
        context?.strokePath()
        
        Panel.image = UIGraphicsGetImageFromCurrentImageContext()
        Panel.alpha = opacity
        UIGraphicsEndImageContext()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = true
        if let touch = touches.first {
            let currentPoint = touch.location(in: view)
            drawLineFrom(fromPoint: lastPoint, toPoint: currentPoint)
            
            lastPoint = currentPoint
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !swiped {
            // draw a single point
            self.drawLineFrom(fromPoint: lastPoint, toPoint: lastPoint)
        }
   }
    
    @IBAction func Guardar(_ sender: UIBarButtonItem) {
        convert(Imagen: Panel.image!)
        if  let Ngen = self.storyboard?.instantiateViewController(withIdentifier: "Newgen") as? Nuevogeneral {
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
            //Documentos
            Ngen.bidentificacionf = bidentificacionf
            Ngen.bidentificaciont = bidentificaciont
            Ngen.bcontrato = bcontrato
            Ngen.bcontratop = bcontratop
            Ngen.bfirma = bfirma
            
            
            Ngen.deslizar = deslizar
            Ngen.margeny = margen
            self.navigationController?.pushViewController(Ngen, animated: true)
        }
    }
    
    
    func convert(Imagen:UIImage) {
        let imageData: NSData = UIImageJPEGRepresentation(Imagen, 0.4)! as NSData
        bfirma = imageData.base64EncodedString(options: .lineLength64Characters)
        print("Imgen codificada en base 64:",bfirma)
        
    }

}
