import Foundation

enum Game: CaseIterable {
    case Scissors, Rock, Paper
}


//let random = GameObj.allCases.randomElement()!
var myChoice = Game.allCases.randomElement()!
var computerChoice = Game.allCases.randomElement()!

protocol GameRules {
    func checkResult(me: Game, machine: Game)
}

class Gaming: GameRules {
    func checkResult(me: Game, machine: Game) {
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
}

var result1 = Gaming()
result1.checkResult(me: myChoice, machine: computerChoice)
print(myChoice)
print(computerChoice)
