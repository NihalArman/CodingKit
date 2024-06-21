//
//  HomePageItems.swift
//  CodingKit
//
//  Created by Arman Nihal on 19.6.2024.
//

import Foundation

struct HomePageItem: Identifiable {
    let id: Int
    let name: String
    let iconName: String
}

struct HomePageModel {
    static let memo = HomePageItem(id: 001, name: "Memo", iconName: "square.and.pencil")
    static let tddChecklist = HomePageItem(id: 002, name: "TDD Checklist", iconName: "pencil.and.list.clipboard")
    static let notes = HomePageItem(id: 003, name: "Notes", iconName: "book.pages")
    static let rotationTimer = HomePageItem(id: 004, name: "Rotation Timer", iconName: "person.badge.clock")
    static let sessionTimer = HomePageItem(id: 005, name: "Session Timer", iconName: "clock.badge")

    static let items = [memo, tddChecklist, notes, rotationTimer, sessionTimer]
}
