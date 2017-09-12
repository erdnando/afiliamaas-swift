//
//  PersonaPolitica.swift
//  Afiliacion
//
//  Created by stefanini on 22/08/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class PersonaPolitica: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func Siguiente(_ sender: UIButton) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "Ref") as? Referencias {
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }
    
    @IBAction func Atras(_ sender: UIButton) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "Eco") as? Economicos {
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
