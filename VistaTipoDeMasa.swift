//
//  VistaTipoDeMasa.swift
//  Tarea_Pizza
//
//  Created by Mauro Alberto Flores Almonte on 24/07/16.
//  Copyright © 2016 Mauro Alberto Flores Almonte. All rights reserved.
//

import UIKit

class VistaTipoDeMasa: UIViewController {
    
    var tamañoDeLaPizza:String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Masa"
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let boton = sender as! UIButton
        let seleccion:String = (boton.titleLabel?.text)!
        let sigVista = segue.destinationViewController as! VistaTipoDeQueso
        sigVista.tamañoDeLaPizza = self.tamañoDeLaPizza
        sigVista.tipoDeMasa = seleccion
        print(seleccion)
    }


    
}
