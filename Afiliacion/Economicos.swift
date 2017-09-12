//
//  Economicos.swift
//  Afiliacion
//
//  Created by stefanini on 7/31/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class Economicos: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        // Do any additional setup after loading the view.
    }

  
    @IBAction func Siguiente(_ sender: UIButton) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "Per") as? PersonaPolitica {
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }
    
    @IBAction func Atras(_ sender: UIButton) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "Dom") as? Domicilio {
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
