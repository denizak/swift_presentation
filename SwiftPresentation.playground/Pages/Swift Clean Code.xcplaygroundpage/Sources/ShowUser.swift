import Foundation

protocol ShowUser {
    func getAllUsers() -> [User]
}

struct ShowUserImpl: ShowUser {
    let userAPI: UserAPI
    
    func getAllUsers() -> [User] {
        
        return userAPI.fetchUsers()
            .map {
                User(id: $0.id, name: $0.name)
        }
    }
}
