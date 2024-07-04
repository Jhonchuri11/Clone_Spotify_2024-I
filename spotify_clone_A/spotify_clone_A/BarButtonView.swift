//
//  BarButtonView.swift
//  spotify_clone_A
//
//  Created by Mac19 on 18/05/24.
//

import SwiftUI

struct BarButtonView: View {
    // responder al evento
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .padding(8)
                .foregroundStyle(.gray)
                .background(.black)
                .clipShape(Circle())
            
        }
    }
}

#Preview {
    BarButtonView()
}
