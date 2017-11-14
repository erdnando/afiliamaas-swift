//
//  Identificacionf.swift
//  Afiliacion
//
//  Created by stefanini on 25/09/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
//import AVFoundation
class Identificacionf: BaseViewController {

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
    
    @objc var bidentificaciont = ""
    @objc var bcontrato = ""
    @objc var bcontratop = ""
    @objc var bfirma = ""
/*
    //Variables de Avfoundation
    @objc let captureSession = AVCaptureSession()
    @objc var previewLayer:CALayer!
    @objc var capturedevice:AVCaptureDevice!
    @objc var takePhoto = false
*/
@objc var margen = 0
    @objc var deslizar = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
/*
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareCamera()
    }
    
    @objc func prepareCamera(){
        captureSession.sessionPreset = AVCaptureSession.Preset.photo
        if let availabledevices = AVCaptureDevice.DiscoverySession(deviceTypes: [AVCaptureDevice.DeviceType.builtInWideAngleCamera], mediaType: AVMediaType.video, position: .back).devices {
            capturedevice = availabledevices.first
            beginnSession()
        }
    }
    @objc func beginnSession () {
        do {
            let captureDeviceInput = try AVCaptureDeviceInput(device: capturedevice)
            captureSession.addInput(captureDeviceInput)
        }catch {
            print(error.localizedDescription)
        }
        
        if let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession) {
            self.previewLayer = previewLayer
            self.view.layer.addSublayer(self.previewLayer)
            self.previewLayer.frame = self.view.layer.frame
            captureSession.startRunning()
            let dataOutput = AVCaptureVideoDataOutput()
            dataOutput.videoSettings = [((kCVPixelBufferPixelFormatTypeKey as NSString) as String):NSNumber(value: kCVPixelFormatType_32BGRA )]
            dataOutput.alwaysDiscardsLateVideoFrames = true
            
            if captureSession.canAddOutput(dataOutput) {
                captureSession.addOutput(dataOutput)
            }
            
            captureSession.commitConfiguration()
            
            let queue = DispatchQueue(label: "com.brianadvent.CaptureQueue")
            dataOutput.setSampleBufferDelegate(self, queue: queue)
        }
    }
    
    */
    
    @IBAction func Tomarfoto(_ sender: UIBarButtonItem) {
        //takePhoto = true
    }
    /*
    @objc func captureOutput(captureOutput: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        if takePhoto {
            takePhoto = false
            if let image = self.getImageFromSampleBuffer(buffer: sampleBuffer) {
                
                let imageData: NSData = UIImageJPEGRepresentation(image, 0.4)! as NSData
                bidentificacionf = imageData.base64EncodedString(options: .lineLength64Characters)
                
                
                let Ngen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Newgen") as! Nuevogeneral
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
                
            
                DispatchQueue.main.async {
                    self.present(Ngen, animated: true, completion:{
                        self.stopCaptureSession()
                    })
                }
            }
        }
    }
    
    @objc func getImageFromSampleBuffer(buffer:CMSampleBuffer) -> UIImage?{
        if let pixelbuffer = CMSampleBufferGetImageBuffer(buffer) {
            let ciImage = CIImage(cvPixelBuffer: pixelbuffer)
            let context = CIContext()
            let imageRect = CGRect(x: 0, y: 0, width: CVPixelBufferGetWidth(pixelbuffer), height: CVPixelBufferGetHeight(pixelbuffer))
            if let image = context.createCGImage(ciImage, from: imageRect) {
                return UIImage(cgImage: image, scale: UIScreen.main.scale, orientation: .right)
            }
        }
        return nil
    }
    
    @objc func stopCaptureSession(){
        self.captureSession.stopRunning()
        if let inputs = captureSession.inputs as? [AVCaptureDeviceInput] {
            for input in inputs {
                self.captureSession.removeInput(input)
            }
        }
    }
   */

}
