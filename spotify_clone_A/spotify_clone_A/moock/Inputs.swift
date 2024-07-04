//
//  Inputs.swift
//  spotify_clone_A
//
//  Created by Mac19 on 18/05/24.
//

import Foundation
import UIKit

struct SignUpForm {
    
    let title: String
    let input: String
    let helptext: String
    let keyboardtype: UIKeyboardType
    var value: String
    let isSecurityField: Bool
    
    
    init(title: String, input: String, helptext: String, keyboardtype: UIKeyboardType, value: String, isSecurityField: Bool = false ) {
        self.title = title
        self.input = input
        self.helptext = helptext
        self.keyboardtype = keyboardtype
        self.value = value
        self.isSecurityField = isSecurityField
    }
}
