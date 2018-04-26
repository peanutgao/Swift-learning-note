//: [Previous](@previous)
//: [Next](@next)

import UIKit

//: where 关键字用于筛选条件

//: 1. do-catch

enum ExceptionError: Error {
    case httpCode(Int)
}

func throwError() throws {
    throw ExceptionError.httpCode(501)
}

do {
    try throwError()
} catch ExceptionError.httpCode(let code) where code >= 500 {
    print("server error")
}



//: 2. switch-case中使用
var value: (Int, String) = (59, "小明")
switch value {
case let(x, _) where x < 60:
    print("不及格")
default:
    print("及格")
}




//: 3. for-in 中使用
let arr = [1, 2, 3, 4, 5]
for value in arr where value > 3 {
    print(value)
}



//: 4. 协议中使用
// where Self: UIView 表示 只有当前类继承自 UIView 才能遵守这个协议
protocol myProtocol where Self: UIView {
    
}

//: 5. 扩展中使用
// 只有当前类继承自 UIView 的类才向该扩展的内容
extension myProtocol where Self: UIView {
    
}


class MyView: UIView { }
class People { }


// People不是继承在UIView, 不可以遵守myProtocol协议
// extension People: myProtocol { }

// 可以遵守myProtocol协议
extension MyView: myProtocol { }




