//
//  MenuPage.swift
//  CodingKit
//
//  Created by Arman Nihal on 12.6.2024.
//

import Foundation
import SwiftUI

struct HomePageView: View {
    @StateObject var viewModel = HomePageViewModel()

    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns){
                    ForEach(viewModel.homePageListItems) { item in
                        VStack {
                            Image(systemName: item.iconName)
                                .resizable()
                                .frame(width: 60, height: 60)
                            Text(item.name)
                                .font(.title2)
                                .fontWeight(.semibold)
                                .scaledToFit()
                                .minimumScaleFactor(0.5)
                        }
                    }
                }
            }
            .navigationTitle("CodingKit")
        }
    }
}

#Preview {
    HomePageView()
}
