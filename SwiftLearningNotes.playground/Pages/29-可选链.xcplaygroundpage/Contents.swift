//: [Previous](@previous)
//: [Next](@next)

import Foundation

/*:
 可选链:
 */

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
}


class Pet {
    var favouriteFood: Food?
    init(favouriteFood: Food?) {
        self.favouriteFood = favouriteFood
    }
}


class Person {
    var dog: Pet?
}

let p = Person()
p.dog = Pet(favouriteFood: Food(name: "骨头"))
// 直接使用 p.dog.favouriteFood.name 方式无法获得值,因为 dog favouriteFood都是可选值, 如果其中一个是nil就会导致错误
// 下面就是可选链, 其中给一个是nil就返回nil, 不需要一个个判断
if let foodName = p.dog?.favouriteFood?.name {
    print(foodName)
} else {
    print("没有喜欢的食物")
}
