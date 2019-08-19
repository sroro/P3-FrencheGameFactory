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
        
        player1 = Player()
        player1.createTeam()
        
        player2 = Player()
        player2.createTeam()
        
    }
}
