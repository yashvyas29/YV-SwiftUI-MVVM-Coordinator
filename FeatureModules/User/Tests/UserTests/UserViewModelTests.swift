import XCTest
@testable import User

@available(iOS 13.0, *)
final class UserViewModelTests: XCTestCase {

    func testGetUser() async {
        let viewModel = UserAssembler.getViewModel()
        XCTAssertNil(viewModel.user)
        await viewModel.getUser()
        XCTAssertNotNil(viewModel.user)
        XCTAssertEqual(viewModel.user?.fullName, "Yash Vyas")
    }

}
