/*:
 ## Object Oriented Swift
 */
protocol Greet {
    func sayIt()
    func printHello(to: String)
}
extension Greet {
    func printHello(to: String) {
        print("Hello \(to)")
    }
}
struct GreetImpl: Greet {
    let 🌎 = "world"
    
    func sayIt() {
        printHello(to: 🌎)
    }
}
let greeting: Greet = GreetImpl()
greeting.sayIt()
//:[⬅️](@previous) [➡️](@next)
