//
//  TDDChecklistViewModel.swift
//  CodingKit
//
//  Created by Arman Nihal on 23.6.2024.
//

import Foundation

final class TDDChecklistViewModel: ObservableObject {
    @Published var showNewItemPopUp: Bool = false

    init() {
    }

    func displayNewItemView() {
        showNewItemPopUp.toggle()
    }
}
