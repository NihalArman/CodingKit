//
//  HomePageViewModel.swift
//  CodingKit
//
//  Created by Arman Nihal on 20.6.2024.
//

import Foundation

final class HomePageViewModel: ObservableObject {
    @Published var isDetailPageDisplayed: Bool = false
    @Published var homePageListItems = HomePageModel.items
}
