import Foundation
import XCTest

class ShowUserMock: ShowUser {
    func getAllUsers() -> [User] {
        return [User(id: "1", name: "name")]
    }
}

public class UserViewModelTests: XCTestCase {
    var userViewModel: UserViewModel!
    override public func setUp() {
        super.setUp()
        userViewModel = UserViewModel(showUser: ShowUserMock())
    }
    
    func testGetAllUsers() {
        let expect = expectation(description: "")
        userViewModel.userLoaded = {
            users in
            XCTAssertGreaterThan(users.count, 0)
            expect.fulfill()
        }
        userViewModel.loadUser()
        
        waitForExpectations(timeout: 1, handler: nil)
    }
}

public struct UserViewModel {
    public init(showUser: ShowUser) {
        self.showUser = showUser
    }
    
    public var userLoaded : (([User]) -> Void)?
    
    let showUser: ShowUser
    public func loadUser() {
        let users = showUser.getAllUsers()
        guard let userLoaded = userLoaded else { return }
        userLoaded(users)
    }
}
