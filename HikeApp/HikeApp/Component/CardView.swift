//
//  CardView.swift
//  HikeApp
//
//  Created by Thomas Cowern on 7/12/23.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    // MARK: - Functions
    func randomImage() {
        print("--- Button was pressed ---")
        print("Status: Old image number: \(imageNumber)")
        repeat {
            randomNumber = Int.random(in: 1...5)
            print("Action:Random Number Generated: \(randomNumber)")
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
        print("result: new image number: \(imageNumber)")
        print("--- The End---")
    }
    
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
                        
                        Spacer()
                        
                        Button {
                            // show a sheet
                            print("Button pressed")
                        } label: {
                            CustomButtonView()
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
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                }
                
                // MARK: Footer
                Button {
                    // Random number generator
                    randomImage()
                    print("random number will be generated")
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                } //: End of button
                .buttonStyle(GradientButton())
                
                
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
