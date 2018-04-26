//: [Previous](@previous)
//: [Next](@next)

import Foundation

/*:
 guard let 和 if let 相反
 更推荐使用 guard let ,把不符合条件的先过滤掉
 */
//: #### 用 guard let , 新值不再是可选值类型
func loginMethod0(name: String?, password: String?) {
    guard let n = name, let p = password else {
        print("不能为空")
        return
    }
    
    // 后面可以直接用 n p, 且一定有值
    print("\(n), \(p)")
    
}




func loginMethod1(name: String?, password: String?) {
    // 名字可以一样的
    guard let name = name, let password = password else {
        print("不能为空")
        return
    }
    
    // 后面可以直接用 n p, 且一定有值
    print("\(name), \(password)")
    
}




func loginMethod2(name: String?, password: String?) {
    // if let的名字可以用一样的
    if let name = name, let password = password {
        // 此时 name 和 password 一定有值
        print("\(name), \(password)")
    }
    else {
        print("不能为空")
    }
    
}

loginMethod1(name: nil, password: "abc")
loginMethod2(name: "abc", password: nil)
loginMethod2(name: "abc", password: "def")


print("\n\n===========================\n\n")





//: #### 直接用 guard , 后面的值可以强制解包
func loginMethod3(name: String?, password: String?) {
    guard name != nil, password != nil else {
        print("不能为空")
        return
    }
    
    // 不用 guard let 需要强制解包
    print("\(name!), \(password!)")
}



func loginMethod4(name: String?, password: String?) {
    if name != nil && password != nil {
        // 不用 if let 需要强制解包
        print("\(name!), \(password!)")
    }
    else {
        print("不能为空")
    }
    
}

loginMethod3(name: nil, password: "abc")
loginMethod4(name: "abc", password: nil)




//: #### guard 添加多个限制

var str: String? = "hello"
// 用 , 逗号分隔, 可以添加多个限制
// let str = str , str == "hello" , 表示 限制 str有值, 且str不能是 hello
guard let str = str , str != "hello" else {
    print("xxx")
    throw NSError()
}

