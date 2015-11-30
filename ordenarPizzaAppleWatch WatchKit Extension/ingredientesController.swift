//
//  ingredientesController.swift
//  ordenarPizzaAppleWatch
//
//  Created by Aaron Marquez on 29/11/15.
//  Copyright © 2015 Aaron Marquez. All rights reserved.
//

import WatchKit
import Foundation


class ingredientesController: WKInterfaceController {

    var contadorIngredientes = 0
    
    @IBOutlet var btnIngredientes: WKInterfaceButton!
    @IBOutlet var swJamon: WKInterfaceSwitch!
    @IBOutlet var swPepperoni: WKInterfaceSwitch!
    @IBOutlet var swPavo: WKInterfaceSwitch!
    @IBOutlet var swSalchicha: WKInterfaceSwitch!
    @IBOutlet var swAceituna: WKInterfaceSwitch!
    @IBOutlet var swCebolla: WKInterfaceSwitch!
    @IBOutlet var swPimiento: WKInterfaceSwitch!
    @IBOutlet var swPiña: WKInterfaceSwitch!
    @IBOutlet var swAnchoa: WKInterfaceSwitch!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        datosDeLaPizzza.Ingredientes.removeAll()
        btnIngredientes.setHidden(true)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func optJamon(value: Bool) {
        asignarIngredientes(value : value, ingrediente: valoresIngredientes.Jamon)
    }
    
    @IBAction func optPepperoni(value: Bool) {
        asignarIngredientes(value : value, ingrediente: valoresIngredientes.Pepperoni)
    }
    
    @IBAction func optPavo(value: Bool) {
        asignarIngredientes(value : value, ingrediente: valoresIngredientes.Pavo)
    }
    
    @IBAction func optSalchicha(value: Bool) {
        asignarIngredientes(value : value, ingrediente: valoresIngredientes.Salchicha)
    }
    
    @IBAction func optAceituna(value: Bool) {
        asignarIngredientes(value : value, ingrediente: valoresIngredientes.Aceituna)
    }
    
    @IBAction func optCebolla(value: Bool) {
        asignarIngredientes(value : value, ingrediente: valoresIngredientes.Cebolla)
    }
    
    @IBAction func optPimiento(value: Bool) {
        asignarIngredientes(value : value, ingrediente: valoresIngredientes.Pimiento)
    }
    
    @IBAction func optPiña(value: Bool) {
        asignarIngredientes(value : value, ingrediente: valoresIngredientes.Piña)
    }
    
    @IBAction func optAnchoa(value: Bool) {
        asignarIngredientes(value : value, ingrediente: valoresIngredientes.Anchoa)
    }

    
    
    func asignarIngredientes(value value : Bool, ingrediente : valoresIngredientes) -> () {
        if validarCantidadIngredientes(value : value, ingrediente: ingrediente) {
            datosDeLaPizzza.Ingredientes[ingrediente.rawValue] = Ingredientes[ingrediente.rawValue]
        }else{
             datosDeLaPizzza.Ingredientes.removeValueForKey(ingrediente.rawValue)
        }
    }
    
    
    func validarCantidadIngredientes(value value : Bool, ingrediente : valoresIngredientes) -> Bool {
        var resultado: Bool = true
        
        if value {
            ++contadorIngredientes
        }else{
            --contadorIngredientes
            resultado = false
        }
        
        if contadorIngredientes > 0{
            btnIngredientes.setHidden(false)
        }else{
            btnIngredientes.setHidden(true)
        }
        
        if contadorIngredientes > 5 {
            --contadorIngredientes
            resultado = false
            cancelarSeleccionIngrediente(ingrediente :ingrediente, resultado: resultado)
        }
        return resultado
    }
    
    func cancelarSeleccionIngrediente(ingrediente ingrediente : valoresIngredientes, resultado : Bool) -> (){
        
        switch ingrediente{
        case .Aceituna:
            swAceituna.setOn(resultado)
        case .Anchoa:
            swAnchoa.setOn(resultado)
        case .Cebolla:
            swCebolla.setOn(resultado)
        case .Jamon:
            swJamon.setOn(resultado)
        case .Pavo:
            swPavo.setOn(resultado)
        case .Pepperoni:
            swPepperoni.setOn(resultado)
        case .Pimiento:
            swPimiento.setOn(resultado)
        case .Piña:
            swPiña.setOn(resultado)
        default :0
        }
    }
    
    @IBAction func btnIngredientesAccion() {
        pushControllerWithName("viewConfirmacion", context: datosDeLaPizzza)
    }
    
    
}
