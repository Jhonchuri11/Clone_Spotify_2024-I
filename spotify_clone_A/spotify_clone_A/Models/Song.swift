//
//  Song.swift
//  spotify_clone_A
//
//  Created by Mac19 on 15/06/24.
//

import Foundation

// Creando la estructura principal el cual almacena el array de la estructura Song
struct APIResponse: Codable {
    let song: [Song]
}

// Definiendo las variables o parametros que tiene nuestros endpoints
// para despues usarlas y serializarlas conforme a los parametros
struct Song: Codable {
    let id: Int
    let title: String
    let description: String
    let image: String
    let mp3: String
    let author: String
}

// Probando con el alias para verificar si responde
typealias APIResponseQuickType = [Song]
