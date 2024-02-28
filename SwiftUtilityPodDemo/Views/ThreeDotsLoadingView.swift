//
//  LoadingView.swift
//  SwiftUtilityPodDemo
//
//  Created by Lee McCormick on 2/28/24.
//

import SwiftUI

public struct ThreeDotsLoadingView: View {
    @State private var scale: CGFloat = 0.0
    let animationDuration: Double = 0.5
    
    public init(scale: CGFloat) {
        self.scale = scale
    }
    
    public var body: some View {
        HStack(spacing: 4) {
            Circle()
                .fill(Color.mint.opacity(0.8))
                .scaleEffect(scale)
                .frame(width: 10, height: 10)
                .padding(.leading, 5)
            
            Circle()
                .fill(Color.mint.opacity(0.5))
                .scaleEffect(scale + 0.33)
                .frame(width: 10, height: 10)
                .padding(.leading, 5)
            
            Circle()
                .fill(Color.mint.opacity(0.3))
                .scaleEffect(scale + 0.66)
                .frame(width: 10, height: 10)
                .padding(.leading, 5)
            
            Circle()
                .fill(Color.mint.opacity(0.1))
                .scaleEffect(scale + 0.88)
                .frame(width: 10, height: 10)
                .padding(.leading, 5)
        }
        .onAppear {
            withAnimation(Animation.easeInOut(duration: animationDuration).repeatForever(autoreverses: true)) {
                scale = 1.0
            }
        }
    }
}
