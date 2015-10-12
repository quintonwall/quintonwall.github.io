//: Basic Swift syntax playground

import UIKit


//VARIABLES
var str = "Hello, playground"
var year = 2015

year = 2017;str = "The year is"


//CONSTANTS
let dateOfBirth = 1974



let welcome : String = "Welcome"

var index1 = welcome.startIndex.advancedBy(3)
welcome.substringToIndex(index1)




//TUPLES
let http404Error = (404, "Not Found")
http404Error.1

let salesforceId : Int? = nil

print(salesforceId)



//ASSERTIONS
assert(year >= 2000, "Year must be greater than 2000")
print("hello this millenium")

//ARRAYS
//definition
var someInts = [Int]()
var shoppingList = ["Milk", "Eggs", "Cheese"]


//getting values
print(shoppingList[1])

//iterating
for item in shoppingList {
    print(item)
}

//MAPS
var prefixes: [String: String] = ["001": "Account", "005": "Users", "003" : "Contact", "00T" : "Task"]
print(prefixes["003"])












