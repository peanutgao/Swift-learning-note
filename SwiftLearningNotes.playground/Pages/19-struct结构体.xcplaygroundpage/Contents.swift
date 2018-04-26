//: [Previous](@previous)
//: [Next](@next)

/*:
 ## 一. 语法:
 
 ```
 struct 结构体名 {
    //..
 }
 ```
 
 * 结构体和类很相似, 可以创建构造函数/属性/方法/扩展/协议, 但是不能被继承
 * 因为和类一样有 构造函数, 所以也可以创建实例对象
 
 - 注意:
 结构体和枚举是值类型, 类是引用类型
 */

//: ## 二. 使用
import Foundation

// 定义枚举
enum Gender {
    case male(String)
    case female(String)
}


// 定义协议

/*:
 - note: 协议里面有可选方法时要注意:
    1. 需要在 协议和方法前都加上 @objc
    2. 同时要导入 Foundation 框架 import Foundation
    3. 结构体不能用可选方法, 只能是类
    Non-class type 'Student' cannot conform to class protocol 'GoodPeopleProtocol'
 
 ```
@objc protocol GoodPeopleProtocol {
    @objc optional func doGoodPeoplebehaviour() -> Void
}
 ```

*/

protocol GoodPeopleProtocol {
    func doGoodPeoplebehaviour() -> Void
}

protocol GoodStudentProtocol: GoodPeopleProtocol {
    func doGoodStudentBehiaviour();
}


// 定义结构体,并遵守某个协议
struct Student: GoodStudentProtocol{
    var name: String
    var age: Int?
    var gender: Gender
    var book: String?

    // 默认的初始化构造器
    init() {
        name = ""
        age = 18
        gender = .female("女")
    }
    
    
    // 自定义初始化构造器
    // Swift构造器不用返回self
    // 不用显性调用 self.init(), 默认调用默认的初始化构造器
    init(name: String, age: Int, gender: Gender) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    
    // 结构体和枚举都是值类型
    // 默认情况下，值类型属性不能被自身的实例方法修改。
    // 如果想要修改需要 异变, 即: 在方法前面添加 mutating 关键字
    mutating func study(book: String) -> Void {
        self.book = book
        print("study: \(book)")
    }
    
    func doGoodPeoplebehaviour() {
        print("do good people hehaviour")
    }
    
    func doGoodStudentBehiaviour() {
        print("watch words")
    }
}


// 结构体增加 扩展
extension Student {
    func exam() {
        print("\(name) exam")
    }
}


// 创建结构体实例
var stu = Student.init(name: "Jo", age: 28, gender: .male("男"))
// 结构体实例调用协议方法
stu.doGoodStudentBehiaviour()
// 结构体实例调用扩展的方法
stu.exam()
// 使用结构体属性
print(stu.name)







