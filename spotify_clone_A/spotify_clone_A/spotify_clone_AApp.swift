//
//  spotify_clone_AApp.swift
//  spotify_clone_A
//
//  Created by Mac19 on 11/05/24.
//

import SwiftUI

@main
struct spotify_clone_AApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    // Nos permite acceder a shared porque anteriormente se uso metodo static,  que en si no nos permite implementarlo o instanciaarlo varias veces
    @StateObject var appState: AppState = AppState.shared
    
    var body: some Scene {
        WindowGroup {
            //SinginView()
            //SongView()
            switch appState.currentScreen {
                
            case .launch:
                LaunchView()
                    .environmentObject(appState)
                
            case .signIn:
                SinginView()
                    .environmentObject(appState)
                
            case .main:
                MainView()
                    .environmentObject(appState)
            }
        
        }
    }
}
