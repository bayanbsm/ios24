import Cocoa

//Step 1:
var firstName = "Symbat", lastName = "Bayanbayeva"
var age: Int = 19, birthYear: Int = 2005
var isStudent: Bool = true
var height: Double = 1.70
var currentYear: Int = 2024
//Bonus challenge
var myAge: Int = currentYear - birthYear

//Step 2:
var hobbies: String = "crocheting, reading, baking, equestrianism"
var numberOfHobbies: Int = 4, favoriteNumber = 12
var isHobbyCreative: Bool = true

//Step 3:
var lifeStory: String = "Hello, my name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). I am a \(isStudent ? "student" : "non-student"). I am interested in \(hobbies), which I think are pretty much \(isHobbyCreative ? "creative" : "not creative") hobbies. I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber). "

//Step 4:
print(lifeStory)

//Bonus Task
var futureGoals: String = "become a Data Analysist, get a Masters Degree in US, travel to "
var favoriteEmoji = "😵"
let 🌍 = "Europe"
lifeStory += "I hope to \(futureGoals)\(🌍) in the future. \(favoriteEmoji)"
print(lifeStory)


