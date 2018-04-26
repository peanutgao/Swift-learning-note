//: [Previous](@previous)

import UIKit


/*:
- Note: 在Swift中NSFoundation框架都不再有 NS 前缀了,
 
  **Swift 的String类型是值类型**
 
  如果创建了一个新的字符串，那么当其进行常量、变量赋值操作或在函数/方法中传递时，会进行值拷贝。
 
  任何情况下，都会对已有字符串值创建新副本，并对该新副本进行传递或赋值操作
 */

//: ## 一. 定义
let str1 = "let定义不可变字符串"
var str = "var定义可变字符串"



//: ## 二. 操作
//: ### 1. 拼接
str = "Hello"
let aStr = "World"

str.append(aStr)        // append() 函数 拼接字符串
str = "Hello" + aStr    // 直接用 + 号 拼接字符串


//: ### 2. 插入字符串
var i = str.index(of: "o")
str.insert("-", at: i!)


//: ### 3. 删除
i = str.index(of: "-")
str.remove(at: i!)  // remove等函数入参是 String.Index 类型的值
print(str)


//: ### 4. 遍历
for c in str {
    print(c)
}

/*:
 
 - Note: C语言方式的for循环Swift3开始被废弃了
 
for var i = 0; i < str.count; i++ {
    print(i)
}
*/

//: ### 5. 比较是否相等
if str == "HelloWorld" {
    print("字符串相等")
} else {
    print("字符串不相等")
}


//: ### 6. hasPrefix() 函数检查是否以某个字符串开头
if str.hasPrefix("Hello") {
    print("以 Hello 开头")
}

//: ### 7. hasSuffix() 函数检查是否以某个字符串结尾
if str.hasSuffix("World") {
    print("以 World 结尾")
}



//: ### 8. 检查是否为空
if str.isEmpty {
    print("字符串为空")
} else {
    print("字符串不为空")
}


//: ### 9. 大小写转换
str.uppercased()    // 转大写
str.lowercased()    // 转小写




//: ### 10. 编码转换
let utf8Str = str.utf8  // 转utf8编码
let UnicodeStr = str.unicodeScalars


/*:
- Note:
  Swift3 新增的 addingPercentEncoding 方法实现了编码的功能，也就是将指定的字符集使用“%”代替
 
  removingPercentEncoding 函数对url编码解码
 */
let urlStr  = "http://www.google.com/search?q=你好世界"
let urlEnCoded = urlStr.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) // 字符串转成url编码
print(urlEnCoded)

let urlDecoded = urlEnCoded?.removingPercentEncoding   // url编码字符串解码
print(urlDecoded)





/*:
 isEmpty 返回一个布尔值，确定该字符串是否为空
 
 hasPrefix(prefix: String) 函数检查给定的参数字符串是否以 string 为前缀
 
 hasSuffix(suffix: String) 函数检查给定的参数字符串是否以 string 为后缀
 
 toInt() 函数将数字字符串值转换成整数
 
 count() 全局函数用来计算字符串中的字符数
 
 utf8 属性返回一个字符串的 UTF-8 表示
 
 utf16 属性返回一个字符串的 UTF-16 表示
 
 unicodeScalars 属性返回一个字符串的 Unicode 标表示
 
 \+ 运算符用来连接两个字符串，或者一个字符串和一个字符或两个字符
 
 += 操作符要追加一个字符串或字符到一个现有的字符串
 
 == 操作符以确定两个字符串是否相等
 
 < 操作符进行逐一比较，计算以确定一个字符串是否为小于另一个
 
 == 操作符以确定两个字符串是否相等
 */








