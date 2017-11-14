//
//  Foto.swift
//  Afiliacion
//
//  Created by stefanini on 7/31/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class Foto: BaseViewController {
    @objc var takenPhoto:UIImage?
    @objc var bandera = true
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
   
        if let availableimage = takenPhoto {
            imageView.image = availableimage
        }
      //convert(Imagen: imageView.image!)
    }
    
    @objc func convert(Imagen:UIImage) {
        let imageData: NSData = UIImageJPEGRepresentation(Imagen, 0.4)! as NSData
        let imageStr = imageData.base64EncodedString(options: .lineLength64Characters)
        print("Imgen codificada en base 64:",imageStr)
        
    }
    
    
    @IBAction func Camara(_ sender: UIButton) {
       /*
        if bandera == true {
            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "Foton") as? Foton {
                self.navigationController?.pushViewController(vc, animated: false)
            }
        }else {
            self.dismiss(animated: true, completion: nil)
        }
        */
        print("Contrato parte 1")
        if  let vista = self.storyboard?.instantiateViewController(withIdentifier: "New") as? Nuevo {
            self.navigationController?.pushViewController(vista, animated: false)
        }
    }
    
    @IBAction func Atras(_ sender: UIBarButtonItem) {
        let destViewController : UIViewController = self.storyboard!.instantiateViewController(withIdentifier: "Home")
        let topViewController : UIViewController = self.navigationController!.topViewController!
        if (topViewController.restorationIdentifier! == destViewController.restorationIdentifier!){
            print("Same VC")
        } else {
            self.navigationController!.pushViewController(destViewController, animated: true)
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

   

}
