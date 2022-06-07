import UIKit

//Handling missing data

var age: Int? = nil
age = 38

//Unwrapping optionals

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("missing name")
}
let album = "Red"
let albums = ["Reputation", "Red", "1989"]
if let position = albums.firstIndex(of: album) {
    print("Found \(album) at position \(position).")
}

//Unwrapping with guard

func greet(_ name:String?){
    guard let unwrapped1 = name else {
        print("you didn't provide a name!")
        return
    }
    print("hollo\(unwrapped1)!")
}
func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}
let input = 5
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")
}

func isLongEnough(_ string: String?) -> Bool {
    guard let string = string else { return false }
    if string.count >= 8 {
        return true
    } else {
        return false
    }
}
if isLongEnough("Mario Odyssey") {
    print("Let's play that!")
}

func validate(password: String?) -> Bool {
    guard let password = password else {
        return false
    }
    if password == "fr0sties" {
        print("Authenticated successfully!")
        return true
    }
    return false
}
validate(password: "fr0sties")

//Force unwrapping

let str = "5"
let num = Int(str)!

let score = "dsadsa412312"
let scoreInt = Int(score)!

//Implicitly unwrapped optionals

let age1: Int! = nil //Error fine

//Nil coalescing

    func username(for id:Int) -> String? {
        if id == 1{
            return "Taylor"
    }else{
        return nil
    }
}
let user = username(for: 1) ?? "anonymous"

//Optional chaining

let names1 = ["batu", "Veli", "Ahmet", "Mehmet"]
let baetle1s = names1.first?.uppercased()

//Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//Failable initializers

struct Person {
    var id : String
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        }else{
            return nil
        }
    }
    
}

//Typecasting

class Animal {}
class Fish : Animal {}

class Dog: Animal{
    func makeNoise() {
        print("Wolf")
    }
}

let pets = [Fish(),Dog(),Fish(),Dog()]

for pet in pets {
    if let dog = pets as? Dog {
        dog.makeNoise()
    }
}
