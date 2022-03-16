//
//  SwiftUIView.swift
//  
//
//  Created by Yash Vyas on 12/03/22.
//

import SwiftUI

struct UserView: View {
    @ObservedObject private(set) var viewModel: UserViewModel

    var body: some View {
        VStack {
            if let posts = viewModel.user?.posts {
                List(posts) { post in
                    Section(header: Text(post.title)) {
                        Text(post.description)
                    }
                    .onTapGesture {
                        viewModel.selectedPost = post
                    }
                }
            }
        }
        .onAppear {
            Task {
                await viewModel.getUser()
            }
        }
        .navigationBarTitle(Text(viewModel.user?.fullName ?? "Loading..."))
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        let interactor = UserInteractor(repository: UserRepository())
        UserView(viewModel: UserViewModel(interactor: interactor))
    }
}
