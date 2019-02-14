//
//  MusicNetwork.swift
//  viperProject
//
//  Created by Hamza Jerbi on 23/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation

enum MusicService: ServiceEnum {
    case list()
}

struct MusicNetworkFactory: Networking {
    typealias EnumType = MusicService
    static func getService(from type: EnumType) -> Requestable {
        switch type {
        case .list():
            return MusicNetwork()
    
        }
    }
}

extension MusicNetworkFactory {
    
    private struct MusicNetwork: Requestable {
        private var api_key: String
        private var ts: String
        private var hash: String
        var method: HTTPMethod = .get
        var path: String = ""
        var parameters: [String : Any] {
            return [
                "apikey": api_key,
                "hash": hash,
                "ts": ts
                
            ]
        }
        
        init(){
            self.api_key = PersistentData.shared.apiKey.value
            self.hash = PersistentData.shared.hash.value
            self.ts = PersistentData.shared.ts.value
        }
    }
}


