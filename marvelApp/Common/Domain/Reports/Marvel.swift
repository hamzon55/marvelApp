//
//  CharacterListResponse.swift
//  marvelApp
//
//  Created by Hamza Jerbi on 23/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation

struct Marvel: Decodable {
    let id: Int
    let name: String
    let description: String
    let thumbnail: ThumbnailModel
}

class CharacterData: Decodable {
    let results: [Marvel]?
}

class CharacterResponse: Decodable {
    let data: CharacterData
}

class ThumbnailModel: Decodable {
    let path: String
    let ext: String
    
    enum CodingKeys: String, CodingKey {
        case path
        case ext = "extension"
    }
    
    var fullName: String {
        get { return path + "." + ext }
    }
    
}

extension ThumbnailModel: Equatable {
    static func == (lhs: ThumbnailModel, rhs: ThumbnailModel) -> Bool {
        return lhs.path == rhs.path &&
            lhs.ext == rhs.ext
    }
}




