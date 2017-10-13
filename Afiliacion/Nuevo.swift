//
//  Nuevo.swift
//  Afiliacion
//
//  Created by stefanini on 7/31/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit
import CoreData
class Nuevo: BaseViewController {
    
    //Variable que Verifica si ya se guardo una vez
    var guardar = 0
    var validador = 0
    //Etiquetas
    @IBOutlet weak var General: UILabel!
    @IBOutlet weak var LDom: UILabel!
    @IBOutlet weak var Domicilio: UILabel!
    @IBOutlet weak var LDatos: UILabel!
    @IBOutlet weak var Datos: UILabel!
    @IBOutlet weak var Lpersona: UILabel!
    @IBOutlet weak var Persona: UILabel!
    @IBOutlet weak var Lreferencias: UILabel!
    @IBOutlet weak var Referencias: UILabel!
    @IBOutlet weak var Ldocumentos: UILabel!
    @IBOutlet weak var Documentos: UILabel!
    
    @objc var prueba = ""
     //General
    
    @objc var Grnombre = ""
    @objc var Grsnombre = ""
    @objc var Grapep = ""
    @objc var Grapem = ""
    @objc var Grtipo = "Tipo de identificacion *"
    @objc var Gridtipo = ""
    @objc var Gridentificacion = ""
    @objc var sexo = ""
    @objc var Grnacionalidad = "Nacionalidad*"
    @objc var Gridnacionalidad = ""
    @objc var Grfecha = "Fecha de nacimiento*"
    @objc var Grrfc = ""
    @objc var Grestcivil = "Estado civil*"
    @objc var Gridestcivil = ""
    @objc var Grnumero = ""

    
    //Domicilio
   
    @objc var Drcalle = ""
    @objc var Drnume = ""
    @objc var Drnumi = ""
    @objc var Drcolonia = ""
    @objc var Drestado = "Estado*"
    @objc var Dridestado = ""
    @objc var Drdel = "Delegación/Municipio*"
    @objc var Driddel = ""
    @objc var Drcp = ""
    @objc var Drtiempo = ""
    @objc var Drestatus = "Estatus de residencia*"
    @objc var Dridestatus = ""
    @objc var Drmonto = ""
    @objc var Drcorreo = ""
    @objc var Drtelefono = ""
    @objc var Drmovil = ""
    @objc var Drcompania = "Compañia movil*"
    @objc var Dridcompania = ""
    
    //Datos economicos
   
    @objc var Drnombre = ""
    @objc var Drgiro = ""
    @objc var Drantiguedad = ""
    @objc var Drtipo = "Tipo de contrato*"
    @objc var Dridtipo = ""
    @objc var Drpuesto = ""
    @objc var Dringreso = ""
    @objc var Drcasado = ""
    @objc var Drfuente = ""
    @objc var Drotros = ""
    @objc var Drcalle2 = ""
    @objc var Drnume2 = ""
    @objc var Drnumi2 = ""
    @objc var Drcolonia2 = ""
    @objc var Drestado2 = "Estado*"
    @objc var Dridestado2 = ""
    @objc var Drdel2 = "Delegación/Municipio*"
    @objc var Driddel2 = ""
    @objc var Drcp2 = ""
    @objc var Drtelefono2 = ""
    @objc var Drextencion = ""
    
    //Persona politica
  
    @objc var person = ""
    @objc var Prfuncion = ""
    @objc var parentesco = ""
    @objc var Prfuncion2 = ""
    @objc var Prparentesco = ""
    
    //Referecias familiares
   
    @objc var Rrnombre = ""
    @objc var Rrapep = ""
    @objc var Rrapem = ""
    @objc var Rrnacionalidad = "Nacionalidad*"
    @objc var Rridnacionalidad = ""
    @objc var Rrtelefono = ""
    
    @objc var R2rnombre = ""
    @objc var R2rapep = ""
    @objc var R2rapem = ""
    @objc var Rr2nacionalidad = "Nacionalidad*"
    @objc var Rridnacionalidad2 = ""
    @objc var R2rtelefono = ""
    
    @objc var R3rnombre = ""
    @objc var R3rapep = ""
    @objc var R3rapem = ""
    @objc var Rr3nacionalidad = "Nacionalidad"
    @objc var Rridnacionalidad3 = ""
    @objc var R3rtelefono = ""
    //Documentos
    @objc var bidentificacionf = ""
    var tidentificacionf = "Identificacion parte frontal"
    @objc var bidentificaciont = ""
    var tidentificaciont = "Identificacion parte posterior"
    @objc var bfirma = ""
    var tfirma = "Firma"
    
    //Datos de promotor
    var Idusuario = 0
    @objc var usuario = ""
    @objc var pass = ""
    @objc var comp = ""
    @objc var userArray:[USUARIO] = []
    @objc var buzonA:[Rbuzon] = []
    @objc var buzonB:[BUZON_A] = []
    @objc var paramArray:[PARAMETRO] = []
    @objc var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    //validadores de Clase Nuevo
    @objc var identificador = 0
    @objc var margen = 0
    @objc var deslizar = 0
    var marco = 0
    var Buzon = ""
    //ID solicitud
    var IdSolicitud = 1
    //Estatus de solicitud
    var Estatus = 6
    //Array de campos faltantes
    var Arraycamp:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        fetchData()
        fetchData2()
        fetchData3()
        fetchData4()
        //Etiquetas Redondas
        
        General.layer.masksToBounds = true
        General.layer.cornerRadius = 17.5
        
        Domicilio?.layer.masksToBounds = true
        Domicilio?.layer.cornerRadius = 17.5
        
        Datos.layer.masksToBounds = true
        Datos.layer.cornerRadius = 17.5
        
        Persona.layer.masksToBounds = true
        Persona.layer.cornerRadius = 17.5
        
        Referencias.layer.masksToBounds = true
        Referencias.layer.cornerRadius = 17.5
        
        Documentos.layer.masksToBounds = true
        Documentos.layer.cornerRadius = 17.5
        
       if identificador == 2 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
        }
        if identificador == 3 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
            LDatos.backgroundColor = UIColor.blue
            Datos.backgroundColor = UIColor.blue
        }
        if identificador == 4 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
            LDatos.backgroundColor = UIColor.blue
            Datos.backgroundColor = UIColor.blue
            Lpersona.backgroundColor = UIColor.blue
            Persona.backgroundColor = UIColor.blue
        }
        if identificador == 5 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
            LDatos.backgroundColor = UIColor.blue
            Datos.backgroundColor = UIColor.blue
            Lpersona.backgroundColor = UIColor.blue
            Persona.backgroundColor = UIColor.blue
            Lreferencias.backgroundColor = UIColor.blue
            Referencias.backgroundColor = UIColor.blue
        }
        if identificador == 6 {
            LDom?.backgroundColor = UIColor.blue
            Domicilio?.backgroundColor = UIColor.blue
            LDatos.backgroundColor = UIColor.blue
            Datos.backgroundColor = UIColor.blue
            Lpersona.backgroundColor = UIColor.blue
            Persona.backgroundColor = UIColor.blue
            Lreferencias.backgroundColor = UIColor.blue
            Referencias.backgroundColor = UIColor.blue
            Ldocumentos.backgroundColor = UIColor.blue
            Documentos.backgroundColor = UIColor.blue
        }
        General.backgroundColor = UIColor.blue
        
    }
    
    @objc func fetchData () {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
            userArray = try context.fetch(USUARIO.fetchRequest())
        }catch {
            print(error)
        }
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
    @IBAction func Guardar(_ sender: UIBarButtonItem) {
        Buscarparamba()
        CamposVacios()
   }
   
    //Buscar buzon activo
    @objc func Buscarparamba(){
       
        var num = 0
        repeat{
            if paramArray[num].parametro == "BUZON_ACTIVO" {
                Buzon = paramArray[num].valor!
                print("Buzon activo es:", Buzon)
                break
            }else {
                num = num+1
            }
        }while num < paramArray.count
    }
    
   
    func CamposVacios(){
        var num = 0
        var mensaje = "\n\n Campos Faltantes: "
        //Generales
        if Grnombre == "" {
           Arraycamp.append("Nombre")
        }
        
        if Grapep == "" {
            Arraycamp.append("Apellido Paterno")
        }
        
        if Grtipo == "Tipo de identificacion *" {
            Arraycamp.append("Tipo de identificacion")
        }
        
        if Gridentificacion == "" {
            Arraycamp.append("numero de identificacion")
        }
        
        if Grnacionalidad == "Nacionalidad*" {
            Arraycamp.append("Nacionalidad")
        }
        
        if Grrfc == "" {
            Arraycamp.append("Rfc")
        }
        
        if Grfecha == "Fecha de nacimiento*" {
            Arraycamp.append("Fecha de nacimiento")
        }
        
        if Grestcivil == "Estado civil*" {
            Arraycamp.append("Estado civil")
        }
        
        if Grnumero == "" {
            Arraycamp.append("Numero de dependientes")
        }
        
        if sexo == "" {
            Arraycamp.append("Sexo ")
        }
        
        //Domicilio
        if Drcalle == "" {
            Arraycamp.append("Calle")
        }
        
        if Drnume == "" {
            Arraycamp.append("Num. Exterior")
        }
        
        if Drcp == "" {
            Arraycamp.append("Codigo Postal")
        }
        
        if Drestado == "Estado*" {
            Arraycamp.append("Estado")
        }
        
        if Drdel == "Delegación/Municipio*" {
            Arraycamp.append("Delegación/Municipio")
        }
        
        if Drcolonia == "Colonia" {
            Arraycamp.append("Colonia")
        }
        
        if Drtiempo == "" {
            Arraycamp.append("Tiempo de residencia")
        }
        
        if Drestatus == "" {
            Arraycamp.append("Estatus de residencia")
        }
        
        if Drmonto == "" {
            Arraycamp.append("Monto")
        }
        
        if Drcorreo == "" {
            Arraycamp.append("Correo")
        }
        
        if Drtelefono == "" {
            Arraycamp.append("Telefono de casa")
        }
        
        if Drmovil == "" {
            Arraycamp.append("Celular")
        }
        
        //Datos economicos
        if Drnombre == "" {
            Arraycamp.append("Nombre de la empresa")
        }
        
        if Drgiro == "" {
            Arraycamp.append("Giro")
        }
        
        if Drantiguedad == "" {
            Arraycamp.append("Antiguedad")
        }
        
        if Drpuesto == "" {
            Arraycamp.append("Puesto")
        }
        
      
        
        if Dringreso == "" {
            Arraycamp.append("Ingreso")
        }
        
        if Drcalle2 == "" {
            Arraycamp.append("Calle de la empresa")
        }
        
        if Drnume == "" {
            Arraycamp.append("Numero externo de la empresa")
        }
        
        if Drcp2 == "" {
            Arraycamp.append("Codigo postal de la empresa")
        }
        
        if Drestado2 == "Estado*" {
            Arraycamp.append("Estado de la empresa")
        }
        
        if Drdel2 == "Delegación/Municipio*" {
            Arraycamp.append("Delegacion o municipio de la empresa")
        }
        
        if Drcolonia2 == "" {
            Arraycamp.append("Colonia de la empresa")
        }
        
        if Drtelefono2 == "" {
            Arraycamp.append("Telefono de la empresa")
        }
        //Referencias
        if Rrnombre == "" {
            Arraycamp.append("Nombre de Referencia1")
        }
        
        if Rrapep == "" {
            Arraycamp.append("Apellido paterno de Referencia1")
        }
        
        if Rrnacionalidad == "Nacionalidad*" {
            Arraycamp.append("Nacionalidad de Referencia1")
        }
        
        if Rrtelefono == "" {
            Arraycamp.append("Telefono de Referencia1")
        }
        
        if R2rnombre == "" {
            Arraycamp.append("Nombre de Referencia2")
        }
        
        if R2rapep == "" {
            Arraycamp.append("Apellido paterno de Referencia2")
        }
        
        if Rr2nacionalidad == "Nacionalidad*" {
            Arraycamp.append("Nacionalidad de Referencia2")
        }
        
        if R2rtelefono == "" {
            Arraycamp.append("Telefono de Referencia2")
        }
        
        if Arraycamp.count != 0 {
            Estatus = 0
            print("Estatus",Estatus)
            repeat {
                
                mensaje = mensaje + Arraycamp[num] + ","
                num = num+1
            }while num < Arraycamp.count
            
            let alert = UIAlertController(title: "Deseas Guardar la solicitud Incompleta", message: mensaje , preferredStyle: UIAlertControllerStyle.alert)
            alert.view.addSubview(createSwitch())
            alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,  handler:{ (action: UIAlertAction!) in
                self.datos()
            }))
            self.present(alert, animated: true, completion: nil)
        }else {
            datos()
            print("Estatus",Estatus)
        }
       
    }
    //funcion Switch
    func createSwitch () -> UISwitch{
        let switchControl = UISwitch(frame:CGRect(x: 120, y: 65, width: 0, height: 10))
        switchControl.isOn = false
        //switchControl.setOn(false, animated: false)
        switchControl.addTarget(self, action: #selector(self.switchValueDidChange), for: .valueChanged)
        //switchControl.addTarget(self, action: "switchValueDidChange:", forSelector("switchValueDidChange:"),: .valueChanged)
        return switchControl
    }
    
    @objc func switchValueDidChange(sender:UISwitch!){
        print("Switch Value",sender.isOn)
        if sender.isOn == true {
            print("Guardar Registro")
            validador = 1
            
        }else {
            validador = 0
            print("No agas nada")
            
        }
    }
    @objc func ToastExample(message:String){
        let toastLabel =
            UILabel(frame:
                CGRect(x: self.view.frame.size.width/2 - 150,
                       y: self.view.frame.size.height-100,
                       width: 300,
                       height: 35))
        toastLabel.backgroundColor = UIColor.darkGray
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(toastLabel)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        UIView.animate(withDuration: 3.0, animations: {
            toastLabel.alpha = 0.0
        })
    }
    func datos() {
        /*
         //validacion de monto de vivienda hasta 100,000,000
        if Drmonto != "" {
            let monto = Int(Drmonto)
            if monto! > 100000000 {
                print("monto no valido")
            }else {
                print("Monto valido")
            }
        }
        
        //validacion de Correo electronico
        if Drcorreo != "" {
            let bandera:Bool = validateEmail(enteredEmail: Drcorreo)
            if  bandera == true {
                print("es un Correo ")
            }else{
                print("No es un correo")
            }
        }
        
        //Obtencion de dias y fecha y año de nacimiento
        var num = 0
        var cont = 0
        var dia = ""
        var mes = ""
        var anio = ""
        
        if Grfecha != "" {
            let longitud = Grfecha.characters.count
            var letters = Grfecha.characters.map { String($0) }
            
            repeat{
                if letters[num] == "/" {
                    num = num+1
                    cont = cont+1
                }else {
                    if cont == 0 {
                        dia = dia+letters[num]
                        num = num+1
                    }else {
                        if cont == 1 {
                            mes = mes+letters[num]
                            num = num+1
                        }else {
                            if cont == 2 {
                                anio = anio+letters[num]
                                num = num+1
                            }
                        }
                    }
                }
            }while num < longitud
            
            print("Valor de dia:",dia)
            print("valor de mes:",mes)
            print("valor de anio:",anio)
        }
        
         let fecha = Date()
         let dateformate = DateFormatter()
         dateformate.dateStyle = .short
         let fechaa = dateformate.string(from: fecha)
         
         let longitud2 = fechaa.characters.count
         var letters2 = fechaa.characters.map { String($0) }
         num = 0
         cont = 0
         var dia2 = ""
         var mes2 = ""
         var anio2 = ""
         repeat{
         if letters2[num] == "/" {
         num = num+1
         cont = cont+1
         }else {
         if cont == 0 {
         dia2 = dia2+letters2[num]
         num = num+1
         }else {
         if cont == 1 {
         mes2 = mes2+letters2[num]
         num = num+1
         }else {
         if cont == 2 {
         anio2 = anio2+letters2[num]
         num = num+1
         }
         }
         }
         }
         }while num < longitud2
         
         print("Valor de dia:",dia2)
         print("valor de mes:",mes2)
         print("valor de anio:",anio2)
        
         Usuario()
        
         let c = Character(UnicodeScalar(34))
         let Comd = String(c)
        
         let Xml = "<?xml version="+Comd+"1.0"+Comd+" encoding="+Comd+"UTF-8"+Comd+"?> <SolicitudType xmlns:xsi="+Comd+"http://www.w3.org/2001/XMLSchema-instance"+Comd+" xmlns:xsd="+Comd+"http://www.w3.org/2001/XMLSchema"+Comd+"> <generales> <Tpoidentif>"+Gridtipo+"</Tpoidentif> <Noidenficacion>"+Gridentificacion+"</Noidenficacion> <Pmrnombre>"+Grnombre+"</Pmrnombre> <Sdonombre>"+Grsnombre+"</Sdonombre> <Apaterno>"+Grapep+"</Apaterno> <Amaterno>"+Grapem+"</Amaterno> <Sexo>"+sexo+"</Sexo> <Nacionalidad>"+Gridnacionalidad+"</Nacionalidad> <Fechanacdia>"+dia+"</Fechanacdia> <Rfc>"+Grrfc+"</Rfc> <Edocivil>"+Gridestcivil+"</Edocivil> <Nodependiente>"+Grnumero+"</Nodependiente> <Cveperspol>2</Cveperspol> <FechasnacMes>"+mes+"</FechasnacMes> <FechanacAnio>"+anio+"</FechanacAnio> </generales> <doc> <IdentificacionFrentePath>TEC_636395911640643196.jpg</IdentificacionFrentePath>  <IdentificacionAtrasPath>TEC_636395912088133899.jpg</IdentificacionAtrasPath> <Contrato1Path>TEC_636395912441057948.jpg</Contrato1Path> <Contrato2Path>TEC_636395912942097782.jpg</Contrato2Path> <FirmaPath>"+tfirma+"</FirmaPath> <Extra1>.....</Extra1> <Extra2>..</Extra2> <Extra3>..</Extra3> <Extra4>..</Extra4> <Extra5>..</Extra5> </doc> <domicilio> <Calle>"+Drcalle+"</Calle> <NoInt>"+Drnumi+"</NoInt> <NoExt>"+Drnume+"</NoExt> <Cpdom>"+Drcp+"</Cpdom> <Estado>"+Dridestado+"</Estado> <Delegacion>"+Driddel+"</Delegacion> <Colonia>"+Drcolonia+"</Colonia> <TiempoResidencia>"+Drtiempo+"</TiempoResidencia> <EstatusResidencia>"+Dridestatus+"</EstatusResidencia> <MontoVivienda>"+Drmonto+"</MontoVivienda> <Email>"+Drcorreo+"</Email> <Telcasa>"+Drtelefono+"</Telcasa> <Telmovil>"+Drmovil+"</Telmovil> <CompaniaMovil>"+Dridcompania+"</CompaniaMovil> </domicilio> <Personapolitica> <TipoParentesco>"+Prparentesco+"</TipoParentesco> <Descfuncion>"+Prfuncion+"</Descfuncion> <Descparentesco>"+Prfuncion2+"</Descparentesco> <TieneParentesco>"+parentesco+"</TieneParentesco> <EsPersonaPolitica>"+person+"</EsPersonaPolitica> </Personapolitica> <Refer> <Pmrnombre>"+Rrnombre+"</Pmrnombre> <Sdonombre/> <Apaterno>"+Rrapep+"</Apaterno> <Amaterno>"+Rrapem+"</Amaterno> <Nacionalidad>"+Rridnacionalidad+"</Nacionalidad> <TelefonoCasa>"+Rrtelefono+"</TelefonoCasa> </Refer> <Refer2> <Pmrnombre>"+R2rnombre+"</Pmrnombre> <Sdonombre/> <Apaterno>"+R2rapep+"</Apaterno> <Amaterno>"+R2rapem+"</Amaterno> <Nacionalidad>"+Rridnacionalidad2+"</Nacionalidad> <TelefonoCasa>"+R2rtelefono+"</TelefonoCasa> </Refer2> <Refer3> <Pmrnombre>"+R3rnombre+"</Pmrnombre> <Sdonombre/> <Apaterno>"+R3rapep+"</Apaterno> <Amaterno>"+R3rapem+"</Amaterno> <Nacionalidad>"+Rridnacionalidad3+"</Nacionalidad> <TelefonoCasa>"+R3rtelefono+"</TelefonoCasa> </Refer3> <Promotor> <Compania>"+comp+"</Compania> <Usuario>"+usuario+"</Usuario> <Contrasenia>"+pass+"</Contrasenia> </Promotor> <FolioLocal>0</FolioLocal> <DiaCreacion>"+dia2+"</DiaCreacion> <MesCreacion>"+mes2+"</MesCreacion> <AnioCreacion>20"+anio2+"</AnioCreacion> <Deconominos> <TipoContrato>"+Dridtipo+"</TipoContrato> <AntiguedadEmpleo>"+Drantiguedad+"</AntiguedadEmpleo> <AniosCasada>"+Drcasado+"</AniosCasada> <Ingresos>"+Dringreso+"</Ingresos> <NombreEmpresa>"+Drnombre+"</NombreEmpresa> <GiroEmpresa>"+Drgiro+"</GiroEmpresa> <Puesto>"+Drpuesto+"</Puesto> <Domicilio> <Calle>"+Drcalle2+"</Calle> <NoInt>"+Drnumi2+"</NoInt>  <NoExt>"+Drnume2+"</NoExt> <Cpdom>"+Drcp2+"</Cpdom> <Estado>"+Dridestado2+"</Estado> <Delegacion>"+Driddel2+"</Delegacion> <Colonia>"+Drcolonia2+"</Colonia> <TiempoResidencia>0</TiempoResidencia> <EstatusResidencia>0</EstatusResidencia> <MontoVivienda>0</MontoVivienda> <Telcasa>"+Drtelefono2+"</Telcasa> <Telmovil/> </Domicilio> <OtrosIngresos>"+Drotros+"</OtrosIngresos> <FuenteOtrosIngresos>"+Drfuente+"</FuenteOtrosIngresos> </Deconominos> <Lattitude>19.41409467264</Lattitude> <Longuitud>-99.0129458034061</Longuitud> </SolicitudType>"
         print("valor de XML: ",Xml)*/
        //Si realiza una accion
        print("Valor de Guardar:",guardar)
        if validador == 1 && guardar == 0 {
             //Insertarbuzon(fechaa: fechaa, sol: Xml, ext1: bfirma, ext2: bfirma, ext3: bfirma, ext4: bfirma, ext5: bfirma, docc1: bfirma, docc2: bfirma, docia: bfirma, docif: bfirma, fi: bfirma)
            print("Insertar")
            BuscarIdSolicitud()
            
            let Ngen = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Newgen") as! Nuevogeneral
            //General
            Ngen.Grnombre = Grnombre
            Ngen.Grsnombre = Grsnombre
            Ngen.Grapep = Grapep
            Ngen.Grapem = Grapem
            Ngen.Grtipo = Grtipo
            Ngen.Gridtipo = Gridtipo
            Ngen.Gridentificacion = Gridentificacion
            Ngen.sexo = sexo
            Ngen.Grnacionalidad = Grnacionalidad
            Ngen.Gridnacionalidad = Gridnacionalidad
            Ngen.Grfecha = Grfecha
            
            Ngen.Grestcivil = Grestcivil
            Ngen.Gridestcivil = Gridestcivil
            Ngen.Grnumero = Grnumero
            
            
            //Domicilio
            Ngen.Drcalle = Drcalle
            Ngen.Drnume = Drnume
            Ngen.Drnumi = Drnumi
            Ngen.Drcolonia = Drcolonia
            Ngen.Drestado = Drestado
            Ngen.Dridestado = Dridestado
            Ngen.Drdel = Drdel
            Ngen.Driddel = Driddel
            Ngen.Drcp = Drcp
            Ngen.Drtiempo = Drtiempo
            Ngen.Drestatus = Drestatus
            Ngen.Dridestatus = Dridestatus
            Ngen.Drmonto = Drmonto
            Ngen.Drcorreo = Drcorreo
            Ngen.Drtelefono = Drtelefono
            Ngen.Drmovil = Drmovil
            Ngen.Drcompania = Drcompania
            Ngen.Dridcompania = Dridcompania
            
            //Datos economicos
            Ngen.Drnombre = Drnombre
            Ngen.Drgiro = Drgiro
            Ngen.Drantiguedad = Drantiguedad
            Ngen.Drtipo = Drtipo
            Ngen.Dridtipo = Dridtipo
            Ngen.Drpuesto = Drpuesto
            Ngen.Dringreso = Dringreso
            Ngen.Drcasado = Drcasado
            Ngen.Drfuente = Drfuente
            Ngen.Drotros = Drotros
            Ngen.Drcalle2 = Drcalle2
            Ngen.Drnume2 = Drnume2
            Ngen.Drnumi2 = Drnumi2
            Ngen.Drcolonia2 = Drcolonia2
            Ngen.Drestado2 = Drestado2
            Ngen.Dridestado2 = Dridestado2
            Ngen.Drdel2 = Drdel2
            Ngen.Driddel2 = Driddel2
            Ngen.Drcp2 = Drcp2
            Ngen.Drtelefono2 = Drtelefono2
            Ngen.Drextencion = Drextencion
            
            
            //Persona politica
            Ngen.persona = person
            Ngen.Prfuncion = Prfuncion
            Ngen.parentesco = parentesco
            Ngen.Prfuncion2 = Prfuncion2
            Ngen.Prparentesco = Prparentesco
            
            //Referencias familiares
            Ngen.Rrnombre = Rrnombre
            Ngen.Rrapep = Rrapep
            Ngen.Rrapem = Rrapem
            Ngen.Rrnacionalidad = Rrnacionalidad
            Ngen.Rridnacionalidad = Rridnacionalidad
            Ngen.Rrtelefono = Rrtelefono
            
            Ngen.R2rnombre = R2rnombre
            Ngen.R2rapep = R2rapep
            Ngen.R2rapem = R2rapem
            Ngen.R2rnacionalidad = Rr2nacionalidad
            Ngen.Rridnacionalidad2 = Rridnacionalidad2
            Ngen.R2rtelefono = R2rtelefono
            
            Ngen.R3rnombre = R3rnombre
            Ngen.R3rapep = R3rapep
            Ngen.R3rapem = R3rapem
            Ngen.Rr3nacionalidad = Rr3nacionalidad
            Ngen.Rridnacionalidad3 = Rridnacionalidad3
            Ngen.R3rtelefono = R3rtelefono
            //Documentos
            Ngen.bidentificacionf = bidentificacionf
            Ngen.tidentificacionf = tidentificacionf
            Ngen.bidentificaciont = bidentificaciont
            Ngen.tidentificaciont = tidentificaciont
            Ngen.bfirma = bfirma
            Ngen.tfirma = tfirma
            
            Ngen.deslizar = deslizar
            Ngen.margeny = margen
            Ngen.Imagen = marco
            Ngen.guardar = IdSolicitud
            self.navigationController?.pushViewController(Ngen, animated: false)
            
        } else{
            if validador == 1 && guardar != 0 {
               //guardar
               print("ID al buscar:",IdSolicitud)
               print("Modificar")
            }else {
                if validador == 0 && guardar == 0 {
                    //Insertarbuzon(fechaa: fechaa, sol: Xml, ext1: bfirma, ext2: bfirma, ext3: bfirma, ext4: bfirma, ext5: bfirma, docc1: bfirma, docc2: bfirma, docia: bfirma, docif: bfirma, fi: bfirma)
                    let destViewController : UIViewController = self.storyboard!.instantiateViewController(withIdentifier: "Home")
                    
                    let topViewController : UIViewController = self.navigationController!.topViewController!
                    
                    if (topViewController.restorationIdentifier! == destViewController.restorationIdentifier!){
                        print("Same VC")
                    } else {
                        self.navigationController!.pushViewController(destViewController, animated: true)
                    }
                }
            }
        }
        //No realiza ninguna Accion
        if validador == 0 {
            ToastExample(message: "Solicitud No guardada")
        }
        
        
    }
    //Buscar IdSolicitud
    func BuscarIdSolicitud(){
        var num = 0
        if Buzon == "A" {
            repeat {
                if buzonA[num].estatus == 6 || buzonA[num].estatus == 0 {
                    //print("IdSolicitud",buzonA[num].id_solicitud)
                    if IdSolicitud <= buzonA[num].id_solicitud {
                        IdSolicitud = Int(buzonA[num].id_solicitud)+1
                    }
                    num = num+1
                } else {
                    num = num+1
                }
            }while num < buzonA.count
            print("Id Solicitud",IdSolicitud)
        }else { //Buzonb
            repeat {
                if buzonB[num].estatus_b == 6 || buzonB[num].estatus_b == 0 {
                    print("IdSolicitud",buzonB[num].id_solicitud_b)
                    if IdSolicitud <= buzonB[num].id_solicitud_b {
                        IdSolicitud = Int(buzonB[num].id_solicitud_b)+1
                    }
                    num = num+1
                }else {
                    num = num+1
                }
            }while num < buzonB.count
             print("Id Solicitud",IdSolicitud)
        }
    }
    
    @objc func Insertarbuzon(fechaa:String,sol:String,ext1:String,ext2:String,ext3:String,ext4:String,ext5:String,docc1:String,docc2:String,docia:String,docif:String,fi:String){
        
        if Buzon == "A" {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat =  "dd/MM/yyyy"
            let date = dateFormatter.date(from: fechaa)
            
            let newBuz = NSEntityDescription.insertNewObject(forEntityName: "Rbuzon", into: context)
            newBuz.setValue("", forKey: "comentario")
            newBuz.setValue(Estatus, forKey: "estatus")
            newBuz.setValue(date, forKey: "fecha_alta")
            newBuz.setValue(date, forKey: "fecha_modificacion")
            newBuz.setValue(IdSolicitud, forKey: "id_solicitud")//esta debe de ser calculable
            newBuz.setValue(Idusuario, forKey: "id_usuario")
            newBuz.setValue(0, forKey: "motivo")
            newBuz.setValue("", forKey: "producto")
            newBuz.setValue("", forKey: "promedio_scoring")
            newBuz.setValue(sol, forKey: "solicitud_xml")
            newBuz.setValue(ext1, forKey: "ext_c1")
            newBuz.setValue(ext2, forKey: "ext_c2")
            newBuz.setValue(ext3, forKey: "ext_c3")
            newBuz.setValue(ext4, forKey: "ext_c4")
            newBuz.setValue(ext5, forKey: "ext_c5")
            newBuz.setValue(docc1, forKey: "doc_c1")
            newBuz.setValue(docc2, forKey: "doc_c2")
            newBuz.setValue(docia, forKey: "doc_ia")
            newBuz.setValue(docif, forKey: "doc_if")
            newBuz.setValue(fi, forKey: "fi")
            
            do {
                try context.save()
                print("Solicitud insertada A!!!!!!")
                let destViewController : UIViewController = self.storyboard!.instantiateViewController(withIdentifier: "Home")
                
                let topViewController : UIViewController = self.navigationController!.topViewController!
                
                if (topViewController.restorationIdentifier! == destViewController.restorationIdentifier!){
                    print("Same VC")
                } else {
                    self.navigationController!.pushViewController(destViewController, animated: true)
                }
                
            }catch {
                print(error)
            }
            
        }else {
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat =  "dd/MM/yyyy"
            let date = dateFormatter.date(from: fechaa)
        
            let newBuz = NSEntityDescription.insertNewObject(forEntityName: "BUZON_A", into: context)
            
            newBuz.setValue("", forKey: "comentario_b")
            newBuz.setValue(6, forKey: "estatus_b")
            newBuz.setValue(date, forKey: "fecha_alta_b")
            newBuz.setValue(date, forKey: "fecha_modificacion_b")
            newBuz.setValue(IdSolicitud, forKey: "id_solicitud_b")//esta debe de ser calculable
            newBuz.setValue(Idusuario, forKey: "id_usuario_b")
            newBuz.setValue(0, forKey: "motivo_b")
            newBuz.setValue("", forKey: "producto_b")
            newBuz.setValue("", forKey: "promedio_scoring_b")
            newBuz.setValue(sol, forKey: "solicitud_xml_b")
            newBuz.setValue(ext1, forKey: "ext_c1")
            newBuz.setValue(ext2, forKey: "ext_c2")
            newBuz.setValue(ext3, forKey: "ext_c3")
            newBuz.setValue(ext4, forKey: "ext_c4")
            newBuz.setValue(ext5, forKey: "ext_c5")
            newBuz.setValue(docc1, forKey: "doc_c1")
            newBuz.setValue(docc2, forKey: "doc_c2")
            newBuz.setValue(docia, forKey: "doc_ia")
            newBuz.setValue(docif, forKey: "doc_if")
            newBuz.setValue(fi, forKey: "fi")
            
            do {
                try context.save()
                print("Solicitud insertada B!!!!")
                
                
            }catch {
                print(error)
            }
        }
    }
    
    @objc func Usuario() {
        var num = 0
        repeat {
            Idusuario = Int(userArray[num].id_usuario)
            usuario = userArray[num].user!
            comp = userArray[num].compania!
            pass = userArray[num].contrasena!
            num = num+1
        }while num < userArray.count
    }
    
    //Funcion para validar correo electronico
    @objc func validateEmail(enteredEmail:String) -> Bool {
        
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        
        return emailPredicate.evaluate(with: enteredEmail)
   }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "NuevoGeneral"{
            let Ngen = segue.destination as! Nuevogeneral
            print("VALOR QUE MANDA AL GUARDAR",guardar)
            
                //General
                Ngen.Grnombre = Grnombre
                Ngen.Grsnombre = Grsnombre
                Ngen.Grapep = Grapep
                Ngen.Grapem = Grapem
                Ngen.Grtipo = Grtipo
                Ngen.Gridtipo = Gridtipo
                Ngen.Gridentificacion = Gridentificacion
                Ngen.sexo = sexo
                Ngen.Grnacionalidad = Grnacionalidad
                Ngen.Gridnacionalidad = Gridnacionalidad
                Ngen.Grfecha = Grfecha
                
                Ngen.Grestcivil = Grestcivil
                Ngen.Gridestcivil = Gridestcivil
                Ngen.Grnumero = Grnumero
                
                
                //Domicilio
                Ngen.Drcalle = Drcalle
                Ngen.Drnume = Drnume
                Ngen.Drnumi = Drnumi
                Ngen.Drcolonia = Drcolonia
                Ngen.Drestado = Drestado
                Ngen.Dridestado = Dridestado
                Ngen.Drdel = Drdel
                Ngen.Driddel = Driddel
                Ngen.Drcp = Drcp
                Ngen.Drtiempo = Drtiempo
                Ngen.Drestatus = Drestatus
                Ngen.Dridestatus = Dridestatus
                Ngen.Drmonto = Drmonto
                Ngen.Drcorreo = Drcorreo
                Ngen.Drtelefono = Drtelefono
                Ngen.Drmovil = Drmovil
                Ngen.Drcompania = Drcompania
                Ngen.Dridcompania = Dridcompania
                
                //Datos economicos
                Ngen.Drnombre = Drnombre
                Ngen.Drgiro = Drgiro
                Ngen.Drantiguedad = Drantiguedad
                Ngen.Drtipo = Drtipo
                Ngen.Dridtipo = Dridtipo
                Ngen.Drpuesto = Drpuesto
                Ngen.Dringreso = Dringreso
                Ngen.Drcasado = Drcasado
                Ngen.Drfuente = Drfuente
                Ngen.Drotros = Drotros
                Ngen.Drcalle2 = Drcalle2
                Ngen.Drnume2 = Drnume2
                Ngen.Drnumi2 = Drnumi2
                Ngen.Drcolonia2 = Drcolonia2
                Ngen.Drestado2 = Drestado2
                Ngen.Dridestado2 = Dridestado2
                Ngen.Drdel2 = Drdel2
                Ngen.Driddel2 = Driddel2
                Ngen.Drcp2 = Drcp2
                Ngen.Drtelefono2 = Drtelefono2
                Ngen.Drextencion = Drextencion
                
                
                //Persona politica
                Ngen.persona = person
                Ngen.Prfuncion = Prfuncion
                Ngen.parentesco = parentesco
                Ngen.Prfuncion2 = Prfuncion2
                Ngen.Prparentesco = Prparentesco
                
                //Referencias familiares
                Ngen.Rrnombre = Rrnombre
                Ngen.Rrapep = Rrapep
                Ngen.Rrapem = Rrapem
                Ngen.Rrnacionalidad = Rrnacionalidad
                Ngen.Rridnacionalidad = Rridnacionalidad
                Ngen.Rrtelefono = Rrtelefono
                
                Ngen.R2rnombre = R2rnombre
                Ngen.R2rapep = R2rapep
                Ngen.R2rapem = R2rapem
                Ngen.R2rnacionalidad = Rr2nacionalidad
                Ngen.Rridnacionalidad2 = Rridnacionalidad2
                Ngen.R2rtelefono = R2rtelefono
                
                Ngen.R3rnombre = R3rnombre
                Ngen.R3rapep = R3rapep
                Ngen.R3rapem = R3rapem
                Ngen.Rr3nacionalidad = Rr3nacionalidad
                Ngen.Rridnacionalidad3 = Rridnacionalidad3
                Ngen.R3rtelefono = R3rtelefono
                //Documentos
                Ngen.bidentificacionf = bidentificacionf
                Ngen.tidentificacionf = tidentificacionf
                Ngen.bidentificaciont = bidentificaciont
                Ngen.tidentificaciont = tidentificaciont
                Ngen.bfirma = bfirma
                Ngen.tfirma = tfirma
                
                Ngen.deslizar = deslizar
                Ngen.margeny = margen
                Ngen.Imagen = marco
                Ngen.guardar = guardar
            }
    }
    
}
extension Nuevogeneral {
    func Cambio() {
       guardar = 1
    }
}
