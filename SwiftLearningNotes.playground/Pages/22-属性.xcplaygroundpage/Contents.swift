//: [Previous](@previous)
//: [Next](@next)
import Foundation
import UIKit

/*:
 - note:
 1. 所有的非可选类型的存储型属性必须要初始化,
 */
class Student {
    // 1. 存储属性
    // 注意:如果创建了一个结构体常量, 即使结构体里面的属性是变量, 也不能给这个结构体的属性赋值
    var name: String = ""
    
    
    
    
    // 2. 计算属性
    // 计算属性不存储值, 只用于计算
    // 计算型属性一定是 var
    var readedBooks = [String]()
    // resentReadBook其实不存值, 它的getter和setter都是依赖其他的属性
    var resentReadBook: String {
        get {
            return readedBooks.last!
        }
        set {
            if readedBooks.last != newValue {
                readedBooks.append(newValue)
            }
        }
    }
    
    // 属性的getter 和setter
    private var age: Int {
        get {
            return self.age <= 0 ? 1 : self.age
        }
        // Variable with a setter must also have a getter
        set {
            // 默认有个 newValue 属性
            print(newValue)
        }
    }
    
    
    
    
    // 3. 只读属性
    // 只设置getter的属性就是只读属性
    // 可以省略get, 直接返回值
    var idCard: String {
        return "123456"
    }
    
    var studentCard: String  {
        get {
            return "666666"
        }
    }
    
    
    
    
    // 4. 懒加载
    // 懒加载因为是可变的, 所以必须是var
    // 定义一个懒加载的字符数组
    lazy var friends = [String]()
  
    // 闭包方式定义一个懒加载变量
    lazy var avatar: UIImage = {
       let size = CGSize(width: 100, height: 100)
        return UIImage(named: "xxx")!
    }()
    
    
    
    
    // 5. 属性观察者
    private var country: String = "" {
        // DidSet variable must not also have a set specifier
        // 如果写了 willSet 就不能再写 set
        willSet {
            print("value: \(country), oldValue: \(newValue)")
        }
        didSet {
            print("newValue: \(country), oldValue: \(oldValue)")
        }
    }
    
   
}
