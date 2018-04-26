//: [Previous](@previous)

import Foundation

/*:
 # 声明
 
 ## 一. typealias别名声明
 ```
 typealias 别名 = 已有类型
 ```
 
 ## 二. 函数声明
 
* **一般格式**
 ```
 func 函数名(形参) -> 返回值类型 {
    实现
 }
 ```
 
 * **如果没有返回值**
 
 ```
 func 函数名(形参) {
    实现
 }
 ```
 
 
 ## 三. 属性声明
 ```
 var 属性名: 类型 {
    get {
 
    }
    set {
 
    }
 }
 ```
 
 
 
 ## 四. 枚举声明
* 1. 一般格式
 ```
 enum 枚举名 {
     case 情况1
     case 情况2
 }
 ```
 
 * 2. 有原始值(rawValue)
 ```
 enum 枚举名: rawValue类型 {
    case 情况1 = rawValue1
    case 情况2 = rawValue2
 }
 ```
 
 * 3. D 会根据前面 自增
 ```
 num ExampleEnum: Int {
    case A, B, C = 5, D
 }
 ```
 
 
 ## 五. 结构体声明
 ```
 struct 结构体名: 遵守的协议 {
 
 }
 ```
 
 
 ## 六. 类声明
 ```
 class 类名: 父类, 协议 {
 
 }
 ```
 
 
 ## 七. 协议声明
 协议类型可以从很多其它协议那继承
 ```
 protocol 协议名: 继承的协议 {
 
 }
 ```
 
 
 ## 八. 构造器声明
 - Note: 构造器使用关键字Init来声明

  结构体，枚举，类可以有任意数量的构造器
 
 
 * 1. 一般格式
 ```
 init(参数) {
 
 }
 ```
 
 * 2. 遍历构造器
 ```
 convenience init(参数) {
    self.init()
    ...
 }
 ```
 
 
 ## 九. 析构声明
 ```
 deinit {
 
 }
 ```
 
 ## 十. 分类
 ```
 extension 要扩展的类: 遵守的协议 {
    // 构造器
     convenience init(参数) {
        self.init()
     }
 }
 ```
 */
