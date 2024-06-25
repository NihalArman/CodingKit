//
//  LoginView.swift
//  CodingKit
//
//  Created by Arman Nihal on 13.6.2024.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()

    var body: some View {
        if !viewModel.isLoggedIn {
            NavigationStack {
                VStack {
                    Text("Login")
                        .font(.title)

                    TextField(
                        "Email Address",
                        text: $viewModel.email
                    )
                    .disableAutocorrection(true)

                    SecureField(
                        "Password",
                        text: $viewModel.password
                    )
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.none)

                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }

                    HStack {
                        Button("Sign In", action: viewModel.userSignIn)

                        Button("Register", action: viewModel.userRegister)
                            .navigationDestination(isPresented: $viewModel.isRegisterPageDisplayed) {
                                RegisterView()
                                    .navigationTitle("Register")
                            }
                    }
                    .buttonStyle(.bordered)
                }
                .textFieldStyle(.roundedBorder)
            }
        } else {
            CodingKitTabView()
        }
    }
}
