//
//  SettingsView.swift
//  HikeApp
//
//  Created by Thomas Cowern on 7/12/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    private let alternateAppIcons: [String] = [
        "AppIcon-Backpack",
        "AppIcon-Camera",
        "AppIcon-Campfire",
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom"
    ]
    
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
            Section {
                Text("Choose your favorite app icon from the collection below")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 12) {
                        ForEach(alternateAppIcons.indices, id: \.self) { icon in
                            Button {
                                print("Icon \(alternateAppIcons[icon]) was pressed")
                            } label: {
                                Image("\(alternateAppIcons[icon])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }

                        }
                    }
                }
            } header: {
                Text("Alternate Icons")
            }  //: End of Section

            
            // About
            Section {
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                CustomListRowView(rowLabel: "Complatability", rowIcon: "info.circle", rowContent: "iOS, iPad OS", rowTintColor: .red)
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Thomas E Cowern", rowTintColor: .mint)
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                CustomListRowView(rowLabel: "Websight", rowIcon: "globe", rowContent: nil, rowTintColor: .indigo, rowLinkLabel: "Yahoo", rowLinkDesintation: "https://www.yahoo.com")

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
