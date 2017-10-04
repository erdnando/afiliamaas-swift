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
    @objc var Grnombre = ""
    @objc var Grsnombre = ""
    @objc var Grapep = ""
    @objc var Grapem = ""
    @objc var Grtipo = "Tipo de identificacion"
    @objc var Gridtipo = ""
    @objc var Gridentificacion = ""
    @objc var sexo = ""
    @objc var Grnacionalidad = "Nacionalidad"
    @objc var Gridnacionalidad = ""
    @objc var Grfecha = "Fecha de nacimiento"
    @objc var Grrfc = ""
    @objc var Grestcivil = "Estado civil"
    @objc var Gridestcivil = ""
    @objc var Grnumero = ""
    
    //Domicilio
    @objc var Drcalle = ""
    @objc var Drnume = ""
    @objc var Drnumi = ""
    @objc var Drcolonia = ""
    @objc var Drestado = "Estado"
    @objc var Dridestado = ""
    @objc var Drdel = "Delegación/Municipio"
    @objc var Driddel = ""
    @objc var Drcp = ""
    @objc var Drtiempo = ""
    @objc var Drestatus = "Estatus de residencia"
    @objc var Dridestatus = ""
    @objc var Drmonto = ""
    @objc var Drcorreo = ""
    @objc var Drtelefono = ""
    @objc var Drmovil = ""
    @objc var Drcompania = "Compañia movil"
    @objc var Dridcompania = ""
    
    //Datos economicos
    @objc var Drnombre = ""
    @objc var Drgiro = ""
    @objc var Drantiguedad = ""
    @objc var Drtipo = "Tipo de contrato"
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
    @objc var Drestado2 = "Estado"
    @objc var Dridestado2 = ""
    @objc var Drdel2 = "Delegación/Municipio"
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
    @objc var Rrnacionalidad = "Nacionalidad"
    @objc var Rridnacionalidad = ""
    @objc var Rrtelefono = ""
    
    @objc var R2rnombre = ""
    @objc var R2rapep = ""
    @objc var R2rapem = ""
    @objc var Rr2nacionalidad = "Nacionalidad"
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
    var tidentificacionf = ""
    @objc var bidentificaciont = ""
    var tidentificaciont = ""
    @objc var bfirma = ""
    var tfirma = ""
    
    @objc var margen = 0
    @objc var deslizar = 0
    
    @IBOutlet weak var Panel: UIImageView!
    @objc var lastPoint = CGPoint.zero
    @objc var red: CGFloat = 0.0
    @objc var green: CGFloat = 0.0
    @objc var blue: CGFloat = 0.0
    @objc var brushWidth: CGFloat = 10.0
    @objc var opacity: CGFloat = 1.0
    @objc var swiped = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = false
        if let touch = touches.first {
            lastPoint = touch.location(in: self.view)
        }
    }
    
    @objc func drawLineFrom(fromPoint: CGPoint, toPoint: CGPoint) {
        
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
            Ngen.tidentificacionf = tidentificacionf
            Ngen.bidentificaciont = bidentificaciont
            Ngen.tidentificaciont = tidentificaciont
            Ngen.bfirma = bfirma
            Ngen.tfirma = tfirma
            Ngen.deslizar = deslizar
            Ngen.margeny = margen
            self.navigationController?.pushViewController(Ngen, animated: false)
        }
    }
    
    
    @objc func convert(Imagen:UIImage) {
        let imageData: NSData = UIImageJPEGRepresentation(Imagen, 0.4)! as NSData
        bfirma = imageData.base64EncodedString(options: .lineLength64Characters)
        print("Imgen codificada en base 64:",bfirma)
        let ticks = String(Date().ticks)
        tfirma = "TEC_"+ticks+".jpg"
        print(tfirma)
    }

}
//codigo para ticks
extension Date {
    var ticks: UInt64 {
        return UInt64((self.timeIntervalSince1970 + 62_135_596_800) * 10_000_000)
    }
}
