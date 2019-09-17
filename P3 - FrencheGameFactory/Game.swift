//
//  Game.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

class Game {
    
    var player1 : Player
    var player2 : Player
    
    
    init() {
        
        player1 = Player(number: 1)
        player1.createTeam()
        
        player2 = Player(number: 2)
        player2.createTeam()
        
        fight()
        
    }
    
    func fight () {
       
        //    Choisir un perso dans notre équipe
         let attackingCharacter = player1.selectCharacter(team: player1.team)
        // Vérification de type (downcast)
        //  https://stackoverflow.com/questions/24091882/checking-if-an-object-is-a-given-type-in-swift
        if let wizard = attackingCharacter as? Wizard {
            // attackingcharacter est un wizard donc faire qlq chose avec la var wizard
            let targetCharacter = player1.selectCharacter(team: player1.team)
            wizard.heal(target: targetCharacter)
        }
        else {
            let targetCharacter = player1.selectCharacter(team: player2.team)
            attackingCharacter.attack(target: targetCharacter)
        }
    }
}
//    Choisir un perso dans notre équipe
//    vérifier si cest un perso qui attaque ou soigne
//    Si perso qui attaque , choisir dans l'equipe adverse le perso à attaquer
//    Si perso qui soigne, choisir perso dans notre equipe à soigner
//    Attaquer ou soigner
    
    
    



