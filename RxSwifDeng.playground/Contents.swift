//: Please build the scheme 'RxSwiftPlayground' first
import RxSwift

public func example(of description: String, action: () -> Void) {
    print("\n--- Example of:", description, "---")
    action()
}




example(of: "dispose") {
    let one = 1
    let two = 2
    let three = 3
    let observable = Observable.of("A", "B", "C")
    let subscription = observable.subscribe({
        print($0)
        
    })
    subscription.dispose()
    print("\n\n")
    let disposeBag = DisposeBag()
    
    Observable.of("D", "S", "G").subscribe({
        print($0)
        
    }).addDisposableTo(disposeBag)


    
 /*   observable.subscribe(onNext: { element in
        print("\(element) , ")
    })*/
    
}

/*

enum MyError: Error{
    case anError
}


example(of: "Create") {
    let disposeBag = DisposeBag()
    Observable<String>.create({ observer in
        observer.onNext("1")
        observer.onError(MyError.anError)
        observer.onCompleted()
        observer.onNext("?")
        return Disposables.create()
    }).subscribe(
        onNext: { print($0)
        }, onError: { print($0)
        }, onCompleted: {
            print("Completed")
        }, onDisposed: {
            print("Disposed")
        }).addDisposableTo(disposeBag)
}
*/

example(of: "Create") {
    
    enum MyError: Error{
        case anError
    }
    
    
    let disposeBag = DisposeBag()
    Observable<String>.create({ observer in
        observer.onNext("1")
       // observer.onError(MyError.anError)
       // observer.onCompleted()
        observer.onNext("?")
        return Disposables.create()
    }).subscribe(
        onNext: { print($0)
        }, onError: {
            let str = "! \($0)"
            print(str)
        }, onCompleted: {
            print("Completed DNG")
        }, onDisposed: {
            print("Disposed DNG")
    }).addDisposableTo(disposeBag)
    //.addDisposableTo(disposeBag)              Congratulations, you’ve just leaked memory! The observable will never finish, and the disposable will never be disposed of.
    
}


example(of: "deferred") {
    let disposeBag = DisposeBag()
    var flip = false
    let factory: Observable<Int> = Observable.deferred{
        flip = !flip
        if flip {
            return Observable.of(1,2,3)
        }
        else{
            return Observable.of(4,5,6)
        }
    }
    
    
    
    for _ in 0...4 {
        factory.subscribe(onNext: {
            print($0, terminator: "")
        }).addDisposableTo(disposeBag)
        print("\nDENG\n")
    }
    
}
