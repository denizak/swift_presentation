import Foundation

public protocol UserAPI {
    func fetchUsers() -> [UserAPIModel]
}

import XCTest
public class UserAPIMockTests: XCTestCase {
    var api: UserAPIMock!
    override public func setUp() {
        super.setUp()
        api = UserAPIMock()
    }
    func testFetchUsers() {
        XCTAssertGreaterThan(api.fetchUsers().count, 0)
    }
}

public struct UserAPIMock: UserAPI {
    public init() {}
    
    public func fetchUsers() -> [UserAPIModel] {
        var users = [UserAPIModel]()
        for i in 0..<10 {
            let user = UserAPIModel(id: "id\(i)", lastUpdate: Date(), name: "User \(i)")
            users.append(user)
        }
        
        return users
    }
}
