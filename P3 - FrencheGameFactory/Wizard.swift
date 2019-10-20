//
//  Wizard.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

class Wizard : Character {
    
    static var maxLife = 80
    static var defaultWeapon = Weapon(name: "Magic Wand", damage: 0, heal: 15)
    
    init(name: String){
        super.init(name: name, life: Wizard.maxLife, weapon: Wizard.defaultWeapon)
    }
    
    static func describe() -> String{
        return "Wizard: Life = \(Wizard.maxLife) , Weapon = \(Wizard.defaultWeapon.name) 🥖 heal = \(Wizard.defaultWeapon.heal)pv"
}
    
    //   heal function, restores pv to the person chosen in our team
    
    func heal(target: Character) {
        target.life = target.life + self.weapon.heal
        print("\(self.name) treated \(target.name) and gave him \(self.weapon.heal)pv. \(target.name) has now \(target.life)pv" )
    }
}
