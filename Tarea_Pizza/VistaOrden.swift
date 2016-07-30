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
    @IBOutlet weak var otroPedido: UIButton!
    @IBOutlet weak var cancelar: UIButton!
    
    @IBAction func confirmarOrdenBoton(sender: UIButton) {
        confirmarOrdenBoton.hidden = true
        cocinarEnvioEtiqueta.hidden = false
        mostrarAlerta()
        otroPedido.hidden = false
        cancelar.hidden = true
    }
    
    @IBAction func cancelar(sender: UIButton) {
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let sigVista = segue.destinationViewController as! ViewController
            sigVista.otroPedido = otro}
    }
    
    
    var tamañoDeLaPizza:String?
    var tipoDeMasa:String?
    var tipoDeQueso:String?
    var ingredientes:[String]=[]
    var otro:String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        cocinarEnvioEtiqueta.hidden = true
        otroPedido.hidden = true
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
        cocinarEnvioEtiqueta.text = String("Tú Pizza estará en 30 minutos")
    }
    
    func mostrarAlerta() {
        let alerta = UIAlertController (title: "Mensaje",
                                        message: "Su pedido se está preparando",
                                        preferredStyle: UIAlertControllerStyle.Alert)
        let accion = UIAlertAction(title: "Cerrar",
                                   style: UIAlertActionStyle.Default) { _ in
                                    alerta.dismissViewControllerAnimated(true, completion: nil) }
        alerta.addAction(accion)
        
        self.presentViewController(alerta, animated: true, completion: nil)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ViewController
        sigVista.otroPedido = otro}
}
