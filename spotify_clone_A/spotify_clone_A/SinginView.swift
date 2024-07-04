//
//  SinginView.swift
//  spotify_clone_A
//
//  Created by Mac19 on 11/05/24.
//

import SwiftUI

struct SinginView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Color("dart").ignoresSafeArea()
                    VStack {
                        Image("bg-login")
                            .resizable()
                            .frame(height: 250)
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 53, height: 53)
                        
                        Text("Millions of songs")
                            .font(.title)
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .padding(.top)
                        
                        Text("Free on Spotify")
                            .font(.title)
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                        
                        VStack(spacing: 20) {
                            
                            ButtonSwiftUIView(title: "Sign up free", backgroundColor: Color("primar"), color: .black, borderColor: .clear)
                            
                            ButtonSwiftUIView(title: "Continue with Google", imagen: Image("google"))
                            ButtonSwiftUIView(title: "Continue with Facebook", imagen: Image("facebook"))
                            ButtonSwiftUIView(title: "Continue with Apple", imagen: Image("apple"))
                            
                            NavigationLink("Login", destination: SignUpview())
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                            
                            NavigationLink("example", destination: SearchView())
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                            
                            
                        }.padding(.top)
                        
                    }
                }
                
            }
        }
    }
}

#Preview {
    SinginView()
}
