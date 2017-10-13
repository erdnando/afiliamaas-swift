//
//  Foton.swift
//  Afiliacion
//
//  Created by stefanini on 8/4/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import AVFoundation
class Foton: BaseViewController {
    
    @IBOutlet weak var previewView: UIView!
    
    var captureSession: AVCaptureSession?
    var videoPreviewLayer: AVCaptureVideoPreviewLayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        //Configuracion de la camara trasera
        do {
            let captureDevice = AVCaptureDevice.default(for: AVMediaType.video)
            let input = try AVCaptureDeviceInput(device: captureDevice!)
            captureSession = AVCaptureSession()
            captureSession?.addInput(input)
            //aa
            videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession!)
            videoPreviewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
            videoPreviewLayer?.frame = view.layer.bounds
            previewView.layer.addSublayer(videoPreviewLayer!)
            //Inciar la seccion en la camara
            captureSession?.startRunning()
        } catch {
            print(error)
        }
        
    }
    
    @IBAction func takePhoto(_ sender: Any) {
        print("Hola mundo")
    }
    
    

    
    
}
