//
//  SwiftUIView.swift
//  
//
//  Created by Yash Vyas on 12/03/22.
//

import SwiftUI

@available(iOS 13.0, *)
public struct UserCoordinator: View {

    @ObservedObject private(set) var userViewModel: UserViewModel

    public var body: some View {
        NavigationView {
            VStack {
                UserView(viewModel: userViewModel)
                    .padding(.top, 20)
                postNavigation
            }
        }
        .navigationViewStyle(.stack)
        .accentColor(.black)
    }

    private var postNavigation: some View {
        NavigationLink(
            isActive: .init(get: {
                userViewModel.selectedPost != nil
            }, set: { isActive in
                if !isActive {
                    userViewModel.selectedPost = nil
                }
            }),
            destination: {
                userViewModel.selectedPost.map(PostView.init)
            },
            label: { EmptyView() })
    }
}
