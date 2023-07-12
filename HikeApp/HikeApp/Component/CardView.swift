//
//  CardView.swift
//  HikeApp
//
//  Created by Thomas Cowern on 7/12/23.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
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
        } //: End of ZStack
        .frame(width: 320, height: 570)
    } //: End of body
}

// MARK: - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
