//
//  confirmacionController.swift
//  ordenarPizzaAppleWatch
//
//  Created by Aaron Marquez on 29/11/15.
//  Copyright © 2015 Aaron Marquez. All rights reserved.
//

import WatchKit
import Foundation


class confirmacionController: WKInterfaceController {

    @IBOutlet var lblTamano: WKInterfaceLabel!
    @IBOutlet var lblMasa: WKInterfaceLabel!
    @IBOutlet var lblQueso: WKInterfaceLabel!
    @IBOutlet var lblIngredientes: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        obtenerValores()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    func obtenerValores() -> () {
        lblTamano.setText(datosDeLaPizzza.tamaño)
        lblMasa.setText(datosDeLaPizzza.tipoMasa)
        lblQueso.setText(datosDeLaPizzza.tipoQueso)
        lblIngredientes.setText(concatenarIngredientes())
        
    }
    
    func concatenarIngredientes() -> String {
        var valoresIngrediente = ""
        var inicio = 0
        
        for ingrediente in datosDeLaPizzza.Ingredientes.values{
            if inicio == 0 {
                valoresIngrediente = ingrediente
                inicio = 1
            }else{
                valoresIngrediente = valoresIngrediente + "\n" + ingrediente
            }
        }
        return valoresIngrediente
    }
    
    @IBAction func btnConfirmar() {
        pushControllerWithName("viewFinal", context: nil)
    }
    

}
