//
//  UserViewModelTests.swift
//
//
//  Created by Yash Vyas on 12/03/22.
//

import XCTest
@testable import User

final class UserViewModelTests: XCTestCase {

    func testGetUser() async {
        let viewModel = UserAssembler.getViewModel()
        XCTAssertNil(viewModel.user)
        await viewModel.getUser()
        XCTAssertNotNil(viewModel.user)
        XCTAssertEqual(viewModel.user?.fullName, "Yash Vyas")
    }

}
