//: [Previous](@previous)
//: [Next](@next)


/*:
 语法格式:
 ```
 // 小括号不能省略
 { (形参1: 类型1, 形参2: 类型2) -> (返回值类型) in
    // 表达式
 }
 ```
 in 导入，这个关键字表示闭包的形参和返回类型定义已经完成，并且闭包的函数体即将开始。
 
 ## 一. 定义
*/
//: 定义闭包常量
// (Any) -> (String?)
let closureName1: (Any) -> (String?) = { (value: Any) -> String? in
    return "\(value)"
}

// 因为有类型推倒, 所以可以直接写
let closureName2 = { (value: Any) -> String? in
    return "\(value)"
}

//: 定义闭包变量
var closureName3: (Int) -> (String)     // 定义闭包变量

//: 定义可选闭包, 注意可选闭包的 小括号范围
var closureName4: ((String) -> (Int))?


//: 给闭包设置别名
typealias MyClosure = (Any) -> (String?)
typealias MyOptionalClosure = ((String) -> (Void))?
var closureName5: MyClosure // 通过别名声明变量


//: ## 二. 使用:
//: ### 1. 闭包变量赋值
var closure1: (String) -> ()    // 定义一个闭包变量closure1, 类型是 (String) -> ()
closure1 = {(name: String) -> Void in
    print(name)
}

//: ### 2. 调用闭包
closure1("张三")

//: ### 3. 闭包昨晚函数的参数
//: #### 3.1 一般参数
//:
// Function types cannot have argument labels; use '_' before 'number'
// 函数中使用闭包不能有参数标签, (在Swift3中, 把闭包的参数名 取消了)
func aFunction(value: String, callBack:(_ number: Int?) -> ()) {
    let rst = Int(value)    // 字符转整型
    callBack(rst)
}

aFunction(value: "12", callBack: {(number) in   // number没写类型是因为这个形参是传进来的,Swift有类型推倒
    print(number ?? "")
})

//: #### 3.2 尾随闭包
//: 如果函数最后一个参数是闭包, 函数参数可以提前结果, 最后一个参数直接使用 {} 包装闭包的代码
aFunction(value: "24") { (number) in
    print(number ?? "")
}

//: ### 4. 传递闭包
// 1. 创建一个闭包变量, 并赋值(其实是添加操作)
var closure2: (String) -> Void = {str in
    print(str)
}

// 2. 定义一个含义闭包的函数
func doSomething(value: String, callBack: (String) -> Void) {
    callBack(value)
}

// 3. 给这个函数赋值
doSomething(value: "kiss me", callBack: closure2)


//: ### 5. 可以通过 $0 , $1 , $2 等名字来引用闭包的实际参数值
func doSomething1(callBack: (String, String) -> Void) {
    callBack("100", "200")
}

//doSomething1 { (string0, string1) in
//  print("\(string0) + \(string1)")
//}

// 用 $0 $1来代替第0个 第1个参数, 注意: 不要 in 了
doSomething1 {
    print("\($0) + \($1)")
}

/*:
 ### 6. @autoclosure 和 @escaping 标志
 
 * `@escaping` : 当闭包作为一个实际参数传递给一个函数的时候，我们就说这个闭包逃逸了，因为它可以在函数返回之后被调用。当你声明一个接受闭包作为形式参数的函数时，你可以在形式参数前写 @escaping 来明确闭包是允许逃逸的。@escaping 意味着你必须在闭包中显式地引用 self
 
 * @autoclosure 标志标记函数的形参是自动闭包, 传递参数时可以直接传递一段代码
 */



