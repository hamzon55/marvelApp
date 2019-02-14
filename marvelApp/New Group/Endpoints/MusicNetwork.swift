//
//  MusicNetwork.swift
//  viperProject
//
//  Created by Hamza Jerbi on 23/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation

enum MusicService: ServiceEnum {
    case list(apikey: String,hash: String,ts: String)
}

struct MusicNetworkFactory: Networking {
    typealias EnumType = MusicService
    static func getService(from type: EnumType) -> Requestable {
        switch type {
        case .list(let apikey, let hash,let ts):
            return MusicNetwork(apikey,hash,ts)
    
        }
    }
}

extension MusicNetworkFactory {
    
    private struct MusicNetwork: Requestable {
        //private var term: String
        private var api_key: String
        private var ts: String
        private var hash: String
        var method: HTTPMethod = .get
        var path: String = ""
        var parameters: [String : Any] {
            return [
                "apikey": "\(api_key)",
                "hash": "\(hash)",
                "ts": "\(ts)"
                
            ]
        }
        
        init(_ api_key: String,_ hash: String,_ ts: String){
           self.api_key = api_key
            self.hash = hash
            self.ts = ts
        }
    }
}


