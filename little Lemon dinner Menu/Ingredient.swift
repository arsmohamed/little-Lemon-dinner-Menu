//
//  Ingredient.swift
//  little Lemon dinner Menu
//
//  Created by Amr Mohamed on 2023-03-17.
//

import Foundation

enum Ingredient: String {
    case Spinach
    case Broccoli
    case Carrot
    case Pasta
    case TomatoSauce = "Tomato sauce"

    var stringValue: String {
        return self.rawValue
    }
}
