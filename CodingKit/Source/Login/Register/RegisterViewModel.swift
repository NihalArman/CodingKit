//
//  RegisterViewModel.swift
//  CodingKit
//
//  Created by Arman Nihal on 24.6.2024.
//

import Foundation

final class RegisterViewModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isRegistrationSuccessful: Bool = false
    @Published var errorMessage = ""

    init() {
    }

    func registerUser() {
        guard validateUserInput() else {
            return
        }
        isRegistrationSuccessful.toggle()
    }

    // MARK: - Helpers
    private func validateUserInput() -> Bool {
        guard !firstName.trimmingCharacters(in: .whitespaces).isEmpty,
              !lastName.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill all the fields"
            return false
        }

        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email address"
            return false
        }
        return true
    }
}
