//
//  File.swift
//  
//
//  Created by Yash Vyas on 12/03/22.
//

import Foundation

struct Post: Identifiable {
    private(set) var id: UUID = .init()
    let title: String
    let description: String
}
