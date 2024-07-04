//
//  SongView.swift
//  spotify_clone_A
//
//  Created by Mac19 on 15/06/24.
//

import SwiftUI

struct SongView: View {
    
    @StateObject var songViewModel = SongViewModel()
    
    // Saber nuestro flujo
    
    var body: some View {
        ZStack {
            Color("dart")
                .ignoresSafeArea()
            
            VStack (alignment: .leading) {
                Text("Lista de canciones")
                    .font(.title3)
                    .foregroundStyle(.white)
                

                ScrollView {
                    ForEach (songViewModel.songs, id: \.id) { song in
                        HStack {
                            
                            AsyncImage(url: URL(string: song.image)) { 
                                image in
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 50, height: 50)
                            
                            Spacer()
                            
                            VStack (alignment: .leading, spacing: 5) {
                                
                                Text(song.title)
                                    .foregroundStyle(.white)
                                    .font(.body)
                                
                                Text(song.description)
                                    .foregroundStyle(.white)
                                    .font(.caption2)
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                                
                                Button(action: {
                                    songViewModel.playSong(url: song.mp3)
                                    
                                    if !songViewModel.isPlay {
                                        songViewModel.audioPlayer?.play()
                                        
                                    } else {
                                        songViewModel.audioPlayer?.pause()
                                        
                                    }
                                    songViewModel.isPlay.toggle()
                                    
                                }, label: {
                                    Image(systemName: !songViewModel.isPlay ? "play.circle" : "pause.circle.fill")
                                        .foregroundColor(.white)
                                        .font(.caption2)
                                    
                                })
                            }
                        }.padding(.bottom)
                        
                    }.task {
                        await songViewModel.makeHttpRequest()
                    }
                }
            }.padding()
        }
    }
}

#Preview {
    SongView()
}
