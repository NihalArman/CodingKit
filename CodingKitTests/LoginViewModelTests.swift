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
        XCTAssertEqual(viewModel.errorMessage, "Please fill in both fields")
    }

    func testLogInFailsIfPasswordisEmpty() {
        let viewModel = LoginViewModel()
        viewModel.email = "something@abc.com"
        viewModel.password = ""

        viewModel.userSignIn()

        XCTAssertFalse(viewModel.isLoggedIn)
        XCTAssertEqual(viewModel.errorMessage, "Please fill in both fields")
    }

    func testLogInSucceedsIfEmailAndPasswordisGiven() {
        let viewModel = LoginViewModel()
        viewModel.email = "something@abc.com"
        viewModel.password = "something"

        viewModel.userSignIn()

        XCTAssertTrue(viewModel.isLoggedIn)
    }

    func testLogInFailsIfEmailIsInvalid() {
        let viewModel = LoginViewModel()
        viewModel.email = "something@abc"
        viewModel.password = "something"

        viewModel.userSignIn()

        XCTAssertFalse(viewModel.isLoggedIn)
        XCTAssertEqual(viewModel.errorMessage, "Please enter valid email address")
    }
}
