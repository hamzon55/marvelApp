//
//  SingletonCharacter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 28/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation


class SingletonCharacter : NSObject {
    
    static let sharedInstance = SingletonCharacter()
    var resultsArray: [CharacterModel] = []
    private override init() { }
    
}
