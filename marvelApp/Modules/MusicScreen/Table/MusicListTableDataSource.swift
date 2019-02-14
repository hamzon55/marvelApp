//
//  MusicListTableDataSource.swift
//  viperProject
//
//  Created by Hamza Jerbi on 21/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit

final class MusicListTableDataSource: NSObject, UITableViewDataSource {
    
    var data :[CharacterModel]?
    convenience init(data: [CharacterModel]) {
        self.init()
        self.data = data
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if let list = data?.count {
            return list
        } else {
            return 0
        }
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicListTableViewCell.cellType, for: indexPath) as? MusicListTableViewCell
            else{ return UITableViewCell()}
        cell.displayCell(character: data![indexPath.row])
        return cell
    }
    
    
    
}
