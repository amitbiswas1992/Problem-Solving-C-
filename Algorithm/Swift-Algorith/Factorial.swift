//: Playground - noun: a place where people can play

import UIKit

// Finding Factorial Number

func factorialNumber(value: UInt)-> UInt  {
    var product : UInt = 1

    for i in 1...value {

        product = product * i
    }


    return product
}

print(factorialNumber(value: 5))
