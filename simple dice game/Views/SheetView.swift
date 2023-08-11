//
//  SheetView.swift
//  simple dice game
//
//  Created by Trí Lai on 11/08/2023.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    @State var isAnimatingImage = false
    
    var body: some View {
        VStack {
            HStack {
                Button("Dismiss") {
                    dismiss()
                }
                .padding()
                .tint(.secondary)
                Spacer()
            } // Dimiss button
            // Image Header
            ImageHeaderView()
            
            // Body
            Form {
                Section {
                    Text("""
                        Click on the play button to start rolling the dices, the red side is system player and you are the blue side.
                        You will win if your total dice value are greater than value of system; Otherwise, the game is over.
                        """)
                    Text("\"May the Force be with you\"")
                        .italic()
                        .font(.subheadline)
                } header: {
                    Text("How to play")
                } footer: {
                    Text("You can rematch many times as you want.")
                }
                
                Section {
                    HStack {
                        Text("App name")
                        Spacer()
                        Text("Simple Dice Game")
                    } // HStack: App name
                    
                    HStack {
                        Text("Course")
                        Spacer()
                        Text("iOS Development")
                    } // HStack: Course
                    
                    HStack {
                        Text("Category")
                        Spacer()
                        Text("Gambling game")
                    } // HStack: Category
                    
                    HStack {
                        Text("Author")
                        Spacer()
                        Text("Iris Young")
                    } // HStack: Author
                    
                } header: {
                    HStack {
                        Image(systemName: "info.circle.fill")
                        Text("Application Information")
                    }
                }
            }
            
            VStack {
                Text("Copyright © 2023 Simple Dice Game. \nAll rights reserved.")
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
