//
//  PullToRefreshSpinnerView.swift
//  SwiggyAlias
//
//  Created by Aakarsh Verma on 08/12/24.
//

import SwiftUI

struct PullToRefreshSpinnerView: View {
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: 48, height: 48)

            Circle()
                .stroke(Color.orange.opacity(0.3), lineWidth: 3)
                .frame(width: 24, height: 24)
            
            Circle()
                .trim(from: 0.5, to: 1)
                .stroke(Color.orange, lineWidth: 3)
                .frame(width: 24, height: 24)
                .rotationEffect(.degrees(isAnimating ? 360 : 0))
                .animation(
                    Animation.linear(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: isAnimating
                )
        }
        .onAppear {
            isAnimating = true
        }
    }
}

#Preview {
    PullToRefreshSpinnerView()
}
