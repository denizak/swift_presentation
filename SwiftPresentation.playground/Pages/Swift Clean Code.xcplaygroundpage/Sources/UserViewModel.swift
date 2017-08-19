import Foundation

struct UserViewModel {
    var users: [User]
 
    let showUser: ShowUser
    func loadUser(completion: (_ users: [User]) -> Void) {
        let users = showUser.getAllUsers()
        completion(users)
    }
}
