//: [Previous](@previous)

import UIKit

/*:
- Note:  Swift数组和OC有很大的区别:
 
  OC数组可以存储任意类型的`对象`, Swift必须在存储对象的时候声明相应的类型, 类型必须要声明正确, 比如定义的是存储 Int类型的数组不能存储其他类型的值

  OC数组必须是存储对象, Swift可以存储基本数据类型
 */


/*:
 ## 一. 定义:
 
  \[类型\]\(\)   \/\/ [类型] 表示某类型的数组, 小括号() 表示实例化对象
 */
let emptyArray1 = [String]() // 创建一个不可变的空数组
var emptyArray2 = [String]() // 创建一个可变的空数组

var emptyArray3 = Array(repeating: 0.0, count: 3)   // 创建使用默认值为0.0的数组

var shoppingList1: [String] = ["Eggs", "Milk"] // 使用数组字面量创建数组
var shoppingList2 = ["Eggs", "Milk"] // 使用数组字面量创建数组, 不指定数组类型, 隐式设置类型


var arrM = [Any]() // 创建一个可以存储任意值的空数组


//: ## 二. 操作:
//: ### 1. 添加值
//: #### 1.1 添加单个值
arrM.append("Hello")    // append() 函数, 在数组最尾添加元素
arrM.append("w")

//: #### 1.2 添加某个数组的所有的值
arrM += ["你好", "我的", "世界"]  // 通过加法赋值运算符 += 可以拼接某个数组的所有元素

//: #### 1.3 插入值
arrM.insert("-", at: 1) // insert() 函数, 在指定索引插入元素

//: ### 2.替换
//: #### 2.1 替换某个索引位置的值
arrM[2] = "World"   // 直接给索引位置元素赋值就可以替换值

//: #### 2.1 替换某个区间范围的值
/*:
- Note:
  3...5: 表示 3到5, 包含5

  3..<5: 表示 3到5, 不包含5
 */
arrM[3...5] = ["!"]     // 把 索引3到5的值替换成 "!", 不是每个都替换, 是一起替换掉, 可以理解成: 删除3到5区间的值, 再插入 右边的值


//: ### 3. 删除
arrM.remove(at: 1)  // remove() 函数 删除某个索引的值
arrM.removeLast()   // removeLast() 删除最后一个元素


//: ### 4. 遍历数组
//: > Swift4 苹果已经废弃了C语言的遍历方式
//: #### 4.1 不要索引
for item in arrM {
    print(item)
}


//: #### 4.2 带索引
for (idx, value) in arrM.enumerated() {         // 用数组的 enumerated() 方法遍历, 这样可以获得 索引值
    print("\(idx) : \(value)")
}


//: ### 5. 检查
//: #### 5.1 检查是否是空的
if arrM.isEmpty {
    print("数组是空的")
} else {
    print("数组有值")
}

print(arrM)



