//
//  LoginViewModel.swift
//  CodingKit
//
//  Created by Arman Nihal on 19.6.2024.
//

import Foundation
import FirebaseAuth

final class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isLoggedIn: Bool = false
    @Published var isRegisterPageDisplayed: Bool = false
    @Published var errorMessage = ""

    func userSignIn() {
        guard validateEmailAndPassword() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
        isLoggedIn.toggle()
    }
    
    func userRegister() {
        isRegisterPageDisplayed.toggle()
    }

    // MARK: - Helpers
    private func validateEmailAndPassword() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty && !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in both fields"
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email address"
            return false
        }

        return true
    }
}
