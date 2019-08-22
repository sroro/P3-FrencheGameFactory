//
//  Player.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

class Player {
    
    var number : Int
    var team = [Character]()
    static var names = [String]()
    
    init(number: Int) {
        self.number = number
    }
    
    
    
    func  chooseCharacter() {
        if let namePlayer = readLine() {
            
            // supprimer les espaces avant et après les caractères et un vérifier qu'un nom qui n'existe pas
            let namePlayer = namePlayer.trimmingCharacters(in: .whitespaces)
            if namePlayer.count < 3 || Player.names.contains(namePlayer) {
                print("!! Choisir un prenom à plus de 3 caractères qui n'existe pas encore !! ")
            } else {
                
                let char = Fighter(name: namePlayer)
                team.append(char)
                Player.names.append(namePlayer)
            }
        }
    }
    
    func createTeam() {
        // Tant que le joueur ne choisit pas ces 3 personnages, le jeu ne peu pas commencer.
        
        
        while team.count < 3 {
            // Afficher la liste des personnages disponibles
            
            print("""
                Bonjour Joueur \(number) choisissez 3 personnages parmis la liste ci-dessous:
                1 - \(Fighter.describe())
                2 - \(Colossus.describe())
                3 - \(Dwarf.describe())
                4 - \(Wizard.describe())
                """)
            // Ecouter l'entrée clavier utilisateur
            if let choice = readLine() {
                switch choice {
                case "1":
                    print("Vous avez choisi Fighter, donnez lui un nom:")
                    
                    // Demander le nom du personnage
                    // Rajouter le personnage créer dans la Team
                    
                    chooseCharacter()
                    
                case "2":
                    print("Vous avez choisi Colossus, donnez lui un nom:")
                    
                    // Demander le nom du personnage
                    
                    chooseCharacter()
                    
                case "3":
                    print("Vous avez choisi Dwarf, donnez lui un nom:")
                    
                   chooseCharacter()
                    
                case "4":
                    print("Vous avez choisi Wizard, donnez lui un nom:")
                    
                   chooseCharacter()
                    
                default:
                    print("Veuillez choisir un nombre en 1 et 4")
                }
            }
        }
      
        print(Player.names.count)
        print(Player.names)
        
    }
    
    //    Choisir un perso dans notre équipe
    func selectCharacter(team: [Character] ) -> Character  {
        
        
        for (index, character) in team.enumerated() {
            
            print("Le personnage \(index + 1) s'appelle \(character)")
            
        }
        
        return team
    }
   
    
}


