//
//  VistaIngredientes.swift
//  Tarea_Pizza
//
//  Created by Mauro Alberto Flores Almonte on 24/07/16.
//  Copyright © 2016 Mauro Alberto Flores Almonte. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {

    
    @IBOutlet weak var jamon: UIButton!
    @IBOutlet weak var cebolla: UIButton!
    @IBOutlet weak var pepperoni: UIButton!
    @IBOutlet weak var pimiento: UIButton!
    @IBOutlet weak var pavo: UIButton!
    @IBOutlet weak var pina: UIButton!
    @IBOutlet weak var salchicha: UIButton!
    @IBOutlet weak var anchoa: UIButton!
    @IBOutlet weak var aceituna: UIButton!
    @IBOutlet weak var champinon: UIButton!
    @IBOutlet weak var atun: UIButton!
    @IBOutlet weak var carnes: UIButton!
    
        
    @IBOutlet weak var selectEtiqueta: UILabel!
    
    var tamañoDeLaPizza:String?
    var tipoDeMasa:String?
    var tipoDeQueso:String?
    var selectIngred:[String] = []
    let textoEtiqueta:String = "Aun no selecionas los ingredientes"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Ingredientes"
        
        jamon.addTarget(self, action: #selector(VistaIngredientes.botonPres(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        cebolla.addTarget(self, action: #selector(VistaIngredientes.botonPres(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        pepperoni.addTarget(self, action: #selector(VistaIngredientes.botonPres(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        pimiento.addTarget(self, action: #selector(VistaIngredientes.botonPres(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        pavo.addTarget(self, action: #selector(VistaIngredientes.botonPres(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        pina.addTarget(self, action: #selector(VistaIngredientes.botonPres(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        salchicha.addTarget(self, action: #selector(VistaIngredientes.botonPres(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        anchoa.addTarget(self, action: #selector(VistaIngredientes.botonPres(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        aceituna.addTarget(self, action: #selector(VistaIngredientes.botonPres(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        champinon.addTarget(self, action: #selector(VistaIngredientes.botonPres(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        atun.addTarget(self, action: #selector(VistaIngredientes.botonPres(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        carnes.addTarget(self, action: #selector(VistaIngredientes.botonPres(_:)), forControlEvents: UIControlEvents.TouchUpInside)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        selectIngred.removeAll()
        
        if jamon.selected {
            selectIngred.append((jamon.titleLabel?.text)!)
        }
        if cebolla.selected {
            selectIngred.append((cebolla.titleLabel?.text)!)
        }
        if pepperoni.selected{
            selectIngred.append((pepperoni.titleLabel?.text)!)
        }
        if pimiento.selected{
            selectIngred.append((pimiento.titleLabel?.text)!)
        }
        if pavo.selected {
            selectIngred.append((pavo.titleLabel?.text)!)
        }
        if pina.selected {
            selectIngred.append((pina.titleLabel?.text)!)
        }
        if salchicha.selected {
            selectIngred.append((salchicha.titleLabel?.text)!)
        }
        if anchoa.selected {
            selectIngred.append((anchoa.titleLabel?.text)!)
        }
        if aceituna.selected {
            selectIngred.append((aceituna.titleLabel?.text)!)
        }
        if champinon.selected {
            selectIngred.append((champinon.titleLabel?.text)!)
        }
        if atun.selected {
            selectIngred.append((atun.titleLabel?.text)!)
        }
        if carnes.selected {
            selectIngred.append((carnes.titleLabel?.text)!)
        }
        
        print(selectIngred)
        if selectIngred.count >= 1 && selectIngred.count <= selectIngred.count {
            return true
        }
        else {
            print("Aun no seleccionas tus ingredientes")
            
            selectEtiqueta.text = textoEtiqueta
            return false
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! VistaOrden
        sigVista.ingredientes = selectIngred
        sigVista.tamañoDeLaPizza = self.tamañoDeLaPizza
        sigVista.tipoDeMasa = self.tipoDeMasa
        sigVista.tipoDeQueso = self.tipoDeQueso
        
    }
    
    func botonPres(sender:UIButton) {
        sender.selected = !sender.selected
    }
    

    
    
}
