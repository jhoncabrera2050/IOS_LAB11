//
//  spotify_cApp.swift
//  spotify-c
//
//  Created by Linder Anderson Hassinger Solano    on 27/05/23.
//

import SwiftUI

@main
struct spotify_cApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var appState: AppSate = .shared

    var body: some Scene {
        WindowGroup {
            switch appState.currentScreen{
            case .launch:
                LaunchView()
                    .environmentObject(appState)
                
            case.SingIn:
                SingInView()
                    .environmentObject(appState)
                
            case .main:
                MainView()
                    .environmentObject(appState)
            }
        }
    }
}
