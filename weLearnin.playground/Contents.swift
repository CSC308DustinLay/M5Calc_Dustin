import UIKit

var greeting = "Hello, playground"


print()

func sayHello()
{
    print("Hello")
}

sayHello()

func sayHello(name: String)
{
    print("Hello " + name)
}

sayHello(name: "Dustin")


func add(a: Int, b: Int)
{
    print(a+b)
}

add(a: 1, b: 5)
//Challenge Problems
func greet(name: String)
{
    print("Hello " + name)
}
greet(name: "Dustin")

func max2(_ a: Int, _ b: Int) -> Int
{
    return a>b ? a:b
}
func firstChar(of s: String) -> String
{
    if let ch = s.first
    {
        return String(ch)
    }
    else
    {
        return "-"
    }
}

let a = firstChar(of: "Hello World")
let b = firstChar(of: "")
print(a)
print(b)

func safeDivide(_ num: Int, by num2: Int) -> Int?
{
    if num2 == 0
    {
        return nil
    }
    else
    {
        return num/num2
    }
}

if let c = safeDivide(10, by: 0)
{
    print(c)
}
else
{
    print("Cannot divide by zero")
}
if let d = safeDivide(12, by: 2)
{
    print(d)
}
