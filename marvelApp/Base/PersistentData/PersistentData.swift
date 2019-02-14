//
//  PersistentData.swift
//  viperProject
//
//  Created by Hamza Jerbi on 23/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation

private enum Keys: String {
    case baseURL
    
}

final class PersistentData {
    static let shared = PersistentData()
    private init(){}
    
    var baseURL = Persistent<String>(Keys.baseURL.rawValue)
  
}
