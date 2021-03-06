//
//  YV_SwiftUI_MVVM_CoordinatorApp.swift
//  YV-SwiftUI-MVVM+Coordinator
//
//  Created by Yash Vyas on 12/03/22.
//

import SwiftUI
import User

@main
struct YV_SwiftUI_MVVM_CoordinatorApp: App {
    var body: some Scene {
        WindowGroup {
            UserAssembler.getView()
        }
    }
}
