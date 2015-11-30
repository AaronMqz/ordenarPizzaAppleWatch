//
//  tamanoControllerInterfaceController.swift
//  ordenarPizzaAppleWatch
//
//  Created by Aaron Marquez on 29/11/15.
//  Copyright © 2015 Aaron Marquez. All rights reserved.
//

import WatchKit
import Foundation


class tamanoController: WKInterfaceController {

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

    
    @IBAction func btnTamanoChica() {
        datosDeLaPizzza.tamaño = "Chica"
        pushControllerWithName("viewMasa", context: datosDeLaPizzza)
    }
    
    @IBAction func btnTamanoMediana() {
        datosDeLaPizzza.tamaño = "Mediana"
        pushControllerWithName("viewMasa", context: datosDeLaPizzza)
    }
    
    @IBAction func btnTamanoGrande() {
        datosDeLaPizzza.tamaño = "Grande"
        pushControllerWithName("viewMasa", context: datosDeLaPizzza)
    }
    
    
}
