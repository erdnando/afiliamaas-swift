//
//  SolicitudesCell.swift
//  Afiliacion
//
//  Created by stefanini on 07/09/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class SolicitudesCell: UITableViewCell {

   
    @IBOutlet weak var IdSolicitud: UILabel!
    @IBOutlet weak var Nombre: UILabel!
    @IBOutlet weak var Fecha: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
