import UIKit

//Variables and constants

var sayi = 24

sayi = 29

//Types of Data - Int , Float , Double, String , Bool

var name: String
name = "batu"

var age: Int
age = 25

var latitude: Double
latitude = 26.453454345
var longitude: Float
longitude = 244324.543543543543

var stayOutTOlate: Bool
stayOutTOlate = true
var Getot: Bool
Getot = false
var geting = false

var name2: String
name2 = "Tim"
var name1: String = "Tim"
var sayi2 = 43
var tbt2 = true

//Operators

var a = 10
a = 1 + a
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var c = 1.1
var d = 2.2
var e = 3.21
var toplam = c + d + e
var name11 = "batu"
var name22 = "eve git"
var namePlus = name11 + " hızlı " + name22
////////////////////////////////////////////


var aa = 1.1
var bb = 2.2
var cc = a + b

cc > 4
cc <= 4
cc >= 4
cc < 4

var name12 = "Batu"
name12 == "Batu"
name12 != "Batu"

var stayOutToLate = true
!stayOutTOlate
stayOutTOlate

//String Interpolation

var nameA = "Batuhan"
print("GO back hear \(nameA)")

var at = 25
var bt = 35
var ct = "batu"

print("I am \(at) year old and my uncle \(bt) years old , his name is \(ct).")

//Arrays

var evenNumbers:[Int] = [2, 4, 6, 8]
var songs:[String] = ["Shake it off","You Belong", "Okeyy"]

evenNumbers[3]
songs[2]

var songs1 = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs2 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both = songs1 + songs2
both += ["The name is Batu"]
both[6]

//Dictionaries

var person = [
    "first":"Taylor",
    "middle":"Allison",
    "last":"Swift",
    "month":"December",
    "website":"taylorswift.com"
             ]
person["first"]
person["middle"]

//Conditional statements

var action1: String
var person21 = "hater"

if person21 == "hater" {
    action1 = "takaşi"
}else if person21 == "player" {
    action1 = "play"
}else{
    action1 = "cruise"
}

var action2:String
var stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action2 = "cruise"
}
if !stayOutTooLate && !nothingInBrain {
    action2 = "cruise"
    print(action2)
}

//Loops

print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")
print("10 x 10 is \(10 * 10)")


for i in 1...10 {
   print("\(i) x 10 is \(i * 10)") // upper this code is short solution
}

var str3 = "fakers gonna"
for _ in 1...5 {
    str3 += "fake"
}
1 ..< 5

var songs4 = ["shake it off","you belong with me", "look what you made me"]

for song in songs4 {
    print("my favorite song\(song)")
}

var people4 = ["players", "haters", "futbollars", "freedom"]
var actions3 = ["play", "hate", "break", "fake"]
for i3 in 0..<3 {
    print("\(actions3[i3])foverite players\(people4[i3])")
}


for i4 in 0..<people4.count {
    var str = "\(people4[i4])"
    
    for _ in 1...5 {
        str += "\(actions3[i4])"
    }
    print(str)
}

var counter = 0

    while true {
        print("Counter is now \(counter)")
        counter += 1
        if counter == 555 {
        break
        }
    }

var songs5 = ["Shake if off", "you belong me", "look what you made me do"]

for song2 in songs5 {
    if song2 == "you belong me" {
        continue
    }
    print("My favorite song\(song2)")
    
}

//Switch case

let livealbums = 2

switch livealbums {
case 0:
    print("you are just")
    
case 1...2:
    print("You just realsed")
    
case 2...3:
    print("New world tour")
case 3...4:
    print("satürn")
default:
    print("standart")
}
