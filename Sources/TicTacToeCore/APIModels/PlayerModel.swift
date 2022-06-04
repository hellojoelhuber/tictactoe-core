
import Foundation

public struct PlayerAPIModel: Codable {
    public let id: UUID
    public let firstName: String
    public let lastName: String
    public let username: String

    init(id: UUID, firstName: String, lastName: String, username: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.username = username
    }
}
