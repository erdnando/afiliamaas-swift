//
//  Nuevo.swift
//  Afiliacion
//
//  Created by stefanini on 7/31/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class Nuevo: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Identificacion(_ sender: UIButton) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "Foto") as? Foto {
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }
    @IBAction func Siguiente(_ sender: UIButton) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "Dom") as? Domicilio {
            self.navigationController?.pushViewController(vc, animated: false)
        }
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
