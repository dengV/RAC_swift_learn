//: Please build the scheme 'RxSwiftPlayground' first
import RxSwift

public func example(of description: String, action: () -> Void) {
    print("\n--- Example of:", description, "---")
    action()
}

public enum Event<Element>{
    
    case next(Element)
    
    case error(Element)
    
    case Completed
}

print("Haha")



example(of: "just, of, from") {
    // 1
    let one = 1
    let two = 2
    let three = 3
    // 2
    let observable: Observable<Int> = Observable<Int>.just(one)
    let observable2 = Observable.of(one, two, three)
    let observableThree = Observable.of([one, two, three])
    
    
    let observableFour = Observable.from([one, two, three])
    
    
}



let observer = NotificationCenter.default.addObserver(
    forName: .UIKeyboardDidChangeFrame,
    object: nil,
    queue: nil
) { notification in
    // Handle receiving notification
}



let sequenceDen = 0..<3
var iterator = sequenceDen.makeIterator()
while let n = iterator.next(){
    print(n)
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




