
//: 定义字符
let char: Character = "A"   // 定义一个字符为 A 的变量

//: **不能创建空字符, 只能创建空字符串**
//: 拼接字符
//: 字符串拼接字符,不能用 += 运算符, 要用 append() 函数
var str = "Hello World"
str.append(char)
print(str)

//: 字符串插入字符
str = "\(char)\(str)"
print(str)


let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
