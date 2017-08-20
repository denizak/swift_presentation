import Foundation

public struct UserViewModel {
    public init(showUser: ShowUser) {
        self.showUser = showUser
    }
    
    let showUser: ShowUser
    public func loadUser(completion: (_ users: [User]) -> Void) {
        let users = showUser.getAllUsers()
        completion(users)
    }
}
