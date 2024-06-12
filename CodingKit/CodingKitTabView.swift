//
//  ContentView.swift
//  CodingKit
//
//  Created by Arman Nihal on 12.6.2024.
//

import SwiftUI

struct CodingKitTabView: View {
    var body: some View {
        TabView {
            MenuPageView()
                .tabItem {
                    Image(systemName: "house.circle")
                    Text("Home")
                }

            ProfilePageView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    CodingKitTabView()
}
