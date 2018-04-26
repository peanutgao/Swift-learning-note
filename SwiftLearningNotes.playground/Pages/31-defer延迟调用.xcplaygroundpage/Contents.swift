//: [Previous](@previous)
//: [Next](@next)

import Foundation
/*:
 defer: 延迟
 defer 作用是让里面的代码延迟到函数return 抛异常或者语句结束前调用
 
 - note:
 * defer的代码一定要走一次,不然不能压进栈
 * defer是以压栈的形式, 所以是先进后出,后进先出. 所以当有多个defer的时候,最后一个defer先执行
 
[Swift 的 defer 几个简单的使用场景](http://www.cocoachina.com/ios/20180227/22369.html)
*/

//: #### 代码块中使用 defer
func demo1() {
    defer {
        print("结束前调用")
    }
    
    print("先调用")
}

demo1()
print("\n\n===========================")

//: #### 处理异常使用 defer
func demo2() throws -> Void {
    print("抛出异常")
    throw NSError()
}

do {
    defer {
        print("抛出异常后调用")
    }
    try demo2()
} catch _ {
    print("接到到异常")
}

print("\n\n===========================")

//: #### return defer
func demo3() {
    defer {
        print("return前调用")
    }
    
    if true {
        print("先调用")
        return
    }
}

demo3()






