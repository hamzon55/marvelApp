//
//  PersistentData.swift
//  marvelApp
//
//  Created by Hamza Jerbi on 23/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation

private enum Keys: String {
    case baseURL
    case apiKey
    case hash
    case ts
}

final class PersistentData {
    static let shared = PersistentData()
    private init(){}
    
    var baseURL = Persistent<String>(Keys.baseURL.rawValue)
    var apiKey = Persistent<String>(Keys.apiKey.rawValue)
    var hash = Persistent<String>(Keys.hash.rawValue)
    var ts = Persistent<String>(Keys.ts.rawValue)
}
