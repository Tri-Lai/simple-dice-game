//
//  helper.swift
//  simple dice game
//
//  Created by Trí Lai on 11/08/2023.
//

import Foundation

let diceNames: [[String]] = [
    ["dice-red-1",
     "dice-red-2",
     "dice-red-3",
     "dice-red-4",
     "dice-red-5",
     "dice-red-6"],
    ["dice-blue-1",
     "dice-blue-2",
     "dice-blue-3",
     "dice-blue-4",
     "dice-blue-5",
     "dice-blue-6"]
]

func calculateScore(of dices: [String]) -> Int {
    var result = 0
    
    // Check corresponding number
    
    dices.forEach { dice in
        let diceItems = dice.split(separator: "-")
        result +=  Int(diceItems.last!) ?? 0
    }
    
    return result
}

func isWin(ai: Int, user: Int) -> String {
    if (ai == user) { return "draw" }
    else if (ai < user) { return "win" }
    else { return "lose" }
}
