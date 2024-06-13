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

    var body: some View {
        NavigationView {
            VStack {
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
                Button("Sign In", action: {})
                Button("Register", action: {})
             }
            .buttonStyle(.bordered)
            .textFieldStyle(.roundedBorder)
            .navigationTitle("Sign in or Register")
        }
    }
}

#Preview {
    LoginView()
}
