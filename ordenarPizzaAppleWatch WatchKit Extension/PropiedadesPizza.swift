//
//  PropiedadesPizza.swift
//  ordenarPizzaAppleWatch
//
//  Created by Aaron Marquez on 29/11/15.
//  Copyright © 2015 Aaron Marquez. All rights reserved.
//

import Foundation

public class Pizza {
    public var tamaño: String = ""
    public var tipoMasa: String = ""
    public var tipoQueso: String = ""
    public var Ingredientes: Dictionary<Int, String> = [:]

}

public var Ingredientes: Dictionary<Int, String> =
[   1:"Jamón",
    2:"Pepperoni",
    3:"Pavo",
    4:"Salchicha",
    5:"Aceituna",
    6:"Cebolla",
    7:"Pimiento",
    8:"Piña",
    9:"Anchoa"
]

public enum valoresIngredientes: Int{
    case Jamon = 1,
    Pepperoni = 2,
    Pavo = 3,
    Salchicha = 4,
    Aceituna = 5,
    Cebolla = 6,
    Pimiento = 7,
    Piña = 8,
    Anchoa = 9
}

