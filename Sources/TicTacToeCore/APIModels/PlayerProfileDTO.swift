//
//  File.swift
//  
//
//  Created by Joel Huber on 6/6/22.
//

import Foundation

public struct PlayerProfileDTO: Codable {
    public let id: UUID
    public let username: String
    public let profileIcon: String

    public let gamesPlayed: Int
    public let gamesWon: Int
    
    
    public init(id: UUID,
                username: String, profileIcon: String,
                gamesPlayed: Int, gamesWon: Int) {
        self.id = id
        self.username = username
        self.profileIcon = profileIcon
        
        self.gamesPlayed = gamesPlayed
        self.gamesWon = gamesWon
    }
}
