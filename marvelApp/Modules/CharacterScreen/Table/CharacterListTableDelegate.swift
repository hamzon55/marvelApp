//
//  CharacterListTableDelegate.swift
//  marvelApp
//
//  Created by Hamza Jerbi on 21/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


protocol CharacterListTableActionDelegate: class {
    func navigate(index: Int)
}
final class CharacterListTableDelegate: NSObject, UITableViewDelegate {
    
    weak var delegate: CharacterListTableActionDelegate?
    
    init(actionDelegate: CharacterListTableActionDelegate) {
        super.init()
        self.delegate = actionDelegate
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.navigate(index: indexPath.row)
    }
}

