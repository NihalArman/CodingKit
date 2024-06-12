//
//  ContentView.swift
//  CodingKit
//
//  Created by Arman Nihal on 12.6.2024.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        TabView {
            ProfilePage()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    MenuPage()
}
