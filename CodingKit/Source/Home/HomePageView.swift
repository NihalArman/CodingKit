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
        NavigationStack {
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
                        .onTapGesture {
                            viewModel.itemTappedForDetails(tappedItem: item)
                        }
                    }
                }
            }
            .navigationTitle("CodingKit")
            .navigationDestination(isPresented: $viewModel.isDetailPageDisplayed) {
                destinationView()
                    .navigationTitle(viewModel.selectedItem?.name ?? "Error")
            }
        }
    }

    private func destinationView() -> AnyView {
        let selectedItem = viewModel.selectedItem
        switch selectedItem?.name {
        case "Memo": 
            return AnyView(MemoView())
        case "TDD Checklist":
            return AnyView(TDDChecklistView())
        case "Notes":
            return AnyView(NotesView())
        case "Rotation Timer":
            return AnyView(RotationTimerView())
        case "Session Timer":
            return AnyView(SessionTimerView())
        default:
            return AnyView(ErrorView())
        }
    }
}

#Preview {
    HomePageView()
}
