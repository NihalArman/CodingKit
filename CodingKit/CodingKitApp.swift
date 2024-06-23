//
//  CodingKitApp.swift
//  CodingKit
//
//  Created by Arman Nihal on 12.6.2024.
//

import SwiftUI
import FirebaseCore

@main
struct CodingKitApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
