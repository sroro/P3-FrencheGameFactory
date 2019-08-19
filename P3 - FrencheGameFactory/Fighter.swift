//
//  Fighter.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

class Fighter : Character {
    
    static let maxLife = 100
    static let defaultWeapon = Weapon(name: "Epée", damage: 10, heal: 0)
    
    
    init(name: String){
        super.init(name: name, life: Fighter.maxLife, weapon: Fighter.defaultWeapon)
    }
    static func describe() -> String{
        
        return "Fighter: Life = \(Fighter.maxLife) , Weapon = \(Fighter.defaultWeapon.name) damage =\(Fighter.defaultWeapon.damage)"
        
    }
    
    
}

