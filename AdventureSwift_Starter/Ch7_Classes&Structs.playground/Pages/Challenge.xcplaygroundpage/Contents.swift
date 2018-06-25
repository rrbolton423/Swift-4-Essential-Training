/*:
 # Chapter Challenge: Item Class
 ---
 
 ### Tasks
 1. Create a class called **Item**
 2. Add instance properties for **name** and **value**
 3. Write a designated initializer
 4. Write a convenience initializer
 5. Create an enum called **ItemType** and assign it a few cases
 6. Declare a new class called **HealingPotion** as a subclass of **Item**
 7. Give **HealingPotion** instance properties for **itemType** (use your ItemType enum for its type) and **hpEffect** of type Int
 8. Write a designated initializer and call the super classes designated initializer
 9. Write a simple function called **useMe** that prints out the **HealingPotion**'s hpEffect
 
 10.Create an instance of **HealingPotion** and play around with it
 */
// 1
class Item {
    
    // 2
    var name: String = ""
    var value: Int
    
    // 3
    init(name: String, value: Int) {
        self.name = name
        self.value = value
    }
    
    // 4
    convenience init(name: String) {
        self.init(name: name, value: 100)
    }
    
    // 5
    enum ItemType {
        case Healing, Offensive, Defensive
    }
}
    
    // 6
    class HealingPotion: Item {
        
        // 7
        var hpEffect: Int
        var itemType: ItemType = .Healing
        
        // 8
        init(name: String, value: Int, hpEffect: Int) {
            self.hpEffect = hpEffect
            super.init(name: name, value: value)
        }
        
        // 9
        func useMe() {
            print("HP Effect: \(hpEffect)")
        }
}

// 10
var potion = HealingPotion(name: "Formula", value: 50, hpEffect: 25)

print("\(potion.hpEffect) \(potion.itemType) \(potion.useMe()) \(potion.name) \(potion.value)")

//: [Previous Topic](@previous)

