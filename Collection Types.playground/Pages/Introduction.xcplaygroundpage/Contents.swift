/*:
 # Introduction
 
 NOTE: If you need subtitles (don't have headphones) you can [watch this video on YouTube](https://youtu.be/e8YqxP6Lw8M).

 ![What are collection types? Why are they useful?](http://russellgordon.ca/lcs/ics3u/videos/introduction-to-collection-types.mov poster="poster.png"  width="622" height="379")
 
 So far, we have used single-instance variables and constants:
 
    var dogName = "Ginny"
 
 Or:
 
    var grade = 72.0
 
 What if you wanted to track all the dogs on campus at LCS?
 
 Or write a program to calculate an average of your grades?
 
 Single-instance variables would be unwieldy:
 
    var grade = 72.0
    var grade2 = 98.3
    var grade3 = 85.3
    let average = (grade + grade2 + grade3) / 3.0
 
 Gross. This is way too manual. There has to be a better way, and there is.
 
 [Next](@next)
 
 */

//: NOTE: Parts of this multi-page playground are adapted from [The Swift Programming Language Guide - Collection Types](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html).
