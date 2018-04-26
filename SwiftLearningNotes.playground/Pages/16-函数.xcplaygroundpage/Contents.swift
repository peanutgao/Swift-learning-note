

/*:
 ## 一. 函数定义基本格式
 
 ```
 func 函数名(形参标签1 形参1: 类型1, 形参标签2 形参2: 类型2) -> 返回值类型 {
    // 表达式
    return 返回值
 }
 ```
 */
//: ### 1. 不使用形参标签
func saySomething1(str: String) -> String {
    return str
}

saySomething1(str: "Hello Word")
//: ## 二. 参数的多种情况
//: ### 1. 一般写法
func saySomething2(str: String) -> String {
    return str
}

saySomething2(str: "Hello Word")
//: ### 2. 使用形参标签
//: -note: 形参标签就是在函数参数指定一个名称, 调用的时候形参,
//: #### 2.1 使用形参标签标准情况
// 外界调用的时候, 函数参数名为 name, 而不再是 somebody
func speakSomething(name somebody: String) -> Any {
    return "Hello" + somebody
}

speakSomething(name: "张三")  // 显示的是name

//: #### 2.2 省略参数标签
// -note: 可以省略参数标签, 省略用下横线_代替
func creatStudent(_ name: String, className class: Int) -> Void {   // 使用时`不在显示 name 形参名
    
}

creatStudent("张三", className: 3)    // 不在显示 name

//: ### 3. 可变参数
//: -note: 用...表示参数是可变的, 一个函数最多只能有一个可变形式参数。
func makeFriends(names: String...) {    //所有入参都是String类型, names其实是个Array[String]
    // 遍历来获得所有的参数
    var total: Int = 0
    for name in names {
        total += 1
        print(name)
    }
}

makeFriends(names: "张三", "李四", "王五")
makeFriends(names: "lala", "haha")

//: ## 三. 返回值情况
//: ### 1. 没有返回值
//: 没有返回值写法一: 完整写法
func doSomething1(str: String) -> Void {
    
}
//: 没有返回值写法二: 简写
func doSomething2(str: String) {
    
}
//: ### 2. 多个返回值
//: 通过返回元祖的方式返回多个值
func doSomething3() -> (name: String, isTrue: Bool) {
    return ("hello", true)
}

let rst = doSomething3()
print("\(rst.name) : \(rst.isTrue)")    // 通过返回值的形参名来获得返回值
//: ### 3. 返回可选值
//: #### 3.1 返回的可选值是单个值
func doSomething4() -> String? {
    return nil
}
//: #### 3.2 返回值类型是元祖, 元祖里面的值是可选值
func doSomething4() -> (name: String?, age: Int) {  // 返回的元祖的name是可选值
    return (nil, 18)
}
//: #### 3.3 返回值类型是元祖, 元祖是可选值类型
func doSomething5() -> (name: String, age: Int)? {  // 返回的元祖是可选值
    return nil
}
//: -warning: 注意元祖是可选值类型,还是元祖的值是可选类型, 看问号的位置
//: ### 4. 返回值是函数
//: 可以利用函数的类型作为另一个函数的返回类型。写法是在函数的返回箭头（ ->）后立即写一个完整的函数类型

func backFunc(age: Int, name: String) -> String {
    return "\(age)" + name
}
// returnFuncMethod 的返回值是 (Int, String) -> (String) 类型的函数
func returnFuncMethod(value: Int, name: String) -> (Int, String) -> (String) {
    return backFunc(age:name:)
}


//: ## 四. 函数类型
// 定义的一个函数 aFunction(_:_:)
func aFunction(numb1: Int, numb2: Int) -> String {
    return "\(numb1 + numb2)"
}
// 将 函数 aFunction(_:_:) 赋值给 bFunction函数变量
var bFunction:(Int, Int) -> String = aFunction

// 使用 bFunction 函数
bFunction(2, 3)


//: ## 五. 内嵌函数
func doSomething6() -> () -> () {
    func returnFunc() {
        print("hello world")
    }
    
    return returnFunc
}

doSomething6()





