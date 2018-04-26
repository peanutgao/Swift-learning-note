//: [Previous](@previous)

import Foundation

/*
if 语句中条件没有小括号
 */

let i = 8
if i < 5 {
    print("小于5")
} else if (i >= 5 && i <= 10) {
    print("5-10")
} else {
    print("大于10")
}
