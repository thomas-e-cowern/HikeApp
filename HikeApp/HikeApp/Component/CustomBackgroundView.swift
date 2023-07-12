//
//  CustomBackgroundView.swift
//  HikeApp
//
//  Created by Thomas Cowern on 7/12/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            
            // MARK: Depth
            Color("ColorGreenDark")
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: Light
            Color("ColorGreenLight")
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: Surface
            LinearGradient(
                colors: [
                    Color("ColorGreenLight"),
                    Color("ColorGreenMedium")
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

// MARK: - Preview
struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
