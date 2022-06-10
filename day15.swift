import UIKit

//Properties

struct Person {
    var clothes: String
    var shoes: String
    
    func describe(){
        print("ı like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "tshirsts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

taylor.describe()
other.describe()


struct Person1 {
    var clothes1: String {
        willSet {
            updateUI(msg: "Iam changing from \(clothes1) to \(newValue)")
        }
        didSet {
            updateUI(msg: "I just canged from \(oldValue) to \(clothes1)")
        }
    }
}

func updateUI(msg: String){
    print(msg)
}

var taylor1 = Person1 (clothes1: "Tshirsts")
taylor1.clothes1

struct Person2 {
        var age: Int
        var ageInDogYears: Int{
        get {
            return age * 7
        }
    }
}

var fan = Person2(age:25)
print(fan.ageInDogYears)

//Static properties and methods

struct TaylorFan {
    static var favoriteSong = "LOOK what you made me do"
    
    var name: String
    var age:Int
}

let fan1 = TaylorFan(name: "James", age: 27)
print(TaylorFan.favoriteSong)

//Access control

class TaylorFan1 {
    fileprivate var name: String?
}

//Polymorphism and typecasting

class Album {
    var name: String
    
    init(name:String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "the album \(name) sold lot's"
    }
    
}

class StudioAlbum: Album {
    var studio: String
    
    init(name:String,studio:String) {
        self.studio = studio
        super.init(name: name)
    }
    override func getPerformance() -> String {
        return "the studio album\(name) sold lots."
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name:String,location:String) {
        self.location = location
        super.init(name: name)
    }
    override func getPerformance() -> String {
        return "the studio album\(name) sold lots."
    }
}

var taylorSwift1 = StudioAlbum(name: "TaylorSwift", studio: "the Castles Studio")
var fearless = StudioAlbum(name: "Fearless", studio: "Animeeland Studio")
var itunesLive = LiveAlbum(name: "iTunes live from Soho", location: "newYork")

var allAlbums: [Album] = [taylorSwift1, fearless]

for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum](){
    print(album.getPerformance())
    print(album.location)
}

let number3 = 5
let text = String(number3)
print(text)

//Closures

let vw = UIView()

UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
})

let sw = UIView()

UIView.animate(withDuration: 0.5) {
    sw.alpha = 1
}
