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
    
    func teamIsAlive(team :[Character]) -> Bool {
        var deadCharacter = 0
        for character in team {
            if  character.life <= 0 {
                deadCharacter += 1
            }
        }
        if deadCharacter == team.count {
            return false
        }
        return true
    }
    
    func playerTurn(attacker: Player, defender: Player) {
        // Choisir un perso dans notre équipe
        let attackingCharacter = attacker.selectCharacter(team: attacker.team)
        // Vérification de type (downcast)
        //  https://stackoverflow.com/questions/24091882/checking-if-an-object-is-a-given-type-in-swift
        if let wizard = attackingCharacter as? Wizard {
            // attackingcharacter est un wizard donc faire qlq chose avec la var wizard
            let targetCharacter = attacker.selectCharacter(team: attacker.team)
            wizard.heal(target: targetCharacter)
        }
        else {
            let targetCharacter = attacker.selectCharacter(team: defender.team)
            attackingCharacter.attack(target: targetCharacter)
        }
        
    }
    
    func fight () {
       
        while teamIsAlive(team: player1.team) && teamIsAlive(team: player2.team){
            playerTurn(attacker: player1, defender: player2)
            if teamIsAlive(team: player2.team){
                playerTurn(attacker: player2, defender: player1)
            }
        }
       
    }
}

    
    
    



