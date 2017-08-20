import Foundation

public protocol UserAPI {
    func fetchUsers() -> [UserAPIModel]
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
