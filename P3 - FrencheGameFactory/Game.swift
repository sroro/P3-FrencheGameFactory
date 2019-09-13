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
        
        
        let attackingCharacter = player1.selectCharacter(team: player1.team)
        let targetCharacter = player1.selectCharacter(team: player2.team)
        
        attackingCharacter.attack(target: targetCharacter)
        
        
    }
//    Choisir un perso dans notre équipe
//    vérifier si cest un perso qui attaque ou soigne
//    Si perso qui attaque , choisir dans l'equipe adverse le perso à attaquer
//    Si perso qui soigne, choisir perso dans notre equipe à soigner
//    Attaquer ou soigner
    
    
    
}


