//: [Previous](@previous)
//: [Next](@next)

import Foundation

/*:
 ## 一. 定义:
 
 * 结构体和类一定要有初始化构造器
 * 指定初始化器是类的主要初始化器。指定的初始化器可以初始化所有那个类引用的属性并且调用合适的父类初始化器来继续这个初始化过程给父类链。
 * 如果不是可选类型, 变量和常量都需要初始化, 这个初始化可以是在构造器中初始化, 或者是在声明的时候初始化
 * Swift 初始化器不返回值
 * Swift 的子类不会默认继承父类的初始化器
 
 * 指定初始化器必须总是向上委托。
 * 便捷初始化器必须总是横向委托。
 */

// Swift中没有类构造方法和对象构造方法之分
// 都是统一 init() 方法了
class Person {
    var name: String?
    var age = 0 // 声明的时候初始化
    var idCard: String?
    var language: String = "Chinese"
    
    // 1. 没有参数的初始化构造器
    init() {
        name = ""
    }
    

    // 如果构造器中有添加 required 修饰符,表示该子类必须得重新实现这个构造器
    required init(_ name: String) {
        self.name = name    // Swift 初始化器不返回值
    }
    
    
    // convenience: 方便
    // 构造器中有调用该类中其他的初始化器，该构造器就是 便捷构造器
    // 便捷构造器要用 convenience 修饰
    //
    // 便捷构造器必须先调用其他的初始化器之后，再赋类的存储属性值。
    // 如果重载了父类的`指定初始化器`，则必须使用override修饰符。
    // 在Extensions中只能添加`便捷初始化器`。
    convenience init(name: String, age: Int) {
        self.init(name) // 调用 init(name) 构造器, 要用 convenience
        self.age = age
    }
    
    convenience init(name: String, age: Int, idCard: String?) {
        self.init() // 直接使用主构造器
        
        self.name = name
        self.age = age
        self.idCard = idCard
    }
    
    // init后面加个问号? 表示改构造器是可失败的, 可能创建的值是nil
    // 和OC不一样, 不能后用return nil
    init?(language: String?) {
        if language == nil {
            return nil
        }
        self.language = language!
    }
}



// Swift 的子类不会默认继承父类的初始化器
class Student: Person {
    var grade: String?
    var book: String?
    
    
    override init() {
        super.init()
    }
    
    init(name: String, age: Int, idCard: String?, grade: String?) {
        // "指定初始化器必须先向上委托父类初始化器，然后才能为继承的属性设置新值。如果不这样做，指定初始化器赋予的新值将被父类中的初始化器所覆盖。"
        // 意思是: 指定初始化构造器必须先初始化完成父类的构造器,才能初始化本类的属性
        // 子类初始化构造器要调用 super.init()
        super.init()

        self.name = name
        self.age = age
        self.idCard = idCard
    }
    
    
    convenience init(name: String,
                     age: Int,
                     idCard: String?,
                     grade: String?,
                     book: String?) {
        // "便捷初始化器必须先委托同类中的其它初始化器，然后再为任意属性赋新值（包括同类里定义的属性）。如果没这么做，便捷构初始化器赋予的新值将被自己类中其它指定初始化器所覆盖。"
        // 意思是: 便捷初始化构造器要先调用本类其他的构造器, 完成部分属性的初始化, 然后再初始化其他属性
        self.init(name: name, age: age, idCard: idCard, grade: grade)
        
        self.book = book;
    }
    
    // 这个构造器在父类被 required 修饰了, 所以必须要重新在实现
    // 被 required 修改后重写不需要再加上 override 关键字
    required init(_ name: String) {
        super.init(name)
    }
    
}



