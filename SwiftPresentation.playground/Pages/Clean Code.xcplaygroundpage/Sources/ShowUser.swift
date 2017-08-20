import Foundation

public protocol ShowUser {
    func getAllUsers() -> [User]
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
