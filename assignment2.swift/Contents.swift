import Cocoa
//Easy Tasks
//1
var fruits = ["banana", "cherry", "passionfruit", "mango", "pear"]
print(fruits[2])

//2
var nums: Set = [1,2,3,4,4,5,6,7,8]
nums.insert(12)
print(nums)

//3
var languages: [String: Int] = [
    "Swift": 2014,
    "Java" : 1995,
    "C#" : 2000
]
print(languages["Swift"]!)

//4
var colours = ["navy blue", "baby pink", "forest green", "dark red"]
colours[1] = "hot pink"
print(colours)


//Medium Tasks
//1
var first: Set = [1,2,3,4]
var second: Set = [3,4,5,6]
let intersection = first.intersection(second)
print(intersection)

//2
var students: [String: Int] = [
    "Simba" : 90,
    "Ganeka" : 95,
    "Aikosha" : 98
]
students.updateValue(100, forKey: "Simba")
print(students)

//3
var frukty = ["apple", "banana"]
var drugiefrukty = ["cherry", "date"]
let vsefrukty = frukty + drugiefrukty
print(vsefrukty)


//Hard Tasks
//1
var countries: [String: Int] = [
    "Kazakhstan" : 19620000,
    "USA" : 333300000,
    "Russia" : 144200000,
    "Moldova" : 2539000,
    "Spain" : 47780000
]
countries["France"] = 67980000
print(countries)

//2
var firstduo: Set = ["cat", "dog"]
var secondduo: Set = ["dog", "mouse"]
let union = firstduo.union(secondduo)
let subt = union.subtracting(secondduo)
print(subt)

//3
var grades: [String: [Int]] = [
    "Simba" :  [5,4,5,3,5,3,4],
    "Mimba" : [3,5,2,5,4,4,4],
    "Gancho" : [5,4,5,3,4,4,5],
    "Pancho" : [5,5,4,4,4,5,5]
]
let mimbagrades = grades["Mimba"]![1]
print(mimbagrades)


