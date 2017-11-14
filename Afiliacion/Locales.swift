//
//  Locales.swift
//  Afiliacion
//
//  Created by stefanini on 11/9/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import CoreData
class Locales: UIViewController,XMLParserDelegate,UITableViewDelegate,UITableViewDataSource {
    @objc var Buzonactivo = ""
    @objc var Catalogoactivo = ""
    //Objetos CoreData
    @objc var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    @objc var tamano = 0
    //Tabla parametros
    @objc var paramArray:[PARAMETRO] = []
    @objc var buzonA:[Rbuzon] = []
    @objc var buzonB:[BUZON_A] = []
    
    @objc var Solicitudid:[String] = []
    @objc var Nombre:[String] = []
    @objc var Apep:[String] = []
    @objc var Apem:[String] = []
    
    @objc var Vnombre:[String] = []
    @objc var vapep:[String] = []
    @objc var vapem:[String] = []
    
    //Variables para parciar
    @objc var parser = XMLParser()
    @objc var element:String = ""
    
    @IBOutlet weak var Tabla: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData2()
        fetchData3()
        fetchData4()
        
        Buscarparamba()
        Buscarparamca()
        print("valor de tamano",tamano)
        Tabla.delegate = self
        Tabla.dataSource = self
    }
    
    @objc func fetchData2() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            paramArray = try context.fetch(PARAMETRO.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    @objc func fetchData3() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            buzonA = try context.fetch(Rbuzon.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    @objc func fetchData4() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            buzonB = try context.fetch(BUZON_A.fetchRequest())
        }catch {
            print(error)
        }
    }
    
    
    
    //Buscar buzon activo
    @objc func Buscarparamba(){
        var num = 0
        repeat{
            if paramArray[num].parametro == "BUZON_ACTIVO" {
                //buzon activo
                break
            }else {
                num = num+1
            }
        }while num < paramArray.count
        if paramArray[num].valor == "A" {
            Buzonactivo = "A"
            verBuzona()
        }else {
            Buzonactivo = "B"
            verBuzonb()
        }
    }
    //Buscar Catalogo Activo
    @objc func Buscarparamca() {
        var num = 0
        repeat{
            if paramArray[num].parametro == "CATALOGO_ACTIVO" {
                //Catalogo Activo
                break
            }else {
                num = num+1
            }
        }while num < paramArray.count
        if paramArray[num].valor == "A" {
            Catalogoactivo = "A"
        }else {
            Catalogoactivo = "B"
        }
        
    }
    //Estraer Xml dependiendo quie sea el buzon activo
    @objc func verBuzona(){
        
        var num = 0
        print("***************XML BuzonA*******************")
        repeat {
            // print(num)
            //print(buzonA[num].solicitud_xml!)
            if buzonA[num].estatus == 6 || buzonA[num].estatus == 0 {
                Solicitudid.append(String(buzonA[num].id_solicitud))
                beginParsing(xml: buzonA[num].solicitud_xml!)
                ExtDatos()
                
                num = num+1
                
            }else {
                num = num+1
            }
            
        }while num < buzonA.count
        
    }
    
    @objc func verBuzonb(){
        
        var num = 0
        print("***************XML BuzonB*******************")
        repeat {
            if buzonB[num].estatus_b == 6 || buzonB[num].estatus_b == 0{
                
                //print(buzonB[num].solicitud_xml_b!,"valor de NUm",num)
                Solicitudid.append(String(buzonB[num].id_solicitud_b))
                beginParsing(xml: buzonB[num].solicitud_xml_b!)
                ExtDatos()
                
                num = num+1
            }else {
                num = num+1
            }
            
        }while num < buzonB.count
        
    }
    
    @objc func ExtDatos(){
        //print("******************insertando datos********************")
        Nombre.append(Vnombre[0])
        Apep.append(vapep[0])
        Apem.append(vapem[0])
        tamano = tamano+1
        Vnombre.removeAll()
        vapep.removeAll()
        vapem.removeAll()
    }
    
    
    @objc func verDatos(){
        var num = 0
        print("datos en tabla")
        
        repeat {
            print("Nombre",Nombre[num])
            print("Apellido Paterno:",Apep[num])
            print("Apellido Materno:",Apem[num])
            num = num + 1
        }while num < Nombre.count
        
    }
    
    func beginParsing(xml:String)
    {
        let dato = xml.data(using: .utf8)
        parser = XMLParser(data: dato!)
        parser.delegate = self
        parser.parse()
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String])
    {
        element = elementName
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String)
    {
        
        if element == "Pmrnombre" {
            //print("Nombre",string)
            Vnombre.append(string)
        }
        
        if element == "Apaterno" {
            //print("Apep",string)
            vapep.append(string)
        }
        if element == "Amaterno" {
            //print("Apem",string)
            vapem.append(string)
        }
        
    }
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        var count = 0
        if Buzonactivo == "A" {
            count = tamano
        }else {
            count = tamano
        }
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SolicitudesCell
        if Buzonactivo == "A" {
            let formatter = DateFormatter()
            formatter.dateFormat =  "dd/MM/yyyy"
            let fecha = formatter.string(from: buzonA[indexPath.row].fecha_alta! as Date)
            cell.IdSolicitud.text = Solicitudid[indexPath.row]
            cell.Nombre.text = Nombre[indexPath.row] + " " + Apep[indexPath.row] + " " + Apem[indexPath.row]
            cell.Fecha.text = fecha
        }else {
            let formatter = DateFormatter()
            formatter.dateFormat =  "dd/MM/yyyy"
            let fecha = formatter.string(from: buzonB[indexPath.row].fecha_alta_b! as Date)
            cell.IdSolicitud.text = Solicitudid[indexPath.row]
            cell.Nombre.text = Nombre[indexPath.row] + " " + Apep[indexPath.row] + " " + Apem[indexPath.row]
            cell.Fecha.text =  fecha
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selecionaste una celda")
        if let sol = self.storyboard?.instantiateViewController(withIdentifier: "Solicitud_Detalle") as? Solicitudes {
            if Buzonactivo == "A" {
                sol.Id = Solicitudid[indexPath.row]
            }else {
                sol.Id = Solicitudid[indexPath.row]
            }
            sol.BuzonActivo = self.Buzonactivo
            sol.CatalogoActivo = self.Catalogoactivo
            self.navigationController?.pushViewController(sol, animated: true)
        }
    }

}
