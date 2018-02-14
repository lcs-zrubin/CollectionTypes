/*:
 [Previous](@previous)
 
 # Exercise Two
 
 A restaurant asks diners to rate their dining experience on a scale of 1 to 100, where 1 is "very bad", and 100 is "perfection".
 
 1. Create an empty mutable array of type `Double` named `restaurantRatings`:
 
 */

import Foundation
var restaurantRatings: [Double] = []
/*:
 2. Now populate the array with twenty random ratings between 1 and 100.
 */


for _ in 1...20 {
    restaurantRatings.append(Double(arc4random_uniform(99)+1))
}

/*:
 3. Determine the average rating. Remember, calculate an average by finding the sum of all the values, then dividing by the number of values.
 */
var totalRatings = 0.0
for rating in restaurantRatings {
    totalRatings += rating
}
totalRatings /= Double(restaurantRatings.count)
print(totalRatings)
/*:
 4. The restaurant is most concerned with how many diners considered their meal to be less than satisfactory. Calculate the percentage of diners who gave the restaurant a rating less than 80.
 */

var peopleWhomstHate = 0.0
for rating in restaurantRatings {
    if rating <= 80.0{
        peopleWhomstHate += 1.0
    }
}
var percentageThatHate = (peopleWhomstHate / Double(restaurantRatings.count))*100
/*:
 5. The manager wants more detail. Prepare a report that indicates how many diners found the restuarant "Very Bad" (0 to 25), "Bad" (25 to 49), "Fair" (50 to 79), "Satisfactory" (80 to 89), and "Stellar" (90 to 100).
 */
var peopleVeryBad = 0.0
var peopleBad = 0.0
var peopleFair = 0.0
var peopleSatisfactory = 0.0
var peopleStellar = 0.0

for rating in restaurantRatings {
    if rating >= 0 && rating <= 25 {
        peopleVeryBad += 1.0
    } else if rating >= 26 && rating <= 49 {
        peopleBad += 1.0
    } else if rating >= 50 && rating <= 79 {
        peopleFair += 1.0
    } else if rating >= 80 && rating <= 89 {
        peopleSatisfactory += 1.0
    } else if rating >= 90 && rating <= 100 {
        peopleStellar += 1.0
    }
}

print("The number of people who rated a Very Bad were \(peopleVeryBad)" )
print("The number of people who rated a Bad were \(peopleBad)" )
print("The number of people who rated a Fair were \(peopleFair)" )
print("The number of people who rated a Satisfactory were \(peopleSatisfactory)" )
print("The number of people who rated a Stellar were \(peopleStellar)" )
