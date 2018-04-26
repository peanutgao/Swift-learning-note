//: [Previous](@previous)
//: [Next](@next)

/*:
 ## 一. 格式
 
 ```
 // 定义
 enum 枚举名: 枚举类型  {
 
 }
 
 // 使用
 枚举名.枚举值
 
 ```
 * Swift 中的枚举不象 C 和 Objective C 分配其成员的默认值
 * 如果没有设置 枚举的类型, 则不能使用初始值, 切不能使用 rawValue
 */

//: ## 二. 使用
//: ### 1. 一般使用
// 1. 定义
enum Gender {
    case Male
    case Female
    case Other
}

// 2. 赋值
var gender = Gender.Male    // 枚举名.枚举值

// 3.
switch gender {
case .Male:
    print("男")
case .Female:
    print("女")
default:
    print("其他")
}


//: ### 2. 关联值
enum GenderType {
    case male(String)
    case female(String)
    case other(String)
}

var genderType = GenderType.male("男")

switch genderType {
case .male(let name):
    print(name)
case .female(let name):
    print(name)
case .other(let name):
    print(name)
}


//: ### 3. 原始值
// 如果没有设置 枚举的类型, 则不能使用原始值, 切不能使用 rawValue
enum GenderType01: Int {
    case Male = 1
    case Female
    case Other
}

// rawValue的本质是一个名为RawRepresentable的protocol
var gender01 = GenderType01(rawValue:1)







