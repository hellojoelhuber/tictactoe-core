//
//  File.swift
//  
//
//  Created by Joel Huber on 6/18/22.
//

import Foundation

public struct PlayerCreateDTO: Codable {
    public let firstName: String
    public let lastName: String
    public let username: String
    public let password: String
    public let email: String
    public let profileIcon: String

    public init(firstName: String, lastName: String,
                username: String, password: String, email: String,
                profileIcon: String = "hare") {
        self.firstName = firstName
        self.lastName = lastName
        self.username = username
        self.password = password
        self.email = email
        self.profileIcon = profileIcon
    }
}
