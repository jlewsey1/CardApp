//
//  CardAppApp.swift
//  CardApp
//
//  Created by Jacob Lewsey on 10/29/22.
//

import SwiftUI
import Firebase

@main
struct CardAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}



