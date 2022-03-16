//
//  UserAssemblerTests.swift
//  
//
//  Created by Yash Vyas on 12/03/22.
//

import XCTest
@testable import User

class UserAssemblerTests: XCTestCase {

    func testGetView() {
        let view = UserAssembler.getView()
        XCTAssertNotNil(view)
        XCTAssertNotNil(view.body)
    }
    
}
