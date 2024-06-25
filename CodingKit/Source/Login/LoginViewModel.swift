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

    func userSignIn() {
        isLoggedIn.toggle()
    }
    
    func userRegister() {
        isRegisterPageDisplayed.toggle()
    }
}
