//
//  MusicListResponse.swift
//  viperProject
//
//  Created by Hamza Jerbi on 23/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation


struct MusicListResponse: Codable {
    
    var resultCount: Int?
    let results: [MusicResultsList]?
    
}
struct MusicResultsList: Codable {
    
    let wrapperType, kind, artistName, collectionName, trackName, primaryGenreName: String?
    let trackPrice: Float?
    let releaseDate: String?
    let currency: String?
    let artworkUrl100: String?
    let previewUrl: String?
    let trackTimeMillis: Int?
}

