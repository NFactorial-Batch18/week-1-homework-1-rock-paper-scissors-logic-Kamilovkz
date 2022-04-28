import UIKit

// Define main objects of game
// In enum we will add a protocol "CaseIterable" for random chosing of steps of players
enum GameObj: CaseIterable {
    case Paper
    case Rock
    case Scissors
}

//Declare variables with using force unwrapping!
//Important it's automatically game where you are like watcher, if you want choose way to game use next following code
// let myway: GameObj = .Paper

let random = GameObj.allCases.randomElement()!
let myChoice = GameObj.allCases.randomElement()!


//Implement GameProcess
func checkResult(me: GameObj, machine: GameObj) {
    if me == .Paper && machine == .Rock ||
         me == .Scissors && machine == .Paper ||
            me == .Rock && machine == .Scissors {
                print("I win!")
    } else if (me == machine) {
        print("Draw!")
    } else {
        print("Machine win!")
    }
}


//Show results
print("Me:", myChoice, "\nMachine:", random)
checkResult(me: myChoice, machine: random)

//Also I tried use a original version of protocols but I couldn't use it. Below a code
//protocol GameProcess {
//    func checkResult()
//}
//
//class Game: GameProcess {
//    func checkResult() {
//        print("Result is...")
//    }
//}



