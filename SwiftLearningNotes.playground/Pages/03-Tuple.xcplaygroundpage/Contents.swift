//: [Previous](@previous)


import UIKit

/*:
 ## 一. Tuple
 
 > 元祖: 将多个值组合成一个复合值类型, 元祖内的值可以是任何值, 不一定是相同类型
 
 **直接用小括号`()` 包含多个值, 这个值类型就是元祖**
 */

/*:
 ## 二. 使用
 ### 1. 定义方法

 > 直接用小括号() 包含多个值, 这个值类型就是元祖
*/
//: #### 1.1 简单定义
let http404Error = (404, "Not Found")   // (Int, String) 类型的元祖

/*:
#### 1.2 定义元祖的时候可以给值添加别名
 
 - 格式: (别名1: 值1, 别名2: 值2)
 */
let http200Status = (code: 200, message: "OK")



//: ### 2. 解析元祖
//: #### 2.1 简单解析
let (code, message) = http404Error  // 用 code 和 message 接收元祖里面的值
print("\(code) : \(message)")


/*: #### 2.2 如果在解析的过程中有值用不到, 可以用下横线_代替

 > Swift中下横线_表示忽略改值
 */
let (acode, _) = http404Error
print(acode)


//: #### 2.3 通过用下标的方式取值
let bcode = http404Error.0  // 通过数字 0 取元祖第0位值
print(bcode)


//: #### 2.4 通过元祖的别名取值
let okCode = http200Status.code
let okMsg = http200Status.message
print("\(okCode) : \(okMsg)")





