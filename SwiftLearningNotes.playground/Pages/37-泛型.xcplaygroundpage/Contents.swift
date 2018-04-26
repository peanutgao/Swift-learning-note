//: [Previous](@previous)
//: [Next](@next)

import Foundation

// 一般函数
func anormalFunction(n: Int, m: Int) {
    print("hello world")
}

// 泛型函数
// <T> 定义了泛型类型T, T 可以用其他任何字母代替,一般按惯例用单个字母命名
// 尖括号告诉Swift， T 是一个函数定义里的占位符类型名。因为 T 是一个占位符，Swift 不会查找真的叫 T 的类型。
func bnormalFunction<T>(n: T, m: T) {
    print("hello world")
}
