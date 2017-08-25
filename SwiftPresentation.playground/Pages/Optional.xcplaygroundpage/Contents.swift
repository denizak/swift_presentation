//: ## Optional

let smileCat = "😺"
print("\(smileCat)")

var schrodingerCat: String?
if let cat = schrodingerCat {
    print("\(cat)")
}

schrodingerCat = smileCat

func unboxCat(cat: String?) {
    guard let cat = schrodingerCat else {
        print("☠️")
        return
    }
    
    print("\(cat)")
}

unboxCat(cat: schrodingerCat)

//: [⬅️](@previous) [➡️](@next)

