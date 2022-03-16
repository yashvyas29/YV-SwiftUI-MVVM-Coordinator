//
//  File.swift
//  
//
//  Created by Yash Vyas on 12/03/22.
//

import Foundation

protocol UserRepositoryContract {
    func getUser() async -> User
}

struct UserRepository: UserRepositoryContract {
    func getUser() async -> User {
        let post1 = Post(title: "First Post", description: "Yeah great to add my first post.")
        let post2 = Post(title: "Second Post", description: "Yeah great to add my second post.")
        return User(firstName: "Yash", lastName: "Vyas", posts: [post1, post2])
    }
}
