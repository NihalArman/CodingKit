//
//  RegisterViewModelTests.swift
//  CodingKitTests
//
//  Created by Arman Nihal on 3.7.2024.
//

import XCTest
@testable import CodingKit

final class RegisterViewModelTests: XCTestCase {
    func testUserIsNotRegisterByDefault() {
        let viewModel = RegisterViewModel()

        XCTAssertFalse(viewModel.isRegistrationSuccessful)
    }
}
