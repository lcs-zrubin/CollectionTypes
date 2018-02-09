/*:
 [Previous](@previous)
 
 # Example
 
 Let's look at how we could use an array of `Double` values.
 
 */

import Foundation

// Create an empty array of `Double` values
var temperatures : [Double] = []

/*:
 Notice that there are no values in the array yet:
 */
print("There are \(temperatures.count) values in the array right now.")

/*:
 Let's add five random temperatures.
 */
for _ in 1...5 {
    temperatures.append(Double(arc4random_uniform(20)))
}
print("There are \(temperatures.count) values in the array right now.")

/*:
 Using loops, variables, and conditional statements, we can perform all sorts of useful tasks with arrays.
 
 Let's find the lowest temperature.
 */
var lowest = 21.0         // Keeps track of the lowest value found so far

// Inspect each temperature one by one
for temperature in temperatures {
    
    // Is this temperature less than the lowest so far?
    if temperature < lowest {
        lowest = temperature // If so, replace the lowest so far with this temperature
    }
}

// The lowest temperature is...
print("The lowest temperature is \(lowest) degrees Celsius.")
//: [Next](@next)

