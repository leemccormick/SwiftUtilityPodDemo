//
//  ErrorView.swift
//  SwiftUtilityPodDemo
//
//  Created by Lee McCormick on 2/28/24.
//

import SwiftUI

public struct ErrorUtilView: View {
    private let errorMessage: String
    
    public init(errorMessage: String) {
        self.errorMessage = errorMessage
    }
    
    public var body: some View {
        VStack {
            HStack {
                Image(systemName: "exclamationmark.triangle.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.red).opacity(0.8)
                
                Text("Error !")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                
                Spacer()
                    .frame(maxWidth: .infinity)
            }
            
            Text("\(errorMessage)")
                .font(.caption)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .background(Color.red.opacity(0.1))
        .border(.red, width: 3)
        .cornerRadius(10)
    }
}
