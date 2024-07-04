//
//  SongViewModel.swift
//  spotify_clone_A
//
//  Created by Mac19 on 15/06/24.
//

import Foundation
// funciones de reproducciones de video, audo AVKIT
import AVKit

class SongViewModel: ObservableObject {
    
    @Published var songs: [Song] = [Song]()
    
    @Published var isPlay: Bool = false
    
    @Published var audioPlayer: AVPlayer?
    
    func makeHttpRequest() async {
        guard let url = URL(string: "https://spotify-api-lac-kappa.vercel.app/api/songs") else { return }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            if let response = response as? HTTPURLResponse {
                
                if response.statusCode != 200 {
                    return
                }
            }
            
            if let decoder = try? JSONDecoder().decode([Song].self, from: data) {
                self.songs = decoder
            } else {
                print("Hubo un error en el decoder!")
            }
            
        } catch let error {
            print("eror", error.localizedDescription)
        }
    }
    
    func playSong(url: String) {
        if let url = URL(string: url) {
            self.audioPlayer = AVPlayer(url: url)
           
        }
    }
    
}
