//
//  ContentView.swift
//  HikeApp
//
//  Created by Thomas Cowern on 7/12/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.customIndigoMedium,
                            Color.customSalmonLight
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .frame(width: 256, height: 256)
            
            Image("image-1")
                .resizable()
                .scaledToFit()
        } //: End of ZStack
    } //: End of body
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
