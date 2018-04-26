//: [Previous](@previous)
//: [Next](@next)

import Foundation

/*:
 # extension
 ## 一. 格式:
 ```
 extension 扩展的类: 遵守的协议 {
 
 }
 ```
 
 - example:
 ```
 extension String: MyProtocol {
 
 }
 ```
 */

/*:
- note:
 扩展中可以给类添加 **计算型**属性
 扩展可以添加初始化器,但是不能添加反初始化器
 如果是给结构体和枚举等值类型添加扩展,里面添加实例方法时需要异变
 扩展中可以添加subscipt下标
 */


extension String {
    // 不可以添加存储型属性
    // extensions must not contain stored properties
    // var aName: String?
    
    // 可以添加计算型属性
    var bName: String? {
        get{
            return bName
        }
        set {
            bName = newValue
        }
    }
    
    func doSomething() {
        print("do something")
    }
    
}


//: 值类型的扩展中添加方法需要添加 mutating 异变函数
extension Int {
    // 值类型的扩展中添加方法需要添加 mutating 异变函数
    mutating func square(){
        self = self * self
    }
}







