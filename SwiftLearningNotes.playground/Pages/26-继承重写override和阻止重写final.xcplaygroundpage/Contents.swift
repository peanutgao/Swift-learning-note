//: [Previous](@previous)
//: [Next](@next)

import Foundation

/*:
 - note: **override**
 
 override可以用来重新子类的属性/方法
 * 存储型属性不能被重写, 但是可以重写它的 getter 和 setter ,以及属性观测器
 * 计算型属性可以被重写
 * 实例方法和类方法都可以被重写
 
 - note: **final**
 
 final关键字可以阻止重写属性/方法/下标
 final var ， final func ， final class func ， final subscript
 
 */
class People {
    // 存储型属性不能被重写, 但是可以重写它的 getter 和 setter
    // 也可以重写属性观测器
    var name: String?
    // 添加 final关键字, 不允许子类重写
    final var age: Int = 0
    
    // 计算型属性可以被重写
    var word: String {
        return self.speak()
    }
    
    func speak() -> String {
        print("说话")
        return "Hello"
    }
    
    // 添加 final 关键字, 不让重新方法
    final func walk() {
        print("走路")
    }
}


// 继承
class Student: People {
    // 修改存储型属性的getter 和 setter
    override var name: String? {
        get{
            return "xxx"
        }
        set{
            
        }
    }
    
    // 不能重写存储型属性,只能重写计算型属性
    // Cannot override with a stored property '
    // override var name: String?
    override var word: String {
        // super.获得父类的计算型属性值
        return super.word + "student"
    }
    
    // 重写父类方法
    override func speak() -> String {
        print("学生说话")
        return "World"
    }
}
