//
//  CharacterNetwork.swift
//  marvelApp
//
//  Created by Hamza Jerbi on 23/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation

enum CharacterService: ServiceEnum {
    case list(name: String)
}

struct CharacterNetworkFactory: Networking {
    typealias EnumType = CharacterService
    static func getService(from type: EnumType) -> Requestable {
        switch type {
        case .list(let name):
            return CharacterNetwork(name)
            
        }
    }
}

extension CharacterNetworkFactory {
    
    private struct CharacterNetwork: Requestable {
        private var api_key: String
        private var ts: String
        private var hash: String
        private var name: String
        var method: HTTPMethod = .get
        var path: String = ""
        var parameters: [String : Any] {
            var params = [
                "apikey": api_key,
                "hash": hash,
                "ts": ts
            ]
            if (name != ""){
                params.updateValue(name, forKey: "nameStartsWith")
            }
            return params
        }
        
        init(_ name: String){
            self.api_key = PersistentData.shared.apiKey.value
            self.hash = PersistentData.shared.hash.value
            self.ts = PersistentData.shared.ts.value
            self.name = name
        }
    }
}
