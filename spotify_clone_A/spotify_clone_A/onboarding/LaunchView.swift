//
//  LaunchView.swift
//  spotify_clone_A
//
//  Created by Mac19 on 22/06/24.
//

import SwiftUI

struct LaunchView: View {
    
    @StateObject var launchmodel = LaunchhViewModel()
    
    var body: some View {
        ZStack {
            Color("dart")
                .ignoresSafeArea()
            
            Image("spotify")
                .resizable()
                .frame(width: 120, height: 120)
        }
    }
}

#Preview {
    LaunchView()
}
