//
//  CustomBackgrounView.swift
//  HikeApp
//
//  Created by Thomas Cowern on 7/12/23.
//

import SwiftUI

struct CustomBackgrounView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        ZStack {
            
            // MARK: Depth
            
            
            // MARK: Light
            
            
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
struct CustomBackgrounView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgrounView()
            .padding()
    }
}
