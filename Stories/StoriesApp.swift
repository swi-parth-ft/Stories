//
//  StoriesApp.swift
//  Stories
//
//  Created by Parth Antala on 8/7/24.
//

import SwiftUI
import Firebase



@main
struct StoriesApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
