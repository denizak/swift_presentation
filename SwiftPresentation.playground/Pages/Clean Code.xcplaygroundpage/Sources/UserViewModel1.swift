import Foundation

public class UserViewModel1 {
    public init() {
        
    }
    
    public func loadUser(completion: (_ users: [User]) -> Void) {
        let userApi = UserAPIMock()
        let users = userApi.fetchUsers().map{ User(id: $0.id, name: $0.name) }
        completion(users)
    }
}
