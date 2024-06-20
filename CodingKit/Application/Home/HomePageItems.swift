//
//  HomePageItems.swift
//  CodingKit
//
//  Created by Arman Nihal on 19.6.2024.
//

import Foundation

struct HomePageItemModel: Identifiable {
    let id: Int
    let name: String
    let iconName: String
}

struct HomePageItems {
    static let memo = HomePageItemModel(id: 001, name: "Memo", iconName: "square.and.pencil")
    static let tddChecklist = HomePageItemModel(id: 002, name: "TDD Checklist", iconName: "pencil.and.list.clipboard")
    static let notes = HomePageItemModel(id: 003, name: "Notes", iconName: "book.pages")
    static let rotationTimer = HomePageItemModel(id: 004, name: "Rotation Timer", iconName: "person.badge.clock")
    static let sessionTimer = HomePageItemModel(id: 005, name: "Session Timer", iconName: "clock.badge")

    static let items = [memo, tddChecklist, notes, rotationTimer, sessionTimer]
}
