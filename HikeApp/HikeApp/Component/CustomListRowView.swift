//
//  CustomListRowView.swift
//  HikeApp
//
//  Created by Thomas Cowern on 7/12/23.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - Properties
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String
    @State var rowTintColor: Color
    
    // MARK: - Body
    var body: some View {
        LabeledContent {
            Text(rowContent)
                .foregroundColor(rowTintColor)
                .fontWeight(.heavy)
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowLabel)
            } //: End of HStack
        }
    }
}

// MARK: - Preview
struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            CustomListRowView(rowLabel: "Hike", rowIcon: "square", rowContent: "This is content", rowTintColor: Color.blue)
        }
    }
}
