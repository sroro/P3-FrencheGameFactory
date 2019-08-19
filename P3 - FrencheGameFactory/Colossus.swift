//
//  Colossus.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

class Colossus : Character {
    
    static let maxLife = 115
    static let defaultWeapon = Weapon(name: "Poing", damage: 7, heal: 0)
    
    
    init(name: String){
        super.init(name: name, life: Colossus.maxLife, weapon: Colossus.defaultWeapon)
    }
    static func describe() -> String{
        
        return "Colossus: Life = \(Colossus.maxLife) , Weapon = \(Colossus.defaultWeapon.name) damage =\(Colossus.defaultWeapon.damage)"
        
    }
}
