

import Foundation

/// A type-erased `ObservableType`. 
///
/// It represents a push style sequence.
public class Observable<Element> : ObservableType {
    /// Type of elements in sequence.
    public typealias E = Element
    
    init() {
#if TRACE_RESOURCES
        let _ = Resources.incrementTotal()
#endif
    }
    
    public func subscribe<O: ObserverType>(_ observer: O) -> Disposable where O.E == E {
        abstractMethod()
    }
    
    public func asObservable() -> Observable<E> {
        return self
    }
    
    deinit {
#if TRACE_RESOURCES
        let _ = Resources.decrementTotal()
#endif
    }

    // this is kind of ugly I know :(
    // Swift compiler reports "Not supported yet" when trying to override protocol extensions, so ¯\_(ツ)_/¯

    /// Optimizations for map operator
    internal func composeMap<R>(_ selector: @escaping (Element) throws -> R) -> Observable<R> {
        return Map(source: self, transform: selector)
    }
}

