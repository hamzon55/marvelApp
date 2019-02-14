//
//  ServiceProtocols.swift
//  viperProject
//
//  Created by Hamza Jerbi on 23/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Foundation

protocol ServiceEnum {}

protocol Networking {
    associatedtype EnumType: ServiceEnum
    static func getService(from type: EnumType) -> Requestable
}
