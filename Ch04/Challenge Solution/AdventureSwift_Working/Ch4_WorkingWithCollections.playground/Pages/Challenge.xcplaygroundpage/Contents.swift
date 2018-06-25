/*:
 # Chapter Challenge -> Merchant Shop
 ---
 ### Tasks
 1. Create an array called **shopItemsArray** and fill it with a few strings, then create a dictionary called **shopItemsDictionary** with keys that match your array items, with prices for their values
 2. Use the `contains` method to check if **shopItemsArray** has the item you want (make it an item that is not in the array)
 3. Use the `insert` method to add the missing item to **shopItemsArray** at an index you choose
 4. Create a new variable called **selectedItem** and assign it an item from **shopItemsArray** by using subscript syntax.
 5. Create another variable called **selectedItemPrice** and use **selectedItem** and subscript syntax to access its value from **shopItemsDictionary**
 6. Create a set called **fullArmorSet** and assign it a few string values, then create a second set called **currentArmorSet** and assign it some, but not all, of the same values as **fullArmorSet**
 7. Use the `subtract` method to find out which items **currentArmorSet** is missing for a complete set
 8. Create a tuple called **armorPieceTuple** and assign it named variables for *name*, *cost*, and *canEquip*, all with initial values. Then access the canEquip value with dot notation.
 */
// 1
var shopItemsArray = ["Stone Shield", "Bronze Hammer", "Gold Helm"]
var shopItemsDictionary = ["Stone Shield": 15, "Bronze Hammer": 25, "Gold Helm": 35, "Diamond Longsword": 1000]

// 2
shopItemsArray.contains("Diamond Longsword")

// 3
shopItemsArray.insert("Diamond Longsword", at: 2)

// 4
var selectedItem = shopItemsArray[2]

// 5
var selectedItemPrice = shopItemsDictionary[selectedItem]

// 6
var fullArmorSet: Set = ["Diamond Helm", "Diamond Armor", "Diamond Greaves", "Diamond Bracers"]
var currentArmorSet: Set = ["Diamond Helm", "Diamond Bracers"]

// 7
fullArmorSet.subtract(currentArmorSet)

// 8
var armorPieceTuple = (name: "Diamond Bracers", cost: 55, canEquip: true)
armorPieceTuple.canEquip
//: [Previous Topic](@previous)
