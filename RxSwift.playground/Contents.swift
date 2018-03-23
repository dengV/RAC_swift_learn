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

print("DengJiangzhou 20180209")

example(of: "subscribe") {
    let one = 1
    let two = 2
    let three = 3
    let observable = Observable.of(one, two, three)
    observable.subscribe({ (event) in
        if let element = event.element{
            print(element)
        }
    })
    
  /*  observable.subscribe(onNext: { (element) in
        print("\(element) , ")
    }, onError: { (error) in
        
    }, onCompleted: {
        
    }, onDisposed: {
        
    })*/
    
    
 /*   observable.subscribe(onNext: { element in
        print("\(element) , ")
    })*/
    
}


example(of: "Empty") {
    let observable = Observable<Void>.empty()
    observable.subscribe(
        onNext:{ element in
            print(element)
        },
    
        onCompleted:{
            print("Completed")
        }
    )
}



example(of: "Never") {
    let observable = Observable<Any>.never()
    observable.subscribe(onNext: { (element) in
        print(element)
    }, onCompleted: {
        print("Completed")
    })
}


example(of: "Range") {
    let observable = Observable<Int>.range(start: 1, count: 10)
    observable.subscribe(onNext: { (i) in
        let n = Double(i)
        let fibonacci = Int(((pow(1.61803, n) - pow(0.61803, n))/2.23606).rounded())
            //Int()
        print(fibonacci)
    })
    
    
    
    
    
    
    
    
    
}

