//: [Previous](@previous)
//: [Next](@next)

import Foundation

/*:
 ## 一. 定义:
 
 ```
 class 类名: 父类, 遵守的协议 {
    // ...
 }
 ```
 */

//: ## 二. 使用
// Swift现在只有类的协议可以用 optional
@objc protocol CarryProtocol {
    @objc optional func carrypassengers(name: String)
}

class Car {
    var color: String = ""
    private var country: String = ""
    
    
    func run() {
        print("run")
    }
    
    // Return from initializer without initializing all stored properties
    // 默认初始化构造器
    init(color: String) {
        self.color = color
    }
    
    // convenience 增加初始化构造器
    convenience init(color: String, country: String) {
        self.init(color: color)
        
        self.country = country;
    }
}

let car = Car(color: "red")

