//: [Previous](@previous)
//: [Next](@next)

import Foundation
import UIKit



class Student {
    var name: String?
    var idCard: String?
    
    
    // 添加对象方法
    func study() -> Void {
        print("Studing")
    }
    
    
    
    
    // 类方法
    // 返回当前对象, 类似 OC的instancetype
    class func createStudentInfo(name: String, idCard: String) -> Self {
        let m = self.init()
        m.name = name
        m.idCard = idCard
        return m
    }
    
    
    
    // Swift中没有类构造方法和对象构造方法之分
    // 都是统一 init() 方法了
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}

var s = Student(name: "lisi")


var stu = Student.createStudentInfo(name: "zhangsan", idCard: "123456")
print(stu.name!)
print(stu.idCard!)
