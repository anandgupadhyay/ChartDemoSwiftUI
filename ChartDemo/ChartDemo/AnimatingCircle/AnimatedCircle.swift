//
//  ColorEffect.swift
//  SwiftUILearning
//
//  Created by Anand Upadhyay on 10/04/24.
//

import SwiftUI

import SwiftUI
struct ColorEffect: View {
    var body: some View {
        ZStack {
            Image(.puppy)
                .resizable()
                .scaledToFit()
                .phaseAnimator ([false, true]) { wwdc24, chromaRotate in wwdc24
                        .hueRotation(.degrees (chromaRotate ? 420: 0))
                }animation: { chromaRotate in
                        .easeInOut(duration: 2)
                }
                }
        }
}
    
#Preview {
    ColorEffect().preferredColorScheme(.dark)
}
