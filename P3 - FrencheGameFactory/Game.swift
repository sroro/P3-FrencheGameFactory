//
//  Game.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

// enum for random Chest
enum AttackType {
    case magic, attack
}

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
    
    func teamIsAlive(player: Player) -> Bool {
        var deadCharacter = 0
        //  the loop for in allows to check if the character to 0pv and if yes delete of the array
        for(index, character)  in player.team.enumerated() {
            if  character.life <= 0{
                deadCharacter += 1
                player.team.remove(at: index)
                
            }
        }
        // return false when all the team was dead
        if deadCharacter == player.team.count {
            print("All the team was dead 💔 !")
            return false
        }
        //   return true when there is at least 1 character
        return true
    }
    
//    Func to manage player turn
    func playerTurn(attacker: Player, defender: Player)  {
        let chest = Chest()
        // Choose character in our team
        let attackingCharacter = attacker.selectCharacter(team: attacker.team)
        /*Vérification of type as? (downcast)
         https://stackoverflow.com/questions/24091882/checking-if-an-object-is-a-given-type-in-swift*/
        if let wizard = attackingCharacter as? Wizard {
            if let newWeapon = chest.randomWeapon(type: .magic) {
                print("You found a better heal weapon.. enjoy 😁")
                wizard.weapon = newWeapon
            }
            
            // attackingcharacter est un wizard donc faire qlq chose avec la var wizard
            let targetCharacter = attacker.selectCharacter(team: attacker.team)
            wizard.heal(target: targetCharacter)
        } else {
            if let newWeapon = chest.randomWeapon(type: .attack) {
                print("You found a better weapon..enjoy 😁")
                attackingCharacter.weapon = newWeapon
            }
            // if character is not wizard, attack
            let targetCharacter = attacker.selectCharacter(team: defender.team)
            attackingCharacter.attack(target: targetCharacter)
        }
    }
    
    func fight () {
        while teamIsAlive(player: player1) && teamIsAlive(player: player2){
                print("Player 1 it's your turn")
                playerTurn(attacker: player1, defender: player2)
                if teamIsAlive(player: player2){
                    print("Player 2 it's your turn")
                    playerTurn(attacker: player2, defender: player1 )
            }
        }
    }
}


/*Une fois la partie terminée (lorsque tous les personnages d’une équipe sont morts),
  tu affiches le joueur qui a gagné et les statistiques de jeu :
  le nombre de tours et la liste des personnages des deux équipes avec leurs propriétés (point de vie, etc.). */


