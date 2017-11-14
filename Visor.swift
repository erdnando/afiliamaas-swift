//
//  Visor.swift
//  Afiliacion
//
//  Created by stefanini on 18/09/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class Visor: UIViewController {

   
    @IBOutlet weak var Titulo: UILabel!
    @IBOutlet weak var Imagen: UIImageView!
    @objc var texto = ""
    @objc var Iimagen = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        Titulo.text = texto
        cargarimagen()
    }
    @objc func cargarimagen() {
        //identificacion frente
        let identf : Data = Data(base64Encoded: Iimagen, options: .ignoreUnknownCharacters)!
        let decodedimagef = UIImage(data: identf)
        Imagen.image = decodedimagef
    }

}
