//: [Previous](@previous)

import UIKit

/*
 Swift同一使用 for-in 循环的方式, Swift 3 取消了C语言的循环方式
 1...5 表示 1到5 5个值
 1..<5 表示 1到5,不包含5, 共4个值
 */
for i in 1...5 {
    print(i)
}


// 如果不要循环里面的值, 可以用下横线 _ 来忽略
for _ in 1..<5 {
    print("hello world")
}



// ===> 数组遍历
let arr = ["A", "B", "C"]

// 不带索引
for value in arr {
    print(value)
}

// 不带索引
for (idx, value) in arr.enumerated() {
    print("\(idx) : \(value)")
}


// ===> 字典遍历
var dict = [String: Any]()
dict["name"] = "Joseph"
dict["age"] = 30
dict["gender"] = "male"


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
