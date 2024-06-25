//
//  LoginViewModel.swift
//  CodingKit
//
//  Created by Arman Nihal on 19.6.2024.
//

import Foundation

final class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isLoggedIn: Bool = false
    @Published var isRegisterPageDisplayed: Bool = false
    @Published var errorMessage = ""

    func userSignIn() {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty && !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in both fields"
            return
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email address"
            return
        }

        isLoggedIn.toggle()
    }
    
    func userRegister() {
        isRegisterPageDisplayed.toggle()
    }
}
