/*:
 # Hello playground!
 
 A *simple* demo with _markup_ examples.
 */

//: Another **variable** of type __String__


//: [Next](@next)


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

let displayUser: DisplayUser = DisplayUserImpl()
displayUser.getUsers()
