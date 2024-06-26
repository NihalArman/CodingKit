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
            HomePageView()
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
        .tint(Color("tabIcon"))
    }
}

#Preview {
    CodingKitTabView()
}
