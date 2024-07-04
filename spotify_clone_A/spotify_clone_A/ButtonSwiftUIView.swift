//
//  ButtonSwiftUIView.swift
//  spotify_clone_A
//
//  Created by Mac19 on 11/05/24.
//

import SwiftUI

struct ButtonSwiftUIView: View {
    
    var title: String
    var backgroundColor: Color = .clear
    var color: Color = .white
    var borderColor: Color = .white
    var imagen: Image?
    
    var body: some View {
        
        Button {
            print("evento de button")
        } label: {
            Spacer()
            if let imagen = imagen {
                imagen
                    .resizable()
                    .frame(width: 18, height: 18)
                    .padding(.leading, 15)
            }
            Text(title)
                .foregroundStyle(color)
                .fontWeight(.bold)
                .padding(.vertical, 15)
                .padding(.horizontal, 20)
            Spacer()
            
        }
        .background(
            RoundedRectangle(cornerRadius: 45)
                .stroke(borderColor)
                .fill(backgroundColor)
        )
        .padding(.horizontal, 32)
    }
    
}

#Preview {
    ButtonSwiftUIView(title: "Continue with Google", backgroundColor: Color("primar"), color: .black, imagen: Image("google"))
}
