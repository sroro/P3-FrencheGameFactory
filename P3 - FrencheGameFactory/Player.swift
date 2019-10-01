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
    
    /* The func nameCharacter listen to the keyboard entry ReadLine: in first it checks that the name is
       well written without spaces, more than 3 letters and a name that does not exist if this is the case
       it return choice else we return the func (recursivity) */
    
    func  nameCharacter() -> String {
        if let namePlayer = readLine() {
            
            // remove the spaces before and after the characters and check that a name that does not exist
            // https://stackoverflow.com/questions/28570973/how-should-i-remove-all-the-leading-spaces-from-a-string-swift
            let choice = namePlayer.trimmingCharacters(in: .whitespaces)
            if choice.count < 3 || Player.names.contains(choice) {
                print("!! Choose a name with more than 3 characters and that does not exist yet !! ")
            } else {
                return choice
            }
        }
        return nameCharacter()
    }
    
    func createTeam() {
        // while the player does not choose these 3 characters, the game can not begin.
        while team.count < 3 {
            // view the list of available characters
            print("""
                Hello Player \(number) choose 3 characters from the list below:
                1 - \(Fighter.describe())
                2 - \(Colossus.describe())
                3 - \(Dwarf.describe())
                4 - \(Wizard.describe())
                """)
            // listen to the keyboard entry ReadLine
            if let choice = readLine() {
                switch choice {
                case "1":
                    print("You choose Fighter, give him a name:")
                    // Request the name of the character
                    // Add the character to create in the Team
                    // Add the name of the chosen character in the table name
                    let name = nameCharacter()
                    let character = Fighter(name: name)
                    team.append(character)
                    Player.names.append(name)
                case "2":
                    print("You choose Colossus, give him a name:")
                    let name = nameCharacter()
                    let character = Colossus(name: name)
                    team.append(character)
                    Player.names.append(name)
                case "3":
                    print("You choose Dwarf, give him a name:")
                    let name = nameCharacter()
                    let character = Dwarf(name: name)
                    team.append(character)
                    Player.names.append(name)
                case "4":
                    print("You choose Wizard, give him a name:")
                    let name = nameCharacter()
                    let character = Wizard(name: name)
                    team.append(character)
                    Player.names.append(name)
                default:
                    print("Choose a name under 1 and 4")
                }
            }
        }
      
        print(Player.names.count)
        print(Player.names)
        
    }

    //    Choose a character in our team
    func selectCharacter(team: [Character] ) -> Character  {
        for (index, character) in team.enumerated() {
            // view the list of character in the array
            print("The character \(index + 1) is called \(character.name) ")
            }
        //    Choose a character in our team
             if let choice = readLine() {
                switch choice {
                case "1":
                    print("You choose \(team[0].name)")
                    return team[0]
                    
                case "2":
                    print("You choose \(team[1].name)")
                    return team[1]
                    
                case "3":
                    print("You choose \(team[2].name)")
                    return team[2]
                    
                default:
                    print("Choose a number under 1 and 3")
                }
        }
        //    return function to choose a character
        return selectCharacter(team: team)
    }
}


