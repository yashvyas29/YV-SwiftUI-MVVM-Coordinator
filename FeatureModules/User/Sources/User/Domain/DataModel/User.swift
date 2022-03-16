//
//  User.swift
//
//
//  Created by Yash Vyas on 12/03/22.
//

import Foundation

struct User {
    let firstName: String
    let lastName: String

    private(set) var middleName: String?
    private(set) var posts: [Post]?

    var fullName: String {
        if let middleName = middleName, !middleName.isEmpty {
            return "\(firstName) \(middleName) \(lastName)"
        } else {
            return "\(firstName) \(lastName)"
        }
    }
}

