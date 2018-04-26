//: [Previous](@previous)

import Foundation

//: [Next](@next)
/*:
 ## 一. 定义:
 
 - note: optional类型用于定义一个变量可能是nil, 注意: 一定是变量
  格式:
 
  var 变量: 变量类型?
 */
// 定义String类型的可选值变量 str
// 等同于: var str: String? = nil
var str: String?



//: ## 二. 解包
/*:
 ### 1. 强制解包
 - note: 强制解包用感叹号 !,强制解包有风险, 所以要做判断
 */
if str != nil {
    print(str!) // str! 对str强制解包
} else {
    print("str is nil")
}


/*:
 ### 2. 设置默认值解包
 - note: 当对可选值用 ?? 设置一个当可选值是nil时的默认值来解包
 */

print(str ?? "str is nil") // 当str 为nil 时输出 str is nil


/*:
### 3. 可选绑定

 > 可选绑定: 就是创建一个临时变量接受 如果可选值有值的值
 */
if let str = str {
    print(str)
} else {
    print("str is nil")
}









