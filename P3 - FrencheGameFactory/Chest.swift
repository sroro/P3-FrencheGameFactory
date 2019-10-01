//
//  Chest.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 24/09/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

class Chest {
    let newWeapon = "SpecialWeapon"
    let damage = 30
    let magicWeapon = Weapon(name: "magicWeapon", damage: 0, heal: 30)
    let specialWeapon = Weapon(name: "specialWeapon", damage: 25, heal: 0)
    
//    func d'une arme special quand on tombe sur le coffre
    
    func randomWeapon(type: AttackType ) -> Weapon? {
        let randomInt = Int.random(in: 1...5)
        if randomInt == 2 {
            
    //    condition ternaire :  (return type == .attack ? specialWeapon : magicWeapon) <- version simplifié code ci dessous
            if type == .attack {
                return specialWeapon
            } else {
               return magicWeapon
            }
        }
            return nil
    }
}
