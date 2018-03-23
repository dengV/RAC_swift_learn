//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let oneTwoThree = 1...3
for number in oneTwoThree{
    print(number)
}
let bugs = ["Aphid", "Bumblebee", "Cicada", "Damselfly", "Earwig"]
var hasMosquito = false
for bug in bugs {
    if bug == "Mosquito" {
        hasMosquito = true
        break
    }
}
print("'bugs' has a mosquito: \(hasMosquito)")


if bugs.contains("Mosquito"){
    
       print("Break out the bug spray.")
}else{
    
      print("Whew, no mosquitos!")
}

let hues = ["Heliotrope": 296, "Coral": 16, "Aquamarine": 156]

for (name, value) in hues{
    print("\n")
    print("\(name): \(value)")
}




let text = "Buffalo buffalo buffalo buffalo."



if let firstSpace = text.index(of: " "){
    print("\n\(text.distance(from: text.startIndex, to: firstSpace))\n")
    print(text[..<firstSpace])
}

let firstChar = text[text.startIndex]
print(firstChar)
print("\n")
print(text.first)



print("\n")

let firstWord = text.prefix(while: {$0 != " "})
print(firstWord)


if let firstPlaceDen = text.index(of: "."){
    print(firstPlaceDen)
    print(text[..<firstPlaceDen])
}


print("Haha")
