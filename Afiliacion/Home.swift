//
//  Home.swift
//  Afiliacion
//
//  Created by stefanini on 7/28/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import CoreData

class Home: BaseViewController {
    
    //Datos Usuario
    @objc var Usuario2 = ""
    @objc var Contrasena = ""
    @objc var compania = ""
    @objc var id = 0
    //Buzon Activo
    @objc var buzonAct = ""
   
    //Contadores
    var Counttodas = 0
    var Countnuevas = 0
    var Countaceptadas = 0
    var Countenviadas = 0
    var Countcanceladas = 0
    var Countrechazadas = 0
    
    //Contenedores
    @IBOutlet weak var Todas: UIView!
    @IBOutlet weak var Nuevas: UIView!
    @IBOutlet weak var Aceptadas: UIView!
    @IBOutlet weak var Enviadas: UIView!
    @IBOutlet weak var Canceladas: UIView!
    @IBOutlet weak var Rechazadas: UIView!
    //Botones
    
    @IBOutlet weak var BtTodas: UIButton!
    @IBOutlet weak var BtNuevas: UIButton!
    @IBOutlet weak var BtAceptadas: UIButton!
    @IBOutlet weak var BtEnviadas: UIButton!
    @IBOutlet weak var BtCanceladas: UIButton!
    @IBOutlet weak var BtRechazadas: UIButton!
    
    //Etiquetas metricas
    @IBOutlet weak var EtTodas: UILabel!
    @IBOutlet weak var EtNuevas: UILabel!
    @IBOutlet weak var EtAceptadas: UILabel!
    @IBOutlet weak var EtEnviadas: UILabel!
    @IBOutlet weak var EtCanceladas: UILabel!
    @IBOutlet weak var EtRechazadas: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        Verparam2()
        
        //Etiquetas Redondas
        EtTodas.layer.masksToBounds = true
        EtTodas.layer.cornerRadius = 17.5
        EtTodas.text = String(Counttodas)
        
        EtNuevas.layer.masksToBounds = true
        EtNuevas.layer.cornerRadius = 17.5
        EtNuevas.text = String(Countnuevas)
        
        EtAceptadas.layer.masksToBounds = true
        EtAceptadas.layer.cornerRadius = 17.5
        EtAceptadas.text = String(Countaceptadas)
        
        EtEnviadas.layer.masksToBounds = true
        EtEnviadas.layer.cornerRadius = 17.5
        EtEnviadas.text = String(Countenviadas)
        
        EtCanceladas.layer.masksToBounds = true
        EtCanceladas.layer.cornerRadius = 17.5
        EtCanceladas.text = String(Countcanceladas)
        
        EtRechazadas.layer.masksToBounds = true
        EtRechazadas.layer.cornerRadius = 17.5
        EtRechazadas.text = String(Countrechazadas)
        
        //Botones Redondos
        BtTodas.layer.cornerRadius = 25
        BtTodas.layer.borderWidth = 1
        BtTodas.layer.borderColor = UIColor(red:0.83, green:0.83, blue:0.83, alpha:1.0).cgColor
        
        BtNuevas.layer.cornerRadius = 25
        BtNuevas.layer.borderWidth = 1
        BtNuevas.layer.borderColor = UIColor(red:0.83, green:0.83, blue:0.83, alpha:1.0).cgColor
        
        BtAceptadas.layer.cornerRadius = 25
        BtAceptadas.layer.borderWidth = 1
        BtAceptadas.layer.borderColor = UIColor(red:0.83, green:0.83, blue:0.83, alpha:1.0).cgColor
        
        BtEnviadas.layer.cornerRadius = 25
        BtEnviadas.layer.borderWidth = 1
        BtEnviadas.layer.borderColor = UIColor(red:0.83, green:0.83, blue:0.83, alpha:1.0).cgColor
        
        BtCanceladas.layer.cornerRadius = 25
        BtCanceladas.layer.borderWidth = 1
        BtCanceladas.layer.borderColor = UIColor(red:0.83, green:0.83, blue:0.83, alpha:1.0).cgColor
        
        BtRechazadas.layer.cornerRadius = 25
        BtRechazadas.layer.borderWidth = 1
        BtRechazadas.layer.borderColor = UIColor(red:0.83, green:0.83, blue:0.83, alpha:1.0).cgColor
        
        BtTodas.backgroundColor = UIColor(red:0.11, green:0.74, blue:0.92, alpha:1.0)
        
       
    }
    @objc func Verparam2(){
        var num = 0
        repeat {
            if paramArray[num].parametro == "BUZON_ACTIVO" {
                print("indice:",num,"Id:",paramArray[num].id_parametro,"parametro:",paramArray[num].parametro!,"valor",paramArray[num].valor!)
                buzonAct = paramArray[num].valor!
                break
            }else {
                num = num+1
            }
        }while num < paramArray.count
        valorSolicitudes()
    }
    @objc func valorSolicitudes(){
        var num = 0
        if buzonAct == "A" {
            Counttodas = buzonA.count
            print("Total de solicitudes",Counttodas)
            repeat {
                if buzonA[num].estatus == 1{
                    //print("ID",buzonA[num].id_solicitud,"Estatus",buzonA[num].estatus)
                    Countnuevas = Countnuevas+1
                    num = num+1
                }else {
                    if buzonA[num].estatus == 5{
                        //print("ID",buzonA[num].id_solicitud,"Estatus",buzonA[num].estatus)
                        Countenviadas = Countenviadas+1
                        num = num+1
                    }else {
                        if buzonA[num].estatus == 2{
                            //print("ID",buzonA[num].id_solicitud,"Estatus",buzonA[num].estatus)
                            Countaceptadas = Countaceptadas+1
                            num = num+1
                        }else {
                            if buzonA[num].estatus == 3{
                                //print("ID",buzonA[num].id_solicitud,"Estatus",buzonA[num].estatus)
                                Countrechazadas = Countrechazadas+1
                                num = num+1
                            }else {
                                if buzonA[num].estatus == 6 || buzonA[num].estatus == 0 {
                                    //print("ID",buzonA[num].id_solicitud,"Estatus",buzonA[num].estatus)
                                    Countcanceladas = Countcanceladas+1
                                    num = num+1
                                }else {
                                    num = num+1
                                }
                            }
                        }
                    }
                }
            }while num < buzonA.count
            
        }else {
            Counttodas = buzonB.count
            print("Total de solicitudes",Counttodas)
            repeat {
                if buzonB[num].estatus_b == 1{
                    //print("ID",buzonB[num].id_solicitud_b,"estatus_b",buzonB[num].estatus_b)
                    Countnuevas = Countnuevas+1
                    num = num+1
                }else {
                    if buzonB[num].estatus_b == 5{
                    //print("ID",buzonB[num].id_solicitud_b,"estatus_b",buzonB[num].estatus_b)
                        Countenviadas = Countenviadas+1
                        num = num+1
                    }else {
                        if buzonB[num].estatus_b == 2{
                        //print("ID",buzonB[num].id_solicitud_b,"estatus_b",buzonB[num].estatus_b)
                            Countaceptadas = Countaceptadas+1
                            num = num+1
                        }else {
                            if buzonB[num].estatus_b == 3{
                          //print("ID",buzonB[num].id_solicitud_b,"estatus_b",buzonB[num].estatus_b)
                                Countrechazadas = Countrechazadas+1
                                num = num+1
                            }else {
                                if buzonB[num].estatus_b == 6 || buzonB[num].estatus_b == 0 {
                                    //print("ID",buzonB[num].id_solicitud_b,"estatus_b",buzonB[num].estatus_b)
                                    Countcanceladas = Countcanceladas+1
                                    num = num+1
                                }else {
                                    num = num+1
                                }
                            }
                        }
                    }
                }
            }while num < buzonB.count
            
        }
    }
    
    //funcionalidad de botones
    @IBAction func Todas(_ sender: UIButton) {
        
        BtTodas.backgroundColor = UIColor(red:0.11, green:0.74, blue:0.92, alpha:1.0)
        BtNuevas.backgroundColor = UIColor.white
        BtAceptadas.backgroundColor = UIColor.white
        BtEnviadas.backgroundColor = UIColor.white
        BtCanceladas.backgroundColor = UIColor.white
        BtRechazadas.backgroundColor = UIColor.white
      
        BtTodas.setTitleColor(UIColor.white, for: .normal)
        BtNuevas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtAceptadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtEnviadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtCanceladas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtRechazadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        
        Todas.alpha = 1
        Nuevas.alpha = 0
        Aceptadas.alpha = 0
        Enviadas.alpha = 0
        Canceladas.alpha = 0
        Rechazadas.alpha = 0
    }
    
    @IBAction func Nuevas(_ sender: UIButton) {
        
        BtTodas.backgroundColor = UIColor.white
        BtNuevas.backgroundColor = UIColor(red:0.61, green:0.60, blue:0.60, alpha:1.0) //Gris
        BtAceptadas.backgroundColor = UIColor.white
        BtEnviadas.backgroundColor = UIColor.white
        BtCanceladas.backgroundColor = UIColor.white
        BtRechazadas.backgroundColor = UIColor.white
        
        BtTodas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtNuevas.setTitleColor(UIColor.white, for: .normal)
        BtAceptadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtEnviadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtCanceladas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtRechazadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        
        BtNuevas.setImage(UIImage(named:"Nuevas2.png"), for: .selected)
        
        Todas.alpha = 0
        Nuevas.alpha = 1
        Aceptadas.alpha = 0
        Enviadas.alpha = 0
        Canceladas.alpha = 0
        Rechazadas.alpha = 0
    }
    
   
    @IBAction func Aceptadas(_ sender: UIButton) {
        
        BtTodas.backgroundColor = UIColor.white
        BtNuevas.backgroundColor = UIColor.white
        BtAceptadas.backgroundColor = UIColor(red:0.00, green:0.94, blue:0.15, alpha:1.0) //Verde
        BtEnviadas.backgroundColor = UIColor.white
        BtCanceladas.backgroundColor = UIColor.white
        BtRechazadas.backgroundColor = UIColor.white
        
        BtTodas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtNuevas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtAceptadas.setTitleColor(UIColor.white, for: .normal)
        BtEnviadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtCanceladas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtRechazadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        
        Todas.alpha = 0
        Nuevas.alpha = 0
        Aceptadas.alpha = 1
        Enviadas.alpha = 0
        Canceladas.alpha = 0
        Rechazadas.alpha = 0
    }
    
    @IBAction func Enviadas(_ sender: UIButton) {
        
        BtTodas.backgroundColor = UIColor.white
        BtNuevas.backgroundColor = UIColor.white
        BtAceptadas.backgroundColor = UIColor.white
        BtEnviadas.backgroundColor = UIColor(red:0.11, green:0.74, blue:0.92, alpha:1.0) //Azul
        BtCanceladas.backgroundColor = UIColor.white
        BtRechazadas.backgroundColor = UIColor.white
        
        BtTodas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtNuevas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtAceptadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtEnviadas.setTitleColor(UIColor.white, for: .normal)
        BtCanceladas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtRechazadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        
        Todas.alpha = 0
        Nuevas.alpha = 0
        Aceptadas.alpha = 0
        Enviadas.alpha = 1
        Canceladas.alpha = 0
        Rechazadas.alpha = 0
    }
    
    @IBAction func Canceladas(_ sender: UIButton) {
        
        BtTodas.backgroundColor = UIColor.white
        BtNuevas.backgroundColor = UIColor.white
        BtAceptadas.backgroundColor = UIColor.white
        BtEnviadas.backgroundColor = UIColor.white
        BtCanceladas.backgroundColor = UIColor(red:0.97, green:0.05, blue:0.05, alpha:1.0) //rojo
        BtRechazadas.backgroundColor = UIColor.white
        
        BtTodas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtNuevas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtAceptadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtEnviadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtCanceladas.setTitleColor(UIColor.white, for: .normal)
        BtRechazadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        
        Todas.alpha = 0
        Nuevas.alpha = 0
        Aceptadas.alpha = 0
        Enviadas.alpha = 0
        Canceladas.alpha = 1
        Rechazadas.alpha = 0
    }
    
    @IBAction func Rechazadas(_ sender: UIButton) {
        
        BtTodas.backgroundColor = UIColor.white
        BtNuevas.backgroundColor = UIColor.white
        BtAceptadas.backgroundColor = UIColor.white
        BtEnviadas.backgroundColor = UIColor.white
        BtCanceladas.backgroundColor = UIColor.white
        BtRechazadas.backgroundColor = UIColor(red:0.95, green:0.97, blue:0.05, alpha:1.0) //amarillo
        
        BtTodas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtNuevas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtAceptadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtEnviadas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtCanceladas.setTitleColor(UIColor(red:0.03, green:0.55, blue:0.90, alpha:1.0), for: .normal)
        BtRechazadas.setTitleColor(UIColor.white, for: .normal)
        
        Todas.alpha = 0
        Nuevas.alpha = 0
        Aceptadas.alpha = 0
        Enviadas.alpha = 0
        Canceladas.alpha = 0
        Rechazadas.alpha = 1
    }
    
    


}
