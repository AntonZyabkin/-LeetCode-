import Cocoa
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true


class SaveArray<T> {
    private var array: [T] = []
    private let queue = DispatchQueue(label: "concurrent", attributes: .concurrent)
    public func appendElement(_ newElement: T) {
        queue.async(flags: .barrier) {
            self.array.append(newElement)
        }
    }
    public func getArray() -> [T] {
        queue.sync {
            return self.array
        }
    }
    
}
var array = SaveArray<Int>()

//var queue = DispatchQueue(label: "cunc", attributes: .concurrent)
var queue = DispatchQueue(label: "test", qos: .userInitiated)

//DispatchQueue.concurrentPerform(iterations: 10) { index in
//    queue.sync {
//        if index == 2 {
//            sleep(1)
//        }
//        array.appendElement(index)
//    }
//}
//print(array.getArray())

let queueSerial = DispatchQueue(label: "sereal")
var _array2: [Int] = []
var array2: [Int] {
    get { queueSerial.sync { _array2 }}
    set { queueSerial.async { _array2.append(contentsOf: newValue) }}
}

var testArray: [Int] = []
DispatchQueue.concurrentPerform(iterations: 5) { index in
    array2.append(index)
}
print(array2)
