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
        }
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
