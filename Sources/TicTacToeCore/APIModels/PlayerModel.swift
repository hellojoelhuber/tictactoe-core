
import Foundation

public struct PlayerAPIModel: Codable {
    public let id: UUID
    public let username: String

    public init(id: UUID, username: String) {
        self.id = id
        self.username = username
    }
}

public struct PlayerProfileDTO: Codable {
    public let id: UUID
    public let username: String
    public let gamesPlayed: Int
    public let gamesWon: Int
    
    public init(id: UUID, username: String, gamesPlayed: Int, gamesWon: Int) {
        self.id = id
        self.username = username
        self.gamesPlayed = gamesPlayed
        self.gamesWon = gamesWon
    }
}
