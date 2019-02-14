//
//  SingletonMusic.swift
//  viperProject
//
//  Created by Hamza Jerbi on 28/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation


class SingletonMusic : NSObject {
    
    static let sharedInstance = SingletonMusic()
    var resultsArray: [MusicResultsList] = []
    private override init() { }
    
}
