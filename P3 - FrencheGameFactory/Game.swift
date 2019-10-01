//
//  Game.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

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
        //  la boucle for in permet de vérifier si le perso à 0pv et si oui le sup du tableau
        for(index, character)  in player.team.enumerated() {
            if  character.life <= 0{
                deadCharacter += 1
                player.team.remove(at: index)
            }
        }
        // retourne faux quand toute la team est morte
        if deadCharacter == player.team.count {
            print("Toute l'équipe est morte")
            return false
        }
        //   retourne vrai quand il reste au moins 1 perso
        return true
    }
    
//    Func pour gérer tour des Player
    func playerTurn(attacker: Player, defender: Player)  {
        let chest = Chest()
        // Choisir un perso dans notre équipe
        let attackingCharacter = attacker.selectCharacter(team: attacker.team)
        /*Vérification de type as? (downcast)
         https://stackoverflow.com/questions/24091882/checking-if-an-object-is-a-given-type-in-swift*/
        if let wizard = attackingCharacter as? Wizard {
            if let newWeapon = chest.randomWeapon(type: .magic) {
                print("Vous avez trouvez une nouvelle arme de soin")
                wizard.weapon = newWeapon
            }
            
            // attackingcharacter est un wizard donc faire qlq chose avec la var wizard
            let targetCharacter = attacker.selectCharacter(team: attacker.team)
            wizard.heal(target: targetCharacter)
        }
        else {
            if let newWeapon = chest.randomWeapon(type: .attack) {
                print("Vous avez trouvez une nouvelle arme d'attaque")
                attackingCharacter.weapon = newWeapon
            }
            // si le perso choisi est pas wizard , attaquer
            let targetCharacter = attacker.selectCharacter(team: defender.team)
            attackingCharacter.attack(target: targetCharacter)
        }
    }
    
    func fight () {
       
        while teamIsAlive(player: player1) && teamIsAlive(player: player2){
                print("Player 1 à toi de jouer")
                playerTurn(attacker: player1, defender: player2)
                if teamIsAlive(player: player2){
                    print("Player 2 à toi de jouer")
                    playerTurn(attacker: player2, defender: player1)
            }
        }
    }
}


// ajout d'un coffre aleatoirement pendant le combat une fois pour tour player 1 et 2

/*Une fois la partie terminée (lorsque tous les personnages d’une équipe sont morts),
  tu affiches le joueur qui a gagné et les statistiques de jeu :
  le nombre de tours et la liste des personnages des deux équipes avec leurs propriétés (point de vie, etc.). */


