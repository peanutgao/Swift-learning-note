//: [Previous](@previous)
//: [Next](@next)

import Foundation

protocol MyProtocol {
    
}

// <T: MyProtocol, V: MyProtocol>
// <T: MyProtocol, V: MyProtocol> 表示定义2个泛型 T 和 V
// T: MyProtocol 表示 泛型T 要遵循 MyProtocol 协议
func doSomething<T: MyProtocol, V: MyProtocol>(m: T, value2: V) -> Bool {
    return true
}
