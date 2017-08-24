import Foundation

public protocol ShowUser {
    func getAllUsers() -> [User]
}

import XCTest
public class ShowUserImplTests: XCTestCase {
    var showUser: ShowUserImpl!
    override public func setUp() {
        super.setUp()
        showUser = ShowUserImpl(userAPI: UserAPIMock())
    }
    
    func testGetAllUsers() {
        XCTAssertGreaterThan(showUser.getAllUsers().count, 0)
    }
}

public struct ShowUserImpl: ShowUser {
    public init(userAPI: UserAPI) {
        self.userAPI = userAPI
    }
    
    let userAPI: UserAPI
    public func getAllUsers() -> [User] {
        
        return userAPI.fetchUsers()
            .map {
                User(id: $0.id, name: $0.name)
        }
    }
}
