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
    static let memo = HomePageItemModel(id: 001, name: "Memo", iconName: "")
    static let tddChecklist = HomePageItemModel(id: 002, name: "TDD Checklist", iconName: "")
    static let notes = HomePageItemModel(id: 003, name: "Notes", iconName: "")
    static let rotationTimer = HomePageItemModel(id: 004, name: "Rotation Timer", iconName: "")
    static let sessionTimer = HomePageItemModel(id: 005, name: "Session Timer", iconName: "")

    static let items = [memo, tddChecklist, notes, rotationTimer, sessionTimer]
}
