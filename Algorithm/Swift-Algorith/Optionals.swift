import UIKit

var number : Int?
number = 12

// If let

if let num = number {

    print("I have a value \(num)")
}
else {
    print("I am nil")
}


func trippleNum(input: Int?){

    guard let input = input else {
        print("Exiting fucnntion ")

        return
    }

    print(" tripple number is \(input * 3) ")


}

trippleNum(input: number)


struct Device {

    var price : Float
    var type: String
}

var myPhone: Device?
myPhone = Device(price: 12.2, type: "iPhone")

let devicePrice = myPhone?.price
if let devicePrice = devicePrice {
    print("my phone price is \(devicePrice + 8.90)")

}
