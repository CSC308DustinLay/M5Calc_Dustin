import UIKit

//Naming Cnventions
//UpperCamelCase: Types, classes, Structs, Enums, Extensions, Protols
//Ex: struct AppDeveloper{}
//LowerCamelCase: values, Constants, Functions, Properties, Parameters
//Ex: var numStudents = 30

//Variables(var)
//A variables value CAN be changed after it is set
var course = "ios"
var crn = 20819
var valid = true
course
print(course)
dump(course)
crn
print(crn)
dump(crn)
valid
print(valid)
dump(valid)

//Constant(let)
//Cannot change after it is set

let numberStudents = 30
print(numberStudents)

//Data types: int, double, float, string, bool
print(type(of: numberStudents))

let num1 = 123
let num2 = 123.45
print(type(of: num1))
print(type(of: num2))
let numbers = Double(num1) + num2
print(numbers)

//Type Conversion create a new value in a diff type
let invalidStr = "number"
let invalidNum = Int(invalidStr)

let score = 95
let scoreText = String(score)
print(scoreText)

//Type inference, type annotation
let age: Int
age = 25
let pi = 3.14
let name = "John"

//Condition(if statments)
//odd/even check
let a = 10
if a%2 == 0
{
    print("\(a) is even")
}
else
{
    print("\(a) is odd")
}

//Check the date
let weekday = Calendar.current.component(.weekday, from: Date())
if weekday == 1
{
    print("Today is sunday")
}
else if weekday == 2
{
    print("Today is monday")
}

