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
        
        // MARK: Card
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: Header
                VStack (alignment: .center) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                        )
                        
                        Button {
                            // show a sheet
                            print("Button pressed")
                        } label: {
                            Text("Button")
                        }

                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and family")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                } //: End of header
                .padding(.horizontal, 30)
                
                // MARK: Main content
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
                }
                
                // MARK: Footer
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
