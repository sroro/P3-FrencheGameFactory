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
    
    
    
    func  nameCharacter() -> String {
        if let namePlayer = readLine() {
            
            // supprimer les espaces avant et après les caractères et un vérifier qu'un nom qui n'existe pas
            let choice = namePlayer.trimmingCharacters(in: .whitespaces)
            if choice.count < 3 || Player.names.contains(choice) {
                print("!! Choisir un prenom à plus de 3 caractères qui n'existe pas encore !! ")
            } else {
                return choice
            }
        }
        return nameCharacter()
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
            // Ecouter l'entrée clavier utilisateur garce au readLine()
            if let choice = readLine() {
                switch choice {
                case "1":
                    print("Vous avez choisi Fighter, donnez lui un nom:")                    
                    // Demander le nom du personnage
                    // Rajouter le personnage créer dans la Team
                    let name = nameCharacter()
                    let character = Fighter(name: name)
                    team.append(character)
                    Player.names.append(name)
                case "2":
                    print("Vous avez choisi Colossus, donnez lui un nom:")
                    let name = nameCharacter()
                    let character = Colossus(name: name)
                    team.append(character)
                    Player.names.append(name)
                case "3":
                    print("Vous avez choisi Dwarf, donnez lui un nom:")
                    let name = nameCharacter()
                    let character = Dwarf(name: name)
                    team.append(character)
                    Player.names.append(name)
                case "4":
                    print("Vous avez choisi Wizard, donnez lui un nom:")
                    let name = nameCharacter()
                    let character = Wizard(name: name)
                    team.append(character)
                    Player.names.append(name)
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
            // affiche la liste de perso dans le tableau
        print("Le personnage \(index + 1) s'appelle \(character.name)")
            }
        //    Choisir un perso dans notre équipe
             if let choice = readLine() {
                switch choice {
                case "1":
                    print("Vous avez choisi \(team[0].name)")
                    return team[0]
                    
                case "2":
                    print("Vous avez choisi \(team[1].name)")
                    return team[1]
                    
                case "3":
                    print("Vous avez choisi \(team[2].name)")
                    return team[2]
                    
                default:
                    print("Coisissez un chiffre entre 1 et 3")
                }
        }
        //    renvoi la fonction pour choisir un perso
        return selectCharacter(team: team)
    }
}


