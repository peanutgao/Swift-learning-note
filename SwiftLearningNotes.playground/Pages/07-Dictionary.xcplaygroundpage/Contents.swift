//: [Previous](@previous)

import UIKit


/**
 Swift中 数组和字典类似, 都必须要显性的设置其存储的类型
 Swift中Dict是结构体
 */

// ===> 定义:
let dict = Dictionary<String, Any>()
var dictM = [String: Any]()  // 定义一个key是String类型, value是Any类型的空字典
var userInfo: [String: String] = ["name": "Joseph", "gender": "male"]


// ====> 操作

// 添加 / 读取 / 修改
// Swift中字典 添加 / 修改 / 读取 值的语法都一样
userInfo["age"] = "30"  // 添加新值
userInfo["age"] = "18"  // 修改值, 方法一: 弊端: 如果不存在key会导致 新增key的情况

let age = userInfo["age"] // 取值, 因为取到的值可能取不到, 所以返回结果是可选值


// 修改值方法一弊端解决方法
// 判断存在后在修改
if userInfo["age"] != nil {
    userInfo["age"] = "20"
}

// 修改值方法二:
// updateValue(forKey:)方法在这个键不存在对应值的时候设置值或者在存在时更新已存在的值
// 返回值是一个可选值
let newAge = userInfo.updateValue("30", forKey: "age")
if let newAge = newAge {
    print(newAge)
}



print(userInfo)
print(age)




// 所以为了保证安全, 一般通过可选链的方式取值
if let age = userInfo["age"] {
    print(age);
} else {
    print("age is nil")
}

// 或者用  三目的方式
let value = userInfo["class"] ?? "class nil"
print(value)



// 清空字典
// 注意:清空不会改变字典的属性,原来是 [String: Any], 清空后依然是
userInfo = [:]          // 方式一
userInfo.removeAll()    // 方式二

print(userInfo)

// 判断是否为空
if dict.isEmpty {
    print("字典为空")
}




// 遍历
// 不带索引
for (k, v) in dict {
    print("\(k) : \(v)")
}


// 不带索引
// enumerated 遍历字典
// element是元祖类型, 元祖通过 key 和 value 别名取值
for (idx, element) in dict.enumerated() {
    print("idx: \(idx), key: \(element.key), value: \(element.value)")
    
}




// 遍历所有的 键
for k in userInfo.keys {
    print("k: \(k)")
}

// 遍历所有的值
for v in userInfo.values {
    print("v: \(v)")
}


