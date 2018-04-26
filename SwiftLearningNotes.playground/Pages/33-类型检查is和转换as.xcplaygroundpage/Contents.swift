//: [Previous](@previous)
//: [Next](@next)

import Foundation


class People {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Student: People {
    
}

class Dog {
    
}




let dog = Dog()
let stu = Student(name: "张三")

//: #### is 判断是否是某个类或是该类的子类
if stu is Student {
    print("stu 是 Student 类型")
}

if stu is People {
    print("s 是 People 的子类")
}


/*:
 #### as? as! 类型转换
 * as? 返回的是可选类型, 转换失败会是nil
 * as! 在确定类型的情况下用, 否则转换不成功时会crash
 
 let d = dog as! People // 会导致闪退
 */

if let s = stu as? People {
    print(s.name)
}
if stu as? People != nil {
    print(stu.name)
}

