//
//  Foto.swift
//  Afiliacion
//
//  Created by stefanini on 7/31/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class Foto: BaseViewController {
    var takenPhoto:UIImage?
    var bandera = true
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    addSlideMenuButton()
        if let availableimage = takenPhoto {
            imageView.image = availableimage
        print("nombre de la imagen: ",imageView.image!)
        }
      convert(Imagen: imageView.image!)
    }
    
    func convert(Imagen:UIImage) {
        let imageData: NSData = UIImageJPEGRepresentation(Imagen, 0.4)! as NSData
        let imageStr = imageData.base64EncodedString(options: .lineLength64Characters)
        print("Imgen codificada en base 64:",imageStr)
        
    }
    
    
    @IBAction func Camara(_ sender: UIButton) {
        if bandera == true {
            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "Foton") as? Foton {
                self.navigationController?.pushViewController(vc, animated: false)
            }
        }else {
            self.dismiss(animated: true, completion: nil)
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

   

}
