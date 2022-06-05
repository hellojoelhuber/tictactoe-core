//
//  File.swift
//  
//
//  Created by Joel Huber on 6/5/22.
//

import Foundation

public struct GameActionDTO: Codable {
    public let playerID: UUID
    public let turnNumber: Int
    public let action: Int
    
    init(playerID: UUID, turnNumber: Int, action: Int) {
        self.playerID = playerID
        self.turnNumber = turnNumber
        self.action = action
    }
}
