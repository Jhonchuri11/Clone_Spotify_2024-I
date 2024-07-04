//
//  SteperBool.swift
//  spotify_clone_A
//
//  Created by Mac19 on 18/05/24.
//

import SwiftUI

struct SteperBool: View {
    
    // Recibe data
    
    @Binding var counter: Int
    
    var isNext: Bool = true
    var texto; String = "Next"
    
    var body: some View {
        Button {
            if isNext {
                counter += 1
            } else {
                counter -= 1
            }
            
        } label: {
            Text(texto)
                .foregroundStyle(.white)
                .font(.system(size: 15))
                .fontWeight(.bold
                )
                .padding()
        }
        .frame(height: 42)
        .background(
            RoundedRectangle(cornerRadius: 21)
                .stroke(Color("primar"), lineWidth: 1)
                .fill(Color("primar"))
    }
}

#Preview {
    SteperBool(counter: .constant(0))
}
