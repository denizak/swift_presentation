import Foundation

protocol UserAPI {
    func fetchUsers() -> [UserAPIModel]
}

struct UserAPIMock: UserAPI {
    func fetchUsers() -> [UserAPIModel] {
        var users = [UserAPIModel]()
        for i in 0..<10 {
            let user = UserAPIModel(id: "id\(i)", lastUpdate: Date(), name: "User \(i)")
            users.append(user)
        }
        
        return users
    }
}
