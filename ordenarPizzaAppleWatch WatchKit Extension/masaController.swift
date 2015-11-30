//
//  masaController.swift
//  ordenarPizzaAppleWatch
//
//  Created by Aaron Marquez on 29/11/15.
//  Copyright © 2015 Aaron Marquez. All rights reserved.
//

import WatchKit
import Foundation


class masaController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func btnDelgada() {
        datosDeLaPizzza.tipoMasa = "Delgada"
        pushControllerWithName("viewQueso", context: datosDeLaPizzza)
    }
    
    @IBAction func btnCrujiente() {
        datosDeLaPizzza.tipoMasa = "Crujiente"
        pushControllerWithName("viewQueso", context: datosDeLaPizzza)
    }
    
    @IBAction func btnGruesa() {
        datosDeLaPizzza.tipoMasa = "Gruesa"
        pushControllerWithName("viewQueso", context: datosDeLaPizzza)
    }
    
    
    
}
