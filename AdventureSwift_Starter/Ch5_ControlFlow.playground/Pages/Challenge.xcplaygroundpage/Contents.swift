/*:
 # Chapter Challenge: Game Conditions
 ---
 ### Tasks
 1. Create an optional called **currentWeapon** and assign it a string value
 2. Use optional binding to access **currentWeapon**
 3. Creat a variable called **currentEXP** and assign it an integer value
 4. Use a `switch` statement with **currentEXP** to evaluate different cases
 5. Create a dictionary called **playerLevels** and assign it some key-value pairs of type string and integer
 6. Use a `for-in` loop to iterate over **playerLevels** and print out its key-value pairs in an interpolated string
 7. Add a guard statement inside the `for-in` loop to mamke sure each player is at least level 1 to proceed
 */
// 1
var currentWeapon: String? = "Sword"
// 2
if let item = currentWeapon {
    print("You found a \(item)")
} else {
    print("Sorry, no weapon found")
}
// 3
var currentEXP = 8
// 4
switch currentEXP {
case 1:
    print("It is 1")
case 2...5:
    print("Between 2 and 5")
case 6..<9:
    print("Between 6 and 8")
default:
    print("IDK")
}
// 5
var playerLevels : Dictionary = ["Romell":0, "Jay":0, "Eshe":25]
// 6
for (player, level) in playerLevels {
    
    // 7
    guard level > 0 else {
        print("Level too low \(player)!")
        continue
    }
    
    print("Player = \(player) is at level = \(level)")
}

//: [Previous Topic](@previous)
