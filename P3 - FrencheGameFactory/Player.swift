//
//  Player.swift
//  P3 - FrencheGameFactory
//
//  Created by Rodolphe Schnetzer on 19/08/2019.
//  Copyright © 2019 Rodolphe Schnetzer. All rights reserved.
//

import Foundation

class Player {
    
    var team = [Character]()
    static var names = [String]()
    
    func createTeam() {
        // Tant que le joueur ne choisit pas ces 3 personnages, le jeu ne peu pas commencer.
        
        
        while team.count < 3 {
            // Afficher la liste des personnages disponibles
            
            print("""
                Bonjour choisissez 3 personnages parmis la liste ci-dessous:
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
                    
                    
                    if let namePlayer = readLine() {
                        func createCharacter() {
                            // supprimer les espaces avant et après les caractères et un vérifier qu'un nom qui n'existe pas
                            let trimmedString = namePlayer.trimmingCharacters(in: .whitespaces)
                            if trimmedString.count < 3 || Player.names.contains(trimmedString) {
                                print("Choisir un prenom à plus de 3 caractères qui n'existe pas encore.")
                            } else {
                                
                                let char = Fighter(name: trimmedString)
                                team.append(char)
                                Player.names.append(trimmedString)
                            }
                        }
                    }
                    
                    
                case "2":
                    print("Vous avez choisi Colossus, donnez lui un nom:")
                    
                    // Demander le nom du personnage
                    
                    if let namePlayer = readLine() {
                        // supprimer les espaces avant et après les caractères et un vérifier qu'un nom qui n'existe pas
                        let trimmedString = namePlayer.trimmingCharacters(in: .whitespaces)
                        if trimmedString.count < 3 || Player.names.contains(trimmedString) {
                            print("Choisir un prenom à plus de 3 caractères qui n'existe pas encore.")
                        } else {
                            
                            let char = Fighter(name: trimmedString)
                            team.append(char)
                            Player.names.append(trimmedString)
                        }
                        
                    }
                    
                    
                case "3":
                    print("Vous avez choisi Dwarf, donnez lui un nom:")
                    
                    if let namePlayer = readLine() {
                        
                        // supprimer les espaces avant et après les caractères et un vérifier qu'un nom qui n'existe pas
                        let trimmedString = namePlayer.trimmingCharacters(in: .whitespaces)
                        if trimmedString.count < 3 || Player.names.contains(trimmedString) {
                            print("Choisir un prenom à plus de 3 caractères qui n'existe pas encore.")
                        } else {
                            
                            let char = Fighter(name: trimmedString)
                            team.append(char)
                            Player.names.append(trimmedString)
                        }
                    }
                    
                    
                case "4":
                    print("Vous avez choisi Wizard, donnez lui un nom:")
                    
                    if let namePlayer = readLine() {
                        
                        // supprimer les espaces avant et après les caractères et un vérifier qu'un nom qui n'existe pas
                        let trimmedString = namePlayer.trimmingCharacters(in: .whitespaces)
                        if trimmedString.count < 3 || Player.names.contains(trimmedString) {
                            print("Choisir un prenom à plus de 3 caractères qui n'existe pas encore.")
                        } else {
                            
                            let char = Fighter(name: trimmedString)
                            team.append(char)
                            Player.names.append(trimmedString)
                        }
                    }
                default:
                    print("Veuillez choisir un nombre en 1 et 4")
                }
            }
        }
        // Créer le personnage en focntion du choix de l'utilisateur
        // S'assurer de l'unicité du nom
        
        print(team.count)
        print(Player.names.count)
        print(Player.names)
        
        
        
    }
}
