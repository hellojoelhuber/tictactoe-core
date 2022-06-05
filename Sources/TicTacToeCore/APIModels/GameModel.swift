
import Foundation

public struct GameAPIModel: Codable {
    public let id: UUID
    public let playerCount: Int // Max player count in a game.
    public let boardRows: Int
    public let boardColumns: Int
    public let isPasswordProtected: Bool
    public let isMutualFollowsOnly: Bool
    public let openSeats: Int
    public let isComplete: Bool
    public var nextTurn: PlayerAPIModel? // references the turn order
    public let completeTurnsCount: Int // how many turns total have passed // for TTT, this will be 0 to 9.
    public var winner: PlayerAPIModel? // To reduce unnecessary trips to the db, this COULD be omitted from the DTO because a client can infer the answer by if (isComplete) winner = nextTurn, since nextTurn only increments if !isComplete. The server will still record the winner on the game record, however. Unfortunately, if the opponent resigns on their turn, the nextTurn = loser, so...
    public let createdAt: Date?
    public var createdBy: PlayerAPIModel
    public let updatedAt: Date?
    public var players: [PlayerAPIModel]

    public init(id: UUID,
                boardRows: Int, boardColumns: Int,
                isPasswordProtected: Bool, isMutualFollowsOnly: Bool,
                playerCount: Int, openSeats: Int,
                completeTurnsCount: Int,
                nextTurn: PlayerAPIModel?,
                isComplete: Bool,
                winner: PlayerAPIModel?,
                createdBy: PlayerAPIModel,
                createdAt: Date,
                updatedAt: Date,
                players: [PlayerAPIModel]) {
        self.id = id
        self.playerCount = playerCount
        self.boardRows = boardRows
        self.boardColumns = boardColumns
        self.isPasswordProtected = isPasswordProtected
        self.isMutualFollowsOnly = isMutualFollowsOnly
        self.openSeats = openSeats
        self.completeTurnsCount = completeTurnsCount
        self.nextTurn = nextTurn
        self.isComplete = isComplete
        self.winner = winner
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.updatedAt = updatedAt
        self.players = players
    }
}

extension GameAPIModel {
    public struct Create: Codable {
        public let rows: Int
        public let columns: Int
        public let password: String?
        public let isMutualFollowsOnly: Bool
        
        public init(rows: Int = 3,
                    columns: Int = 3,
                    password: String? = nil,
                    isMutualFollowsOnly: Bool = false) {
            self.rows = rows
            self.columns = columns
            self.password = password
            self.isMutualFollowsOnly = isMutualFollowsOnly
        }
    }
}

extension GameAPIModel {
    public struct Join: Codable {
        public let password: String

        init(password: String) {
            self.password = password
        }
    }
}
