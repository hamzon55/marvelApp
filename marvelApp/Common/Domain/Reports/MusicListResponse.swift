//
//  MusicListResponse.swift
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

}

class CharacterData: Decodable {
    let results: [CharacterModel]?
}

class CharacterResponse: Decodable {
    let data: CharacterData
}
