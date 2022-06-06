//
//  File.swift
//  
//
//  Created by Joel Huber on 6/6/22.
//

import Foundation

public struct GameActiveDTO: Codable {
    public let id: UUID
    public let boardRows: Int
    public let boardColumns: Int
    public var nextTurn: PlayerDTO? // references the turn order
    public var players: [PlayerDTO]
    
    public init(id: UUID,
                boardRows: Int, boardColumns: Int,
                nextTurn: PlayerDTO?,
                players: [PlayerDTO]
    ) {
        self.id = id
        self.boardRows = boardRows
        self.boardColumns = boardColumns
        self.nextTurn = nextTurn
        self.players = players
    }
}

extension GameActiveDTO {
    private func checkWinRow(row: Int, actions: [Int]) -> Bool {
        for col in 0..<boardColumns {
            if !actions.contains((boardColumns * row) + col) {
                return false
            }
        }
        return true
    }
    
    private func checkWinColumn(column: Int, actions: [Int]) -> Bool {
        for row in 0..<boardRows {
            if !actions.contains(column + (boardRows * row)) {
                return false
            }
        }
        return true
    }
    
    // These two Validate Diagonal funcs only work for fixed AxA sized boards right now.
    private func checkWinDiagonalZero(actions: [Int]) -> Bool {
        for row in 0..<boardRows {
            if !actions.contains(row * (boardColumns+1)) {
                return false
            }
        }
        return true
    }
    
    private func checkWinDiagonalMid(actions: [Int]) -> Bool {
        for row in 0..<boardRows {
            if !actions.contains((boardColumns-1) * (1+row)) {
                return false
            }
        }
        return true
    }
    
    public func checkWin(row: Int, col: Int, actions: [Int]) -> Bool {
        return checkWinRow(row: row, actions: actions)
            || checkWinColumn(column: col, actions: actions)
            || checkWinDiagonalZero(actions: actions)
            || checkWinDiagonalMid(actions: actions)
    }
}
