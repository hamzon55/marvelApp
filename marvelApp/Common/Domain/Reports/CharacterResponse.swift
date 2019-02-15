//
//  CharacterListResponse.swift
//  viperProject
//
//  Created by Hamza Jerbi on 23/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation


class CharacterModel: Decodable {
    let id: Int
    let name: String
    let description: String
    let thumbnail: ThumbnailModel

    init(id: Int, name: String, thumbnail: ThumbnailModel, description: String) {
        self.id = id
        self.name = name
        self.thumbnail = thumbnail
        self.description = description
    }
}

class CharacterData: Decodable {
    let results: [CharacterModel]?
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
    
    init(path: String, ext: String) {
        self.path = path
        self.ext = ext
    }
    
    required init(from decoder: Decoder) throws {
        let allValues = try decoder.container(keyedBy: CodingKeys.self)
        path = try allValues.decode(String.self, forKey: .path)
        ext = try allValues.decode(String.self, forKey: .ext)
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




