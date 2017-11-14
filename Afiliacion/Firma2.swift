//
//  Firma2.swift
//  Afiliacion
//
//  Created by stefanini on 11/7/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class Firma2: UIViewController {
    var Imagen = ""
    var Imagent = ""
    
    var Identificador = 0
    var Solicitudid = ""
    var BuzonActivo = ""
    var margen = 0
    var Catalogo = ""
  
    @IBOutlet weak var Panel: UIImageView!
    @objc var lastPoint = CGPoint.zero
    @objc var red: CGFloat = 0.0
    @objc var green: CGFloat = 0.0
    @objc var blue: CGFloat = 0.0
    @objc var brushWidth: CGFloat = 5.0
    @objc var opacity: CGFloat = 1.0
    @objc var swiped = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Firma"
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
        convert(Imagenv:Panel.image!)
        if  let Sol = self.storyboard?.instantiateViewController(withIdentifier: "Solicitud_Detalle") as? Solicitudes {
            Sol.Id = Solicitudid
            Sol.BuzonActivo = BuzonActivo
            Sol.identificador = Identificador
            Sol.margen = margen
            Sol.CatalogoActivo =  Catalogo
            Sol.Imagen = Imagen
            Sol.Imagent = Imagent
            self.navigationController?.pushViewController(Sol, animated: false)
        }
            
    }
    
    @objc func convert(Imagenv:UIImage) {
        let imageData: NSData = UIImageJPEGRepresentation(Imagenv, 0.4)! as NSData
        Imagen = imageData.base64EncodedString(options: .lineLength64Characters)
        print("Imagen codificada en base 64:",Imagen)
        let ticks = String(Date().ticks2)
        Imagent = "TEC_"+ticks+".jpg"
        print(Imagent)
    }
    
}


//codigo para ticks
extension Date {
    var ticks2: UInt64 {
        return UInt64((self.timeIntervalSince1970 + 62_135_596_800) * 10_000_000)
    }
}
