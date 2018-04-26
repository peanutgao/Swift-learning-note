//: [Previous](@previous)

import Foundation

/**
 每个枚举定义了一个全新的类型。
 像 Swift 中其他类型一样，它们的名字必须以一个大写字母开头
 */
// ====> 定义

// 定义枚举方式1:
enum NumberType {
    case One
    case Two
    case Three
    case Four
    case Five
    case Six
    case Seven
    case Eight
    case Nine
    case Ten
}

// 定义枚举方式2:
enum CharacterType {
    case A, B, C, D, E, F, G
}


// 枚举原始值
// 原始值可以是字符串，字符，或者任何整型值或浮点型值。
// 每个原始值在它的枚举声明中必须是唯一的。当整型值被用于原始值，如果其他枚举成员没有值时，它们会自动递增
enum Planet: String {
    case Mercury = "水星"
    case Venus = "金星"
    case Earth = "地球"
    case Mars = "火星"
}

let aPlanet = Planet.Venus
// 通过枚举的 rawValue 属性可以获得枚举值的原始值是什么
print("rawValue: \(aPlanet.rawValue)")



// 值绑定(value binding)。
// case 分支的模式允许将匹配的值绑定到一个临时的常量或变量，这些常量或变量在该 case 分支里就可以被引用了
// 理解: 设置枚举的时候添加与之相关参数值, 这样可以简化传值
enum LocationType {
    case Coordinate(Double, Double)
    case Name(String)
}

var loc = LocationType.Coordinate(100.0, 111.2)

// switch有添加相关值的枚举时, case 要用成 case let`;
switch loc {
case let .Coordinate(lon, lat):
    print("\(lon) : \(lat)")
case let .Name(cityName):
    print(cityName)
}



let point = (2, 0)  // 元祖
switch point {
case (let x, 0):
    print("在x轴上: x:\(x)")
case (0, let y):
    print("在y轴上: y:\(y)")
case let (x, y):
    print("x:\(x), y:\(y)")
}


/**
 switch语句中,在使用值绑定时,可以通过在case语句中用 where 来做额外的判断
 */
let aPoint = (1, -1)

switch aPoint {
case let (x, y) where x == y:
    print("x\(x) == y\(y)")
case let (x, y) where x == -y:
    print("x\(x) == -y\(y)")
case let (x, y):
    print("x:\(x), y:\(y)")
}




/**
 Swift 中是switch里面没有break, 默认有break效果,
 fallthrough 穿透效果: 执行继续往下调用
 */
let value = NumberType.Three

switch value {
case .One:
    print("one")
case .Two:
    print("two")
case .Three:
    fallthrough
case .Four:
    print("3 - 4")
default:
    print("other")
}



/**
 同时支持多种情况
 */
switch value {
case .One,
     .Two,
     .Three:    // 和C的switch语句类似,同时支持多种情况, 用 逗号, 分割
    print("同时")
default:
    print("other")
}











