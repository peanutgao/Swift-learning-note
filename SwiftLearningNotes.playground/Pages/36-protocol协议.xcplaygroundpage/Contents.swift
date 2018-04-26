//: [Previous](@previous)
//: [Next](@next)

import Foundation

/*:
 # protocol
 ## 一. 语法:
 ```
 protocol 协议名: 遵守的协议1, 遵守的协议2 {
    // 方法是 require
    func 方法名()
 }
 ```
 
 如果有可选方法
 ```
 @objc protocol 协议名: 遵守的协议1, 遵守的协议2 {
    func 方法1()              // 必须实现的方法是 require
    @objc optional 方法2()    // optional 方法
 }
 
 ```
 - note:
 1. 协议可以添加变量属性
 
 */


//: 二. 添加属性
/*:
 - note:
 1. 协议定义的属性只能是变量,所以必须用 var
 2. 如果是可读写的需要加上 {get set}
 3. 如果是只读属性加上 { get }
 */

protocol MyProtocol {
    var name: String { get set }
    var idCard: String  { get }
}



//: 三. 添加方法
/*:
 - note:
 1. 协议可以定义实例方法 和 类方法
 2. 添加 类方法 需要在方法前面添加 static 关键字
 3. 如果定义的方法要改变遵守这个协议的属性, 需要加上 mutating 异变
 4. 默认所有的方法都是必须要实现的,及 require的, 如果要设置可选optional的需要在方法前添加 @objc optional ,
 5. 如果有添加 @objc, 那么 mutating 就不能再需要了
 
 */

protocol MyProtocol2 {
    func doSomething()  // 对象方法
    static func doSomething2()  // 类方法, 要加 static
    mutating func doSomthing3()
}

@objc protocol MyProtocol3 {
    @objc optional func doSomething()   // 可选对象方法
    @objc optional static func doSomething2()   // 可选类方法
    @objc optional func doSomthing3()
}




class Person: MyProtocol3 {
    var name: String?
}






