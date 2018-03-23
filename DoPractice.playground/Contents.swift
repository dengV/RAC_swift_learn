//: Playground - noun: a place where people can play

import UIKit


import RxSwift

var str = "Hello, playground"


public func example(of description: String, action: () -> Void) {
    print("\n--- Example of:", description, "---")
    action()
}




example(of: "Challenge ") {
    let observable = Observable<Any>.never()
    observable.do(onNext: { (ele) in
        print("马上来")
    }, onError: { (err) in
        print("有错")
    }, onCompleted: {
        print("好啦")
    }, onSubscribe: {
        print("on  Subscribe")
    }, onDispose: {
        print("onDispose")
    }).subscribe(onNext: { (element) in
        print(element)
    }, onCompleted: {
        print("Completed")
    })
    
    //do operator   -> RxSwift.Observable<Self.E>
}




example(of: "Challenge Two") {
    let observable = Observable<Any>.never()
    observable.debug("Challenge Two", trimOutput: true).subscribe(onNext: { (element) in
        print(element)
    }, onCompleted: {
        print("Completed")
    })
}





///


example(of: "answer Challenge ") {
    let observable = Observable<Any>.never()
    observable.do(onSubscribe: {
        print("on  Subscribe")
    }).subscribe(onNext: { (element) in
        print(element)
    }, onCompleted: {
        print("Completed")
    }).addDisposableTo(DisposeBag())
    
    //do operator   -> RxSwift.Observable<Self.E>
}



example(of: "Answer Challenge Two") {
    let observable = Observable<Any>.never()
    observable.debug().subscribe(onNext: { (element) in
        print(element)
    }, onCompleted: {
        print("Completed")
    }).addDisposableTo(DisposeBag())
}
