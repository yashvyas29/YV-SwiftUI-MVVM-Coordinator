//
//  File.swift
//  
//
//  Created by Yash Vyas on 12/03/22.
//

import Foundation

protocol UserInteractorContract {
    func getUser() async -> User
}

struct UserInteractor: UserInteractorContract {

    private let repository: UserRepositoryContract

    init(repository: UserRepositoryContract) {
        self.repository = repository
    }

    func getUser() async -> User {
        await repository.getUser()
    }
}
