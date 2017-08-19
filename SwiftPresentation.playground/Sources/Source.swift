import Foundation
import UIKit
import XCPlayground

var str = "Hello, playground"

struct User {
    let id: Int
    let name: String
}

protocol DisplayUser {
    func getUsers() -> [User]
}

struct DisplayUserImpl: DisplayUser {
    func getUsers() -> [User] {
        return [User(id: 1, name: "name")]
    }
}

func show() -> [User] {
    let displayUser: DisplayUser = DisplayUserImpl()
    return displayUser.getUsers()
}
