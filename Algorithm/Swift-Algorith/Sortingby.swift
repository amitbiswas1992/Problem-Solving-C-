import UIKit
import Foundation

class Player{

    var name: String
    var highScore: Int

    init(name: String , highScore: Int){

        self.name = name
        self.highScore = highScore
    }


}
let amit = Player(name: "Amit", highScore: 20)
let mike = Player(name: "Mike", highScore: 40)

var scoreArray: [Player] = [amit, mike]

var sortScore = scoreArray.sorted(by: {$0.highScore > $1.highScore})
for i in sortScore {
    print("\(i.name ) score = \(i.highScore)")
}
