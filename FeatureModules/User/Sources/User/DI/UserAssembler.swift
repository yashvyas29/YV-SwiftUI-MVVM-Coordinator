//
//  File.swift
//  
//
//  Created by Yash Vyas on 12/03/22.
//

import Foundation

@available(iOS 13.0, *)
public struct UserAssembler {
    public static func getView() -> UserCoordinator {
        return UserCoordinator(userViewModel: getViewModel())
    }

    static func getViewModel() -> UserViewModel {
        let userRepository = UserRepository()
        let userInteractor = UserInteractor(repository: userRepository)
        let userViewModel = UserViewModel(interactor: userInteractor)
        return userViewModel
    }
}
