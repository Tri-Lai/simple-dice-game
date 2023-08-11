//
//  ImageHeaderView.swift
//  simple dice game
//
//  Created by Trí Lai on 11/08/2023.
//

import SwiftUI

struct ImageHeaderView: View {
    @State private var isAnimatingImage: Bool = false
    
    var body: some View {
        ZStack {
            Image("rmit-casino-logo")
                .resizable()
                .scaledToFit()
                .shadow(radius: 8)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(width: 200)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct ImageHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageHeaderView()
            .previewLayout(.fixed(width: 375, height: 200))
    }
}
