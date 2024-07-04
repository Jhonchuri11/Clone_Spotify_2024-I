//
//  SignUpViewModel.swift
//  spotify_clone_A
//
//  Created by Mac19 on 25/05/24.
//

import Foundation
import FirebaseAuth

class SignUpViewModel: ObservableObject {
    
    var appState: AppState = .shared
    
    @Published var elements: [SignUpForm] = [
        SignUpForm(
            title: "What’s your email?",
            input: "",
            helptext: "You’ll need to confirm this email later.",
            keyboardtype: .emailAddress,
            value: ""
        ),
        SignUpForm(
            title: "Create a password",
            input: "",
            helptext: "Use atleast 8 characters.",
            keyboardtype: .default,
            value: "",
            isSecurityField: true
        ),
        SignUpForm(
            title: "What’s your gender?",
            input: "",
            helptext: "",
            keyboardtype: .numberPad,
            value: ""
        ),
        SignUpForm(
            title: "What’s your name?",
            input: "",
            helptext: "This appears on your spotify profile",
            keyboardtype: .default,
            value: ""
        ),
    ]
    
    func createuser() {
        
        let email = elements[0].value.lowercased()
        let password = elements[1].value
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            if error == nil {
                
                self.appState.currentScreen = .main
                
            } else {
                print(error?.localizedDescription)
            }
            
        }
    }
    
}



