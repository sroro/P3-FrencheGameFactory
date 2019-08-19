//
//  Wizard.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

class Wizard : Character {
    
    static let maxLife = 80
    static let defaultWeapon = Weapon(name: "Magic Wand", damage: 0, heal: 15)
    
    
    init(name: String){
        super.init(name: name, life: Wizard.maxLife, weapon: Wizard.defaultWeapon)
    }
    static func describe() -> String{
        
        return "Wizard: Life = \(Wizard.maxLife) , Weapon = \(Wizard.defaultWeapon.name) heal =\(Wizard.defaultWeapon.heal)"
        
}
    
}
