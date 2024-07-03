//
//  RegisterViewModelTests.swift
//  CodingKitTests
//
//  Created by Arman Nihal on 3.7.2024.
//

import XCTest
@testable import CodingKit

final class RegisterViewModelTests: XCTestCase {
    let missingFieldErrorMessage = "Please fill all the fields"

    func testUserIsNotRegisterByDefault() {
        let viewModel = RegisterViewModel()

        XCTAssertFalse(viewModel.isRegistrationSuccessful)
    }

    func testRegistrationFailsIfFirstNameIsEmpty() {
        let viewModel = RegisterViewModel()
        viewModel.firstName = ""
        viewModel.lastName = "Nihal"
        viewModel.email = "abc@something.com"
        viewModel.password = "something"
        
        viewModel.registerUser()

        XCTAssertEqual(viewModel.errorMessage, missingFieldErrorMessage)
    }

    func testRegistrationFailsIfLastNameIsEmpty() {
        let viewModel = RegisterViewModel()
        viewModel.firstName = "Arman"
        viewModel.lastName = ""
        viewModel.email = "abc@something.com"
        viewModel.password = "something"

        viewModel.registerUser()

        XCTAssertEqual(viewModel.errorMessage, missingFieldErrorMessage)
    }

    func testRegistrationFailsIfEmailIsEmpty() {
        let viewModel = RegisterViewModel()
        viewModel.firstName = "Arman"
        viewModel.lastName = "Nihal"
        viewModel.email = ""
        viewModel.password = "something"

        viewModel.registerUser()

        XCTAssertEqual(viewModel.errorMessage, missingFieldErrorMessage)
    }

    func testRegistrationFailsIfPasswordIsEmpty() {
        let viewModel = RegisterViewModel()
        viewModel.firstName = "Arman"
        viewModel.lastName = "Nihal"
        viewModel.email = "abc@something.com"
        viewModel.password = ""

        viewModel.registerUser()

        XCTAssertEqual(viewModel.errorMessage, missingFieldErrorMessage)
    }

    func testRegistrationInFailsIfEmailIsInvalid() {
        let viewModel = RegisterViewModel()
        viewModel.firstName = "Arman"
        viewModel.lastName = "Nihal"
        viewModel.email = "abc.com"
        viewModel.password = "something"

        viewModel.registerUser()

        XCTAssertEqual(viewModel.errorMessage, "Please enter valid email address")
    }
}
