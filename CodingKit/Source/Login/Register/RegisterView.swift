//
//  RegisterView.swift
//  CodingKit
//
//  Created by Arman Nihal on 21.6.2024.
//

import Foundation
import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                    SecureField("Pasword", text: $viewModel.password)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.none)
                }

                HStack {
                    Button("Register", action: viewModel.registerUser)
                    Button("Cancel") {
                        dismiss()
                    }
                }
                .buttonStyle(.bordered)
            }
        }
    }
}
