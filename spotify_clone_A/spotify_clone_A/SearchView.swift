//
//  SearchView.swift
//  spotify_clone_A
//
//  Created by Mac19 on 1/06/24.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack {
            ZStack {
                Color("dart")
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        
                        Text("Recentely played")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.white)
            
                        Image(systemName: "chevron.left")
                            .background()
                        
                    }
                    Spacer()
                }
                .padding(30)
            }
            
        }
       
        
    }
}

#Preview {
    SearchView()
}
