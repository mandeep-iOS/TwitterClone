//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Deep Baath on 18/02/23.
//

import SwiftUI

@main
struct TwitterCloneApp: App {
    
    @State private var isLaunched = false
    
    var body: some Scene {
        WindowGroup {
            if isLaunched {
                TwitterHomePageView()
            }else{
                LaunchScreen(isLaunched: $isLaunched)
            }
        }
    }
}
