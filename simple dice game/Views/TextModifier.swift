//
//  TextModifier.swift
//  simple dice game
//
//  Created by Trí Lai on 11/08/2023.
//

import SwiftUI

struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(.yellow)
            .font(.title3)
            .fontWeight(.heavy)
    }
}
