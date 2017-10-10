//
//  Todos.swift
//  Afiliacion
//
//  Created by stefanini on 8/16/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import CoreData
class Todos: UIViewController,XMLParserDelegate,UITableViewDataSource,UITableViewDelegate {
    
    @objc var Buzonactivo = ""
    @objc var Catalogoactivo = ""
    //Objetos CoreData
    @objc var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    //Tabla parametros
    @objc var paramArray:[PARAMETRO] = []
    @objc var buzonA:[Rbuzon] = []
    @objc var buzonB:[BUZON_A] = []
    
    
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
        Tabla.delegate = self
        Tabla.dataSource = self
        
        fetchData2()
        fetchData3()
        fetchData4()
       
        Buscarparamba()
        Buscarparamca()
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
        print("Registros del Buzon activo")
        var num = 0
        print("***************XML BuzonA*******************")
        repeat {
           // print(num)
           //print(buzonA[num].solicitud_xml!)
            beginParsing(xml: buzonA[num].solicitud_xml!)
            num = num+1
        }while num < buzonA.count
        ExtDatos()
    }
    
    @objc func verBuzonb(){
        print("Registros del Buzon activo")
        var num = 0
        print("***************XML BuzonB*******************")
        repeat {
           
           //print(buzonB[num].solicitud_xml_b!)
            beginParsing(xml: buzonB[num].solicitud_xml_b!)
            num = num+1
        }while num < buzonB.count
        ExtDatos()
    }
    
    @objc func ExtDatos(){
        print("******************Extrayendo datos********************")
        var num = 0
        
        repeat{
            //print(Vnombre[num],"Indice",num)
            if Vnombre[num] != " " {
                Nombre.append(Vnombre[num])
                num = num+7
            }else {
                num = num+1
            }
         }while num < Vnombre.count-1
        
        num = 0
        repeat{
            //print("id:",num,"Valor:",vapep[num])
            if vapep[num] != " " {
                Apep.append(vapep[num])
                num = num+7
            }else{
               num = num+1
            }
         }while num < vapep.count-1
        
        num = 0
        repeat{
           // print("id:",num,"Valor:",vapem[num])
            if vapem[num] != " " {
                Apem.append(vapem[num])
                num = num+7
            }else {
                num = num+1
            }
        }while num < vapem.count-1
        //verDatos()
    }
    
    
    @objc func verDatos(){
        var num = 0
        
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
           vapep.append(string)
        }
        if element == "Amaterno" {
           vapem.append(string)
        }
        
    }
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
       var count = 0
        if Buzonactivo == "A" {
            count = buzonA.count
        }else {
            count = buzonB.count
        }
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SolicitudesCell
        if Buzonactivo == "A" {
            let formatter = DateFormatter()
            formatter.dateFormat =  "dd/MM/yyyy"
            let fecha = formatter.string(from: buzonA[indexPath.row].fecha_alta! as Date)
            cell.IdSolicitud.text = String(buzonA[indexPath.row].id_solicitud)
            cell.Nombre.text = Nombre[indexPath.row] + " " + Apep[indexPath.row] + " " + Apem[indexPath.row]
            cell.Fecha.text = fecha
        }else {
            let formatter = DateFormatter()
            formatter.dateFormat =  "dd/MM/yyyy"
            let fecha = formatter.string(from: buzonB[indexPath.row].fecha_alta_b! as Date)
            cell.IdSolicitud.text = String(buzonB[indexPath.row].id_solicitud_b)
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
                sol.Id = String(buzonA[indexPath.row].id_solicitud)
            }else {
                sol.Id = String(buzonB[indexPath.row].id_solicitud_b)
            }
            sol.BuzonActivo = self.Buzonactivo
            sol.CatalogoActivo = self.Catalogoactivo
            self.navigationController?.pushViewController(sol, animated: true)
        }
    }

}
