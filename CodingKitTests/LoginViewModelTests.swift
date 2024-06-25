//
//  CodingKitTests.swift
//  CodingKitTests
//
//  Created by Arman Nihal on 12.6.2024.
//

import XCTest
@testable import CodingKit

final class LoginViewModelTests: XCTestCase {

    func testUserLoggedOutByDefault() {
        let viewModel = LoginViewModel()

        XCTAssertFalse(viewModel.isLoggedIn)
    }

    func testLogInFailsIfEmailisEmpty() {
        let viewModel = LoginViewModel()
        viewModel.email = ""
        viewModel.password = "something"

        viewModel.userSignIn()

        XCTAssertFalse(viewModel.isLoggedIn)
    }
}
