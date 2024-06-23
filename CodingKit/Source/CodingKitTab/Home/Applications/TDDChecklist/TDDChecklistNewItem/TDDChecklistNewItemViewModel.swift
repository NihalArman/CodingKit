//
//  TDDChecklistNewItemViewModel.swift
//  CodingKit
//
//  Created by Arman Nihal on 23.6.2024.
//

import Foundation

final class TDDChecklistNewItemViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var text: String = ""

    func saveData() {
    }
}

