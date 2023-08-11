//
//  DiceView.swift
//  simple dice game
//
//  Created by Trí Lai on 11/08/2023.
//

import SwiftUI

struct DiceView: View {
    var dices: [String]
    var body: some View {
        ZStack {
            VStack {
                HStack(spacing: 40) {
                    Image(dices[0])
                    Image(dices[1])
                } // HStack: Red dices
                
                Text("vs")
                    .padding(20)
                    .font(.system(.title3, design: .monospaced))
                    .foregroundColor(.primary)
                
                HStack(spacing: 40) {
                    Image(dices[2])
                    Image(dices[3])
                } // HStack: Blue dices
            } // VStack: Dice layout
        } // ZStack: Root
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(dices: ["dice-red-1", "dice-red-2", "dice-blue-1", "dice-blue-2"])
    }
}
