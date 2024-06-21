//
//  HomePageViewModelTests.swift
//  CodingKitTests
//
//  Created by Arman Nihal on 21.6.2024.
//

import XCTest
@testable import CodingKit

final class HomePageViewModelTests: XCTestCase {
    func testHomePageItemsNames() {
        let viewModel = HomePageViewModel()
        let homePageItems = viewModel.homePageListItems

        let homePageItemNames = homePageItems.map{ $0.name }
        let expectedItemNames = ["Memo", "TDD Checklist", "Notes", "Rotation Timer", "Session Timer"]

        XCTAssertEqual(homePageItemNames, expectedItemNames)
    }
}
