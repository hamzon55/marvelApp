//
//  MusicNetwork.swift
//  viperProject
//
//  Created by Hamza Jerbi on 23/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation

enum MusicService: ServiceEnum {
    case list(term: String)
}

struct MusicNetworkFactory: Networking {
    typealias EnumType = MusicService
    static func getService(from type: EnumType) -> Requestable {
        switch type {
        case .list(let term):
            return MusicNetwork(term)
    
        }
    }
}

extension MusicNetworkFactory {
    
    private struct MusicNetwork: Requestable {
        private var term: String
        var method: HTTPMethod = .get
        var path: String = ""
        var parameters: [String : Any] {
            return [
                "term": "\(term)"
            ]
        }
        
        init(_ term: String){
           self.term = term
        }
    }
}


