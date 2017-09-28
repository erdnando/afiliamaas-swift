//
//  Identificacionf.swift
//  Afiliacion
//
//  Created by stefanini on 25/09/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import AVFoundation
class Identificacionf: BaseViewController,AVCaptureVideoDataOutputSampleBufferDelegate {

    
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
    
    //Variables de Avfoundation
    let captureSession = AVCaptureSession()
    var previewLayer:CALayer!
    var capturedevice:AVCaptureDevice!
    var takePhoto = false

var margen = 0
    var deslizar = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareCamera()
    }
    
    func prepareCamera(){
        captureSession.sessionPreset = AVCaptureSessionPresetPhoto
        if let availabledevices = AVCaptureDeviceDiscoverySession(deviceTypes: [.builtInWideAngleCamera], mediaType: AVMediaTypeVideo, position: .back).devices {
            capturedevice = availabledevices.first
            beginnSession()
        }
    }
    func beginnSession () {
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
            dataOutput.videoSettings = [(kCVPixelBufferPixelFormatTypeKey as NSString):NSNumber(value: kCVPixelFormatType_32BGRA )]
            dataOutput.alwaysDiscardsLateVideoFrames = true
            
            if captureSession.canAddOutput(dataOutput) {
                captureSession.addOutput(dataOutput)
            }
            
            captureSession.commitConfiguration()
            
            let queue = DispatchQueue(label: "com.brianadvent.CaptureQueue")
            dataOutput.setSampleBufferDelegate(self, queue: queue)
        }
    }
    
    
    
    @IBAction func Tomarfoto(_ sender: UIBarButtonItem) {
        takePhoto = true
    }
    
    func captureOutput(_ captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!) {
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
    
    func getImageFromSampleBuffer(buffer:CMSampleBuffer) -> UIImage?{
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
    
    func stopCaptureSession(){
        self.captureSession.stopRunning()
        if let inputs = captureSession.inputs as? [AVCaptureDeviceInput] {
            for input in inputs {
                self.captureSession.removeInput(input)
            }
        }
    }


}
