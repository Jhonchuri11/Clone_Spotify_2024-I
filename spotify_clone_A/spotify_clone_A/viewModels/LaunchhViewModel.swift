//
//  LaunchhViewModel.swift
//  spotify_clone_A
//
//  Created by Mac19 on 22/06/24.
//

import Foundation
import FirebaseAuth

class LaunchhViewModel: ObservableObject {
    
    var appState: AppState = .shared
    
    init() {
        
        let user = Auth.auth().currentUser
        
        /*
        if user == nil {
            appState.currentScreen = .signIn
        } else {
            appState.currentScreen = .main
        }
        */
        
        //if (user != nil)   appState.currentScreen = .signIn; : appState.currentScreen = .main
        appState.currentScreen = Auth.auth().currentUser == nil ? .main : .signIn
        
        
        
    }
}
