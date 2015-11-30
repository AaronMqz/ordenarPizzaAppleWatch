//
//  InterfaceController.swift
//  ordenarPizzaAppleWatch WatchKit Extension
//
//  Created by Aaron Marquez on 29/11/15.
//  Copyright © 2015 Aaron Marquez. All rights reserved.
//

import WatchKit
import Foundation

public var datosDeLaPizzza =  Pizza()

class InicioController: WKInterfaceController {

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

    
    @IBAction func btnInicio() {
        pushControllerWithName("viewTamano", context: nil)
    }

    
}
