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

    init() {
    }

    func registerUser() {
        isRegistrationSuccessful.toggle()
    }
}
