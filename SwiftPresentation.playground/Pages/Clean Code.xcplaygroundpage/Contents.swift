/*:
 ## Swift MVVM+Interactor
 */
let userAPI = UserAPIMock()
let showUser = ShowUserImpl(userAPI: userAPI)
let userViewModel = UserViewModel(showUser: showUser)

userViewModel.loadUser { users in
    users.forEach{ user in
        print("User name: \(user.name)")
    }
}
//: [⬅️](@previous) [➡️](@next)
