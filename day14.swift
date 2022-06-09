import UIKit

//Functions

func favoriteAlbum(name:String) {
    print("my Favorite is \(name)")
}
favoriteAlbum(name: "Fearless")

func printAlbumRelease(name:String, year:Int){
    print("\(name) Was released in \(year)")
}
printAlbumRelease(name: "fearless", year: 2008)

//Optionals

func printHello(in string: String) {
    print("\(string) and \(string.count) I am Coming")
}
printHello(in: "Hello")

func albumIsTaylors(name:String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" {return true}
    return false
}

if albumIsTaylors(name: "Taylor Swift") {
    print("that's one of hers!")
} else {
    print("Who made that?")
}

if albumIsTaylors(name: "the White Album") {
    print("that's one of hers")
} else {
    print("Who made that?")
}

//Optional chaining

func albumsRelease1(year:Int) -> String? {
    switch year {
    case 2006: return "Taylow Swift"
    case 2008: return "Fearless"
    default: return nil
    }
}

let album2 = albumsRelease1(year: 2003) ?? "Unknown"
print("the album is\(album2)")

//Enumerations

enum weatherType {
    case sun
    case cloud
    case rain
    case snow
    case wind(speed: Int)
}

func GetWeatherStatus(weather: weatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return("Hate")
    case .snow,.rain,.wind:
        return("very hate")
    case .cloud:
        return ("very exited")
        
    }
}

//Structs

struct person3 {
    var clothes: String
    var shoes: String
    
    func RandomGift() {
        print("I like Wearing \(clothes) with \(shoes)")
    }
}

let taylor = person3(clothes: "Tshirt", shoes: "Sneakers")
let otherPerson = person3(clothes: "short Skirts", shoes: "high Heels")

print(taylor.clothes,taylor.shoes)
print(otherPerson.shoes)

var taylorCopy = taylor
taylorCopy.shoes = "FlipFlop"

print(taylor)
print(taylorCopy)

//Classes

class Person4 {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String){
        self.clothes = clothes
        self.shoes = shoes
    }
}

class Singer {
    var name: String
    var age: Int
    
    init(name:String, age: Int){
        self.name = name
        self.age = age
    }
    
    func sing () {
        print("La la la la")
    }
}

class CountrySinger: Singer {
    override func sing() {
        print("Turcks, guitars, and more liquor")
    }
}

    class HaevyMetalSinger: Singer {
        var NoiseLevel: Int
        
            init(name: String, age: Int,NoiseLevel: Int) {
            self.NoiseLevel = NoiseLevel
            super.init(name: name, age: age)
        }
        
        override func sing() {
            print("grrrgrgr grgrgrgrg ragr rgrrg")
        }
    }

var taylor1 = CountrySinger(name: "Taylor", age: 27)
taylor1.name
taylor1.age
taylor1.sing()
