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
var userViewModel = UserViewModel(showUser: showUser)

userViewModel.userLoaded = { users in
    users.forEach{ user in
        print("User name: \(user.name)")
    }
}
userViewModel.loadUser()

// Tests

UserAPIMockTests.defaultTestSuite().run()
ShowUserImplTests.defaultTestSuite().run()
UserViewModelTests.defaultTestSuite().run()

// Why we should use interactor?
//: [⬅️](@previous) [➡️](@next)
