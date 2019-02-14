//
//  MusicListTableDelegate.swift
//  viperProject
//
//  Created by Hamza Jerbi on 21/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


protocol MusicListTableActionDelegate: class {
    func navigate(index: Int)
}
final class MusicListTableDelegate: NSObject, UITableViewDelegate {
    
    weak var delegate: MusicListTableActionDelegate?
    
    init(actionDelegate: MusicListTableActionDelegate) {
        super.init()
        self.delegate = actionDelegate
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.navigate(index: indexPath.row)
    }
}

