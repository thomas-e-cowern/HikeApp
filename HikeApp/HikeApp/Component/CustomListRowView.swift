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
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDesintation: String? = nil
    
    // MARK: - Body
    var body: some View {
        LabeledContent {
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.black)
                    .fontWeight(.heavy)
            } else if (rowLinkLabel != nil && rowLinkDesintation != nil) {
                Link(rowLinkLabel!, destination: URL(string: rowLinkDesintation!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
            } else {
                EmptyView()
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
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
        
        CustomListRowView(
            rowLabel: "Website",
            rowIcon: "globe",
            rowContent: nil,
            rowTintColor: Color.blue,
            rowLinkLabel: "Yahoo",
            rowLinkDesintation: "https://www.yahoo.com"
        )
    }
}
