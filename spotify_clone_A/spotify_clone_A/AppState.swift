//
//  AppState.swift
//  spotify_clone_A
//
//  Created by Mac19 on 22/06/24.
//

import Foundation

// Launch
// Main
// SigIn

class AppState: ObservableObject {
    
    // Singleton pattern
    // Instancias a si mismo
    // Para no instanciar varias veces
    
    static let shared = AppState()
    
    
    enum AppScreen {
        
        case launch
        case signIn
        case main
    }
    
    // Estamos usando un property grapper @Published para poder usarlo globalmente
    @Published var currentScreen: AppScreen = .launch
    
    
}
