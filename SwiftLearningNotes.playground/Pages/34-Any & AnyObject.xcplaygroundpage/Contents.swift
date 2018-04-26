//: [Previous](@previous)
//: [Next](@next)

import Foundation


/*:
 - AnyObject  表示任何类类型的实例。
 - Any  表示了任意类型的值，包括函数类型和可选类型
 */

var arr = [Any]()
let value: Int? = 3

// 显式声明的Any类型使用可选项，Swift 就会发出警告
arr.append(value)   // 有警告
arr.append(value as Any)    // 没有警告

print(arr)




