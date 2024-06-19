//
//  MenuPage.swift
//  CodingKit
//
//  Created by Arman Nihal on 12.6.2024.
//

import Foundation
import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationView {
            Text("Home Page")
                .navigationTitle("CodingKit")
        }
    }
}

#Preview {
    HomePageView()
}