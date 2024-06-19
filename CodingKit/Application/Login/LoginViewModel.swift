//
//  LoginViewModel.swift
//  CodingKit
//
//  Created by Arman Nihal on 19.6.2024.
//

import Foundation

final class LoginViewModel: ObservableObject {
    @Published var userName: String = ""
    @Published var password: String = ""
    @Published var isLoggedIn: Bool = false
    
    func userSignIn() {
        isLoggedIn.toggle()
    }
    
    func userRegister() {
    }
}
