//
//  MainView.swift
//  spotify_clone_A
//
//  Created by Mac19 on 22/06/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            // componente
            SongView()
                .tabItem {
                    Label (
                        title: { Text("Home")},
                        icon: { Image(systemName: "house")}
                    )
                }
            SearchhView()
                .tabItem {
                    Label (
                        title: { Text("Search")},
                        icon: { Image(systemName: "magnifyingglass")}
                    )
                }
            LibraryView()
                .tabItem {
                    Label (
                        title: { Text("Library")},
                        icon: { Image(systemName: "books.vertical.fill")}
                    )
                }
        }
    }
}

#Preview {
    MainView()
}
