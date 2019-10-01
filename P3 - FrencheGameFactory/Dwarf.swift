//
//  Dwarf.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation


class Dwarf : Character {
    
    static let maxLife = 75
    static let defaultWeapon = Weapon(name: "Chopped", damage: 15, heal: 0)
    
    init(name: String){
        super.init(name: name, life: Dwarf.maxLife, weapon: Dwarf.defaultWeapon)
    }
    static func describe() -> String{
        
        return "Dwarf: Life = \(Dwarf.maxLife) , Weapon = \(Dwarf.defaultWeapon.name) damage =\(Dwarf.defaultWeapon.damage)"
    }
}
