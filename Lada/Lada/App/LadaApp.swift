//
//  LadaApp.swift
//  Lada
//
//  Created by Maksim Maiorov on 01.02.2022.
//

import SwiftUI

@main
struct LadaApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
