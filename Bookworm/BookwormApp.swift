//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Masoud Safari on 2024-03-06.
//

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
