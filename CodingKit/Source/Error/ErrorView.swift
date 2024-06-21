//
//  ErrorView.swift
//  CodingKit
//
//  Created by Arman Nihal on 21.6.2024.
//

import Foundation
import SwiftUI

struct ErrorView: View {
    var body: some View {
        NavigationView {
            Text("Sorry, unknown error occured, try again")
                .navigationTitle("Error")
        }
    }
}

#Preview {
    ErrorView()
}
