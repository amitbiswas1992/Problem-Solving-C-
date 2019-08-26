import UIKit

// Filter . Map . Reduce

struct Device {

    var type: String
    var price : Float
    var color: String
}

var myImacPro = Device(type: "iMac Pro", price: 4999.00, color: "Space Grey")
var myIphone = Device(type: "iPhone", price: 999.99, color: "Matt Black")
var myIphone7 = Device(type: "iPhone", price: 799.00, color: " Grey")
var myIpad = Device(type: "Ipad Mini ", price: 499.99, color: "Silver")
var myAppleWatch = Device(type: "iWatch", price: 899.49, color: " Black")
var myAppleTV = Device(type: "My Apple TV ", price: 399.99, color: " Black")

let myDevices = [myIpad,myIphone, myAppleTV, myImacPro, myIphone7, myAppleWatch]

// Filter

let iPhones = myDevices.filter({ $0.type == "iPhone" })
print(iPhones)

let canadianPrices : [Float] = myDevices.map({$0.price * 1.2})
print(canadianPrices)
