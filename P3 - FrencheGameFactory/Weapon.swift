//
//  Weapon.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

/*  class weapon have ( name , damage (for fighter, colossus, dwarf), heal(wizard)) */

class Weapon {
    
    var name : String
    var damage : Int
    var heal: Int
    
    init (name: String, damage: Int, heal: Int){
        self.name = name
        self.damage = damage
        self.heal = heal
    }
}
