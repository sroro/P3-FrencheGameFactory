//
//  Character.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

// Créer la class Character avec comme propriété ( nom, pv, arme)
class Character {
    
    var name : String
    var life : Int
    var weapon : Weapon
    
    init ( name: String, life: Int, weapon: Weapon){
        self.name = name
        self.life = life
        self.weapon = weapon
        
    }
    
    /*Fonction attaquer: on attaque un personnage. la target à les mêmes propriétés que la class Character
     self.weapon.damage = dégats de l'arme de l'attaquant */
    
    func attack(target: Character) {
        target.life = target.life - self.weapon.damage
        
        if target.life <= 0{
            target.life = 0
            print("\(target.name) n'a plus de vie")
        }
        
        print("\(self.name) à attaqué \(target.name) et lui a infligé \(self.weapon.damage)pv. \(target.name) a maintenant \(target.life)pv" )
        
    }
    
}
 
