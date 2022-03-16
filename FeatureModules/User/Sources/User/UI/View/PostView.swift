//
//  SwiftUIView.swift
//  
//
//  Created by Yash Vyas on 12/03/22.
//

import SwiftUI

@available(iOS 13.0, *)
struct PostView: View {

    let post: Post

    var body: some View {
        Text(post.description)
            .font(.system(.headline))
            .navigationBarTitle(Text(post.title), displayMode: .inline)
    }
}

@available(iOS 13.0, *)
struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        let post = Post(title: "Title", description: "Description")
        PostView(post: post)
    }
}
