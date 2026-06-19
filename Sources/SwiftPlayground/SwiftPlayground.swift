// Canteen Ordering Program
// Allows students to order food and drinks and calculates total cost

import Foundation

// Food menu
let foodNames = ["Burger", "Sushi", "Pizza", "Garlic bread", "Pork bun", "Dumplings"]
let foodPrices = [7.0, 4.0, 5.0, 4.0, 5.0, 5.0]

// Drink menu
let drinkNames = ["Juice", "Up & Go ", "Gatorade", "Water", "Coffee", "Fruit soda drink"]
let drinkPrices = [4.0, 4.5, 6.0, 3.0, 6.0, 4.0]

var totalCost = 0.0
var orderMore = "Y"

print("Welcome to the Canteen!")

while orderMore.uppercased() == "Y" {

    print("\nDo you want to buy a food or a drink?")
    let choice = readLine()?.lowercased() ?? ""

    if choice == "food" {

        print("\nFood Menu")
        for i in 0..<foodNames.count {
            print("\(i + 1). \(foodNames[i]) - $\(foodPrices[i])")
        }

        print("Enter a number:")
        if let itemNumber = Int(readLine() ?? ""),
           itemNumber >= 1 && itemNumber <= foodNames.count {

            let index = itemNumber - 1
            print("You ordered \(foodNames[index]), it costs $\(foodPrices[index])")
            totalCost += foodPrices[index]

        } else {
            print("Invalid menu choice.")
        }

    } else if choice == "drink" {

        print("\nDrink Menu")
        for i in 0..<drinkNames.count {
            print("\(i + 1). \(drinkNames[i]) - $\(drinkPrices[i])")
        }

        print("Enter a number:")
        if let itemNumber = Int(readLine() ?? ""),
           itemNumber >= 1 && itemNumber <= drinkNames.count {

            let index = itemNumber - 1
            print("You ordered \(drinkNames[index]), it costs $\(drinkPrices[index])")
            totalCost += drinkPrices[index]

        } else {
            print("Invalid menu choice.")
        }

    } else {
        print("Please enter either food or drink.")
    }

    print("\nDo you want to order something else (Y/N)?")
    orderMore = readLine() ?? "N"
}

print("\nTotal cost is $\(String(format: "%.2f", totalCost))")
print("Thank you very much. Have a nice day!")