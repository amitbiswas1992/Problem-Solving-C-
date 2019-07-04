import Foundation

for i in 1...20
{
    let byThree = i % 3 == 0
    let byFive  = i % 5 == 0

    if byThree
    {
        print("Fizz")
    }
    else if byFive
    {
        print("Buzz")
    }
    else if byThree && byFive
    {
        print("FizzBuzz")
    }
    else
    {
        print(i)
    }
}
