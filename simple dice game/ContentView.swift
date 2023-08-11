//
//  ContentView.swift
//  simple dice game
//
//  Created by Trí Lai on 11/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false

    @State var rolledDice: [String] = [
        diceNames[0][0],
        diceNames[0][1],
        diceNames[1][3],
        diceNames[1][5]
    ]
    
    func rollDice() {
        rolledDice.removeAll()
        
        let blueShuffled = diceNames[0].shuffled()
        let redShuffled = diceNames[1].shuffled()
        
        rolledDice.append(blueShuffled[0])
        rolledDice.append(blueShuffled[1])
        rolledDice.append(redShuffled[0])
        rolledDice.append(redShuffled[1])
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Image("rmit-casino-welcome-logo")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                
                DiceView(dices: rolledDice)
                
                Spacer()
                
                ScoreView(rolledDice: rolledDice)
                                
                Spacer()
                
                Button(action: {
                    rollDice()
                }, label: {
                    Label("Play", systemImage: "play.fill")
                        .padding(.all, 20)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                })
                
                HStack {
                    Spacer()
                    Button {
                        showSheet.toggle()
                    } label: {
                        Label("",systemImage: "info.cirle.fill")
                            .padding()
                            .foregroundColor(.red)
                    }
                    .sheet(isPresented: $showSheet) {
                        SheetView()
                    }
                }
            } // VStack: Main layout
        } // ZStack: Root
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
