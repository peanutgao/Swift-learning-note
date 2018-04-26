//: [Previous](@previous)
//: [Next](@next)

import Foundation


/*:
 - note:
 * 结构体和枚举都是值类型
 * 默认情况下，值类型属性不能被自身的实例方法修改。
 * 如果想要修改需要 异变, 即: 在方法前面添加 mutating 关键字
 */
struct MySize {
    var x: Double = 0.0
    var y: Double = 0.0
    
    // 方法要修改 x 和 y, 结构体是值类型, 属性不能被自身方法修改
    // mutating 异变
    mutating func modify(x newX: Double, y newY: Double) {
        x = newX
        y = newY
    }
}


enum Switch {
    case off, low, high
    
    // 添加mutating 异变函数,让方法允许修改自身的值
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
