//: [Previous](@previous)
//: [Next](@next)

import Foundation

// 可以用枚举定义一组错误
enum LoginError: Error {
    case wrongPassword
    case wrongUserName
    case emptyUserName
    case other
}
//: #### 定义会抛出异常的函数

// 在定义函数的时候, -> 前面增加 throws 关键字就表示该函数可能会抛出异常
func login(name: String?, pwd: String?) throws -> String {
    guard name == "Joseph" else {
        throw LoginError.wrongUserName
    }
    
    guard pwd == "888888" else {
        throw LoginError.wrongPassword
    }
    
    guard name?.isEmpty == false else {
        throw LoginError.emptyUserName
    }
    
    return "LOGIN SUCCESS"
}


/*:
 #### 处理可能会抛出异常的函数
 * 需要用 try 关键字来调用可能会抛异常的函数
    * try? 会返回一个 Optional 值,  try? 一般和 if let 搭配使用
    * try! 表示强制执行，这代表你确定知道这次调用不会抛出异常。如果在调用中出现了异常的话，你的程序将会崩溃.这和我们在对 Optional 值用 ! 进行强制解包时的行为是一致的
 */

// if let + try的方式
if let msg = try? login(name: "Joseph", pwd: "88888") {
    print(msg)
}
else {
    print("LOGIN FAILURE")
}


// do-catch 方式
// 如果用不到错误类型,可以用下横线_
do {
    try login(name: "Jh", pwd: "888888")
} catch _ {
    print("LOGIN FAILURE")
}


do {
    try login(name: "Jh", pwd: "888888")
} catch LoginError.wrongPassword {
    print("Error Passwor")
}
catch LoginError.wrongUserName {
    print("Error UserName")
}
catch LoginError.emptyUserName {
    print("Empty UserName")
}









