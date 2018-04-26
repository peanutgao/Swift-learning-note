//: [Previous](@previous)
//: [Next](@next)

import Foundation

/*:
 ### subscipt
 * 下标的作用是给 枚举 / 结构体 / 类 添加通过下标的方式快速取值,
 比如字典通过key下标来取值赋值, 数组通过索引下标取值, 用下标的目的就是为了更方便的操作
 比如:
 * 一个Person类有 name属性, 可以用点语法取值, 也通过一个下标快速取值
 
 
 ### 语法:
 ```
 subscript(形参1: 类型1, 形参2: 类型2) {
     get{
        //----
     }
     set{
        //----
     }
  }
 ```
 */
class Person {
    var name: String?
    var age: Int = 0
    
    subscript(name: String) -> String? {
        get{
            return self.name
        }
        set{
            self.name = newValue
        }
    }
}


let p = Person()
p.name = "张三"

print(p["name"]!)    // 通过p["name"] 取值 赋值, 类似字典一样
p["name"] = "李四"
print(p["name"]!)
