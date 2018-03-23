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
