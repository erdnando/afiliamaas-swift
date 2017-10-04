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
    @objc var usuario = ""
    @objc var pass = ""
    @objc var comp = ""
    @objc var userArray:[USUARIO] = []
    
    @objc var identificador = 0
    @objc var margen = 0
    @objc var deslizar = 0
    var marco = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        fetchData()
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "NuevoGeneral"{
            let Ngen = segue.destination as! Nuevogeneral
            
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
           
        }
    }
    
    @IBAction func Guardar(_ sender: UIBarButtonItem) {
        //validacion de monto de vivienda hasta 100,000,000
        let monto = Int(Drmonto)
        if monto! < 100000001 {
            print("monto valido")
        }else {
            print("Monto no valido")
        }
        
        //validacion de Correo electronico
        let bandera:Bool = validateEmail(enteredEmail: Drcorreo)
        if  bandera == true {
            print("es un Correo ")
        }else{
            print("No es un correo")
        }
        
        //Obtencion de dias y fecha y año de nacimiento
        let longitud = Grfecha.characters.count
        var letters = Grfecha.characters.map { String($0) }
        var num = 0
        var cont = 0
        var dia = ""
        var mes = ""
        var anio = ""
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
        let Xml = "<?xml version="+Comd+"1.0"+Comd+" encoding="+Comd+"UTF-8"+Comd+"?> <SolicitudType xmlns:xsi="+Comd+"http://www.w3.org/2001/XMLSchema-instance"+Comd+" xmlns:xsd="+Comd+"http://www.w3.org/2001/XMLSchema"+Comd+"><Lattitude>19.4140762787095</Lattitude><Longuitud>-99.0129281651914</Longuitud><generales><Tpoidentif>"+Gridtipo+"</Tpoidentif> <Noidenficacion>"+Gridentificacion+"</Noidenficacion><Pmrnombre>"+Grnombre+"</Pmrnombre><Sdonombre>"+Grsnombre+"</Sdonombre><Apaterno>"+Grapep+"</Apaterno><Amaterno>"+Grapem+"</Amaterno><Sexo>"+sexo+"</Sexo><Nacionalidad>"+Gridnacionalidad+"</Nacionalidad><Fechanacdia>"+dia+"</Fechanacdia><Rfc>"+Grrfc+"</Rfc><Edocivil>"+Gridestcivil+"</Edocivil><Nodependiente>"+Grnumero+"</Nodependiente><Cveperspol>2</Cveperspol> <FechasnacMes>"+mes+"</FechasnacMes><FechanacAnio>"+anio+"</FechanacAnio></generales><doc><IdentificacionFrentePath>TEC_636395911640643196.jpg</IdentificacionFrentePath> <IdentificacionAtrasPath>TEC_636395912088133899.jpg</IdentificacionAtrasPath><Contrato1Path>TEC_636395912441057948.jpg</Contrato1Path><Contrato2Path>TEC_636395912942097782.jpg</Contrato2Path><Extra1>TEC_636395913267419058.jpg</Extra1><Extra2>..</Extra2><Extra3>..</Extra3><Extra4>..</Extra4><Extra5>..</Extra5><FirmaPath>TEC_636395912150998843.jpg</FirmaPath></doc><domicilio><Calle>"+Drcalle+"</Calle><NoInt>"+Drnumi+"</NoInt><NoExt>"+Drnume+"</NoExt><Cpdom>"+Drcp+"</Cpdom><Estado>"+Dridestado+"</Estado><Delegacion>"+Driddel+"</Delegacion><Colonia>"+Drcolonia+"</Colonia> <TiempoResidencia>"+Drtiempo+"</TiempoResidencia><EstatusResidencia>"+Dridestatus+"</EstatusResidencia><MontoVivienda>"+Drmonto+"</MontoVivienda><Email>"+Drcorreo+"</Email><Telcasa>"+Drtelefono+"</Telcasa><Telmovil>"+Drmovil+"</Telmovil><CompaniaMovil>"+Dridcompania+"</CompaniaMovil></domicilio><Personapolitica><EsPersonaPolitica>"+person+"</EsPersonaPolitica><TipoParentesco>"+Prparentesco+"</TipoParentesco> <Descfuncion>"+Prfuncion+"</Descfuncion><Descparentesco>"+Prfuncion2+"</Descparentesco><TieneParentesco>"+parentesco+"</TieneParentesco></Personapolitica><Refer><Pmrnombre>"+Rrnombre+"</Pmrnombre> <Sdonombre/><Apaterno>"+Rrapep+"</Apaterno><Amaterno>"+Rrapem+"</Amaterno><Nacionalidad>"+Rridnacionalidad+"</Nacionalidad><TelefonoCasa>"+Rrtelefono+"</TelefonoCasa></Refer><Refer2> <Pmrnombre>"+R2rnombre+"</Pmrnombre><Sdonombre/><Apaterno>"+R2rapep+"</Apaterno><Amaterno>"+R2rapem+"</Amaterno><Nacionalidad>"+Rridnacionalidad2+"</Nacionalidad><TelefonoCasa>"+R2rtelefono+"</TelefonoCasa></Refer2><Refer3> <Pmrnombre>"+R3rnombre+"</Pmrnombre><Sdonombre/><Apaterno>"+R3rapep+"</Apaterno><Amaterno>"+R3rapem+"</Amaterno><Nacionalidad>"+Rridnacionalidad3+"</Nacionalidad><TelefonoCasa>"+R3rtelefono+"</TelefonoCasa></Refer3><Promotor><Compania>"+comp+"</Compania><Usuario>"+usuario+"</Usuario><Contrasenia>"+pass+"</Contrasenia></Promotor><FolioLocal>0</FolioLocal><DiaCreacion>"+dia2+"</DiaCreacion><MesCreacion>"+mes2+"</MesCreacion><AnioCreacion>"+anio2+"</AnioCreacion><Deconominos><TipoContrato>"+Dridtipo+"</TipoContrato><AntiguedadEmpleo>"+Drantiguedad+"</AntiguedadEmpleo><AniosCasada>"+Drcasado+"</AniosCasada><Ingresos>"+Dringreso+"</Ingresos><NombreEmpresa>"+Drnombre+"</NombreEmpresa><GiroEmpresa>"+Drgiro+"</GiroEmpresa><Puesto>"+Drpuesto+"</Puesto><Domicilio><Calle>"+Drcalle2+"</Calle><NoInt>"+Drnumi2+"</NoInt> <NoExt>"+Drnume2+"</NoExt><Cpdom>"+Drcp2+"</Cpdom><Estado>"+Dridestado2+"</Estado><Delegacion>"+Driddel2+"</Delegacion><Colonia>"+Drcolonia2+"</Colonia><TiempoResidencia>0</TiempoResidencia><EstatusResidencia>0</EstatusResidencia><MontoVivienda>0</MontoVivienda><Telcasa>"+Drtelefono2+"</Telcasa><Telmovil/></Domicilio><OtrosIngresos>"+Drotros+"</OtrosIngresos><FuenteOtrosIngresos>"+Drfuente+"</FuenteOtrosIngresos></Deconominos></SolicitudType>"
        print("valor de XML: ",Xml)
       
    }
    
    @objc func Usuario() {
        var num = 0
        repeat {
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
}
