//
//  TDDChecklistNewItem.swift
//  CodingKit
//
//  Created by Arman Nihal on 23.6.2024.
//

import Foundation
import SwiftUI

struct TDDChecklistNewItemView: View {
    @StateObject var viewModel = TDDChecklistNewItemViewModel()

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Title", text: $viewModel.title)
                    TextField("Text", text: $viewModel.text)
                        .frame(height: 400, alignment: .top)
                }
                HStack {
                    Button("Save", action: viewModel.saveData)
                    Button("Cancel", action: viewModel.cancelData)
                }
                .buttonStyle(.bordered)
            }
            .navigationTitle("New Item")
        }
    }
}

#Preview {
    TDDChecklistNewItemView()
}
