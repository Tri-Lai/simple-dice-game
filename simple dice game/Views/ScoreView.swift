//
//  ScoreView.swift
//  simple dice game
//
//  Created by Trí Lai on 11/08/2023.
//

import SwiftUI

struct ScoreView: View {
    var rolledDice: [String]

    var body: some View {
        let AIScore = calculateScore(of: [rolledDice[0], rolledDice[1]])
        let userScore = calculateScore(of: [rolledDice[2], rolledDice[3]])
        
        let result = isWin(ai: AIScore, user: userScore)
        
        VStack {
            VStack(spacing: 0) {
                Text("SCORE")
                    .frame(width: 193, height: 50)
                    .background((LinearGradient(gradient: Gradient(colors: [Color("dice-red"), Color("dice-blue")]), startPoint: .leading, endPoint: .trailing)))
                    .foregroundColor(.white)
                    .font(.title)
                    .fontDesign(.monospaced)
                
                HStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Text("AI")
                            .padding()
                            .background(Color("dice-red"))
                            .foregroundColor(.white)
                        
                        Text("\(AIScore)")
                            .padding()
                            .background(.white)
                    } // Red score
                    
                    HStack(spacing: 0) {
                        Text("\(userScore)")
                            .padding()
                            .background(.white)
                        
                        Text("You")
                            .padding()
                            .background(Color("dice-blue"))
                            .foregroundColor(.white)
                    } // HStack: Blue score
                } // HStack
            } // VStack: Score table
            .cornerRadius(10)

            if (result == "win") {
                Text("You WIN")
                    .modifier(TextModifier())
            } else if (result == "draw") {
                Text("It's DRAW")
                    .modifier(TextModifier())
            } else if (result == "lose") {
                Text("You LOSE")
                    .modifier(TextModifier())
            }
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(rolledDice: ["dice-red-1", "dice-red-2", "dice-blue-1", "dice-blue-2"])
    }
}
