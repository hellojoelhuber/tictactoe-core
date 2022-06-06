//
//  File.swift
//  
//
//  Created by Joel Huber on 6/6/22.
//

import Foundation

public struct GameSearchOptions: Codable {
    public let myGames: Bool?
    public let active: Bool?
    public let minRows: Int?
    public let maxRows: Int?
    public let minColumns: Int?
    public let maxColumns: Int?
    public let isPasswordProtected: Bool?
    public let isMutualFollowsOnly: Bool?
    public let following: Bool?
    
    public init(myGames: Bool? = nil, active: Bool? = nil,
         minRows: Int? = 3,  maxRows: Int? = nil,
         minColumns: Int? = 3, maxColumns: Int? = nil,
         isPasswordProtected: Bool? = nil,
         isMutualFollowsOnly: Bool? = nil, following: Bool? = nil) {
        self.myGames = myGames
        self.active = active
        self.minRows = minRows
        self.maxRows = maxRows
        self.minColumns = minColumns
        self.maxColumns = maxColumns
        self.isPasswordProtected = isPasswordProtected
        self.isMutualFollowsOnly = isMutualFollowsOnly
        self.following = following
    }
}

