//
//  VistaOrden.swift
//  Tarea_Pizza
//
//  Created by Mauro Alberto Flores Almonte on 24/07/16.
//  Copyright © 2016 Mauro Alberto Flores Almonte. All rights reserved.
//

import UIKit

class VistaOrden: UIViewController {

    
    @IBOutlet weak var tamañoEtiqueta: UILabel!
    @IBOutlet weak var masaEtiqueta: UILabel!
    @IBOutlet weak var quesoEtiqueta: UILabel!
    @IBOutlet weak var ingredientesEtiqueta: UILabel!
    @IBOutlet weak var confirmarOrdenBoton: UIButton!
    @IBOutlet weak var cocinarEnvioEtiqueta: UILabel!
    
    @IBAction func confirmarOrdenBoton(sender: AnyObject) {
        confirmarOrdenBoton.hidden = true
        cocinarEnvioEtiqueta.hidden = false
        
    }
    
    var tamañoDeLaPizza:String?
    var tipoDeMasa:String?
    var tipoDeQueso:String?
    var ingredientes:[String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        cocinarEnvioEtiqueta.hidden = true
        self.title = "Confirmación de Orden"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        tamañoEtiqueta.text = String(tamañoDeLaPizza!)
        masaEtiqueta.text = String(tipoDeMasa!)
        quesoEtiqueta.text = String(tipoDeQueso!)
        ingredientesEtiqueta.text = String(ingredientes)
        cocinarEnvioEtiqueta.text = String("Tu Pizza se esta cocinando")
    }
    

    
}
