//
//  Foton.swift
//  Afiliacion
//
//  Created by stefanini on 8/4/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import AVFoundation
class Foton: BaseViewController,AVCaptureVideoDataOutputSampleBufferDelegate {
    let captureSession = AVCaptureSession()
    var previewLayer:CALayer!
    var capturedevice:AVCaptureDevice!
    var takePhoto = false
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
    @IBAction func takePhoto(_ sender: Any) {
        takePhoto = true
    }
    
    
    func captureOutput(_ captureOutput: AVCaptureOutput!, didOutputSampleBuffer sampleBuffer: CMSampleBuffer!, from connection: AVCaptureConnection!) {
        if takePhoto {
            takePhoto = false
            if let image = self.getImageFromSampleBuffer(buffer: sampleBuffer) {
                
                let photoVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Foto") as! Foto
                photoVc.takenPhoto = image
                photoVc.bandera = false
                DispatchQueue.main.async {
                    self.present(photoVc, animated: true, completion:{
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
