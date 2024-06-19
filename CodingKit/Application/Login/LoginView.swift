//
//  LoginView.swift
//  CodingKit
//
//  Created by Arman Nihal on 13.6.2024.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State private var userName: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn: Bool = false

    var body: some View {
        if !isLoggedIn {
            VStack {
                Text("Login")
                    .font(.title)
                TextField(
                    "User Name",
                    text: $userName
                )
                .disableAutocorrection(true)
                SecureField(
                    "Password",
                    text: $password
                )
                .disableAutocorrection(true)

                HStack {
                    Button("Sign In", action: userSignIn)

                    Button("Register", action: userRegister)
                }
                .buttonStyle(.bordered)
            }
            .textFieldStyle(.roundedBorder)
        } else {
            CodingKitTabView()
        }
    }

    private func userSignIn() {
        isLoggedIn.toggle()
    }

    private func userRegister() {
    }
}

#Preview {
    LoginView()
}
