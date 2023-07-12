//
//  SettingsView.swift
//  HikeApp
//
//  Created by Thomas Cowern on 7/12/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        List {
            // Header
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                } //: End of HStack
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect hikes?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots, it's time for a hike!")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGrayMedium)
                } //: End of VStack
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }  //: End of Section
            .listRowSeparator(.hidden)
            
            
            // Icons
            
            
            // About
            Section {
                Text("List Row")
            } header: {
                Text("About the App")
            } footer: {
                HStack {
                    Spacer()
                    Text("Copyright @ All rights reserved")
                    Spacer()
                }
                .padding(.vertical, 8)
            }

            
            
        } // MARK: End of list
    }
}

// MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
