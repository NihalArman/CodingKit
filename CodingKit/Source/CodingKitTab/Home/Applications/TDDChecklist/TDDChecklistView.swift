//
//  TDDChecklistView.swift
//  CodingKit
//
//  Created by Arman Nihal on 21.6.2024.
//

import Foundation
import SwiftUI

struct TDDChecklistView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("TDD Checklist Page")
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Add Item")
                }
                ToolbarItem(placement: .primaryAction) {
                    Button("AddButton", systemImage: "plus") {
                    }
                }
            }
        }
    }
}

#Preview {
    TDDChecklistView()
}
