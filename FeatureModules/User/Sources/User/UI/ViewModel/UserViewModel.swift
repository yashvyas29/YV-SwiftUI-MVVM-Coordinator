//
//  File.swift
//  
//
//  Created by Yash Vyas on 12/03/22.
//

import Foundation

final class UserViewModel: ObservableObject {

    @Published var user: User?
    @Published var selectedPost: Post?

    let interactor: UserInteractorContract

    init(interactor: UserInteractorContract) {
        self.interactor = interactor
    }

    func getUser() async {
        self.user = await interactor.getUser()
    }
}
