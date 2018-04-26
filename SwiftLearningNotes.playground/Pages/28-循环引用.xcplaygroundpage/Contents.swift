//: [Previous](@previous)
//: [Next](@next)

import Foundation

/*:
 
 * 解决循环引用方法:
    * unowned
    * weak
    属性可以添加 weak 关键字
 unowned 无主引用, 和weak类似, 无主引用是非可选类型, ARC 无法在实例被释放后将无主引用设为 nil ，因为非可选类型的变量不允许被赋值为 nil
 
 #### unowned
 unowned 设置以后即使它原来引用的内容已经被释放了，它仍然会保持对被已经释放了的对象的一个 "无效的" 引用，它不能是 Optional 值，也不会被指向 nil。如果你尝试调用这个引用的方法或者访问成员属性的话，程序就会崩溃
 
 #### weak
 weak在引用的内容被释放后，标记为 weak 的成员将会自动地变成 nil ,因此被标记为 weak 的变量一定需要是 Optional 值
 
 > Apple 给我们的建议是如果能够确定在访问时不会已被释放的话，尽量使用 unowned，如果存在被释放的可能，那就选择用 weak
 > delegate, 属性 一般用 waak
 > 闭包里面一般用 unowned
 
 
 闭包:
 用 [unowned self] 解决闭包中self的循环引用
 ```
 lazy var asHTML: () -> String = {
     [unowned self] in
     if let text = self.text {
        return "<\(self.name)>\(text)</\(self.name)>"
     } else {
        return "<\(self.name) />"
     }
  }
 
 
 // 如果有多个需要被备注的话就用 [,]
 lazy var someClosure: () -> String = {
    [unowned self, weak delegate = self.delegate!] in
    // closure body goes here
 }
 ```
 */

// 人
class Person {
    let name: String
    var dog: Dog?    // 有宠物狗
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Person deinit")
    }
}

// 狗
class Dog {
    let name: String
    
    // 添加 weak 关键字解决循环引用
    weak var master: Person?  // 狗的主人
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Dog deinit")
    }
}



var zhou = Person(name: "zhou9527")
var pet = Dog(name: "旺财")

zhou.dog = pet  // 周的狗是pet, 周拥有pet
pet.master = zhou   // 狗主人是周, 狗持有周




