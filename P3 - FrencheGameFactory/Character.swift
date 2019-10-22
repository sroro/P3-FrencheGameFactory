//
//  Character.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

// Create class Character with properties ( name , pv, weapon)
class Character {
    
    var name : String
    var life : Int
    var weapon : Weapon
    
    init ( name: String, life: Int, weapon: Weapon){
        self.name = name
        self.life = life
        self.weapon = weapon
    }
    
    /* Attacking function: we attack a character. The target parameters has the same properties as the class Character
                self.weapon.damage = damage to the attacker's weapon */
    
    func attack(target: Character) {
        target.life  -= self.weapon.damage
        
        if target.life <= 0{
           target.life = 0
            print("\(target.name) has no life left")
        }
        print("\(self.name) attacked \(target.name) and inflicted it \(self.weapon.damage)pv. \(target.name) has now \(target.life)pv 🔫" )
    }
}
 
