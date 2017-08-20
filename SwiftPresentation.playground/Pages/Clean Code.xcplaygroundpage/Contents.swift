/*:
 ## Swift MVVM+Interactor
 */
// Swift MVVM

let userViewModel1 = UserViewModel1()
userViewModel1.loadUser { users in
    users.forEach{ user in
        print("User name: \(user.name)")
    }
}

// Swift MVVM + Interactor

let userAPI = UserAPIMock()
let showUser = ShowUserImpl(userAPI: userAPI)
let userViewModel = UserViewModel(showUser: showUser)

userViewModel.loadUser { users in
    users.forEach{ user in
        print("User name: \(user.name)")
    }
}

// Why we should use interactor?
//: [⬅️](@previous) [➡️](@next)
