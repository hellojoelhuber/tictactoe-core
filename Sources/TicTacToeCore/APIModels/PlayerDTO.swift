
import Foundation

public struct PlayerDTO: Codable {
    public let id: UUID
    public let username: String
    public let profileIcon: String

    public init(id: UUID, username: String, profileIcon: String) {
        self.id = id
        self.username = username
        self.profileIcon = profileIcon
    }
}
