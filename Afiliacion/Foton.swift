//
//  Foton.swift
//  Afiliacion
//
//  Created by stefanini on 8/4/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import AVFoundation
class Foton: BaseViewController{
    
    @IBOutlet weak var previewView: UIView!
    
    var captureSession: AVCaptureSession?
    var videoPreviewLayer: AVCaptureVideoPreviewLayer?
    var capturePhotoOutput: AVCapturePhotoOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        // Get an instance of ACCapturePhotoOutput class
        capturePhotoOutput = AVCapturePhotoOutput()
        capturePhotoOutput?.isHighResolutionCaptureEnabled = true
        // Set the output on the capture session
        captureSession?.addOutput(capturePhotoOutput!)
    }
    
    @IBAction func takePhoto(_ sender: Any) {
        print("Hola mundo")
        // Make sure capturePhotoOutput is valid
        guard let capturePhotoOutput = self.capturePhotoOutput else { return }
        // Get an instance of AVCapturePhotoSettings class
        let photoSettings = AVCapturePhotoSettings()
        // Set photo settings for our need
        photoSettings.isAutoStillImageStabilizationEnabled = true
        photoSettings.isHighResolutionPhotoEnabled = true
        photoSettings.flashMode = .auto
        // Call capturePhoto method by passing our photo settings and a
        // delegate implementing AVCapturePhotoCaptureDelegate
        capturePhotoOutput.capturePhoto(with: photoSettings, delegate: self as! AVCapturePhotoCaptureDelegate)
    }
 
}
extension ViewController : AVCapturePhotoCaptureDelegate {
    func photoOutput(_ captureOutput: AVCapturePhotoOutput, didFinishProcessingPhoto photoSampleBuffer: CMSampleBuffer?,previewPhoto previewPhotoSampleBuffer: CMSampleBuffer?,resolvedSettings:AVCaptureResolvedPhotoSettings,
                 bracketSettings: AVCaptureBracketedStillImageSettings?,
                 error: Error?) {
        // get captured image
        // Make sure we get some photo sample buffer
        guard error == nil,
            let photoSampleBuffer = photoSampleBuffer else {
                print("Error capturing photo: \(String(describing: error))")
                return
        }
        // Convert photo same buffer to a jpeg image data by using // AVCapturePhotoOutput

        if let convert = CMSampleBufferGetImageBuffer(photoSampleBuffer) {
            let cim = CIImage(cvPixelBuffer: convert)
            let im = UIImage(ciImage: cim)
            let imageData: NSData = UIImageJPEGRepresentation(im, 0.4)! as NSData
            let imageStr = imageData.base64EncodedString(options: .lineLength64Characters)
            print("Imagen codificada en base 64:",imageStr)
        }
        // Initialise a UIImage with our image data
        /*
        let capturedImage = UIImage.init(data: imageData , scale: 1.0)
        if let image = capturedImage {
            // Save our captured image to photos album
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        }
        */
    }
   
}
