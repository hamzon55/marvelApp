//
//  CharacterListTableDataSource.swift
//  viperProject
//
//  Created by Hamza Jerbi on 21/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit

final class CharacterListTableDataSource: NSObject, UITableViewDataSource {
    
    var data :[Marvel]?
    convenience init(data: [Marvel]) {
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CharacterListTableViewCell.cellType, for: indexPath) as? CharacterListTableViewCell
            else{ return UITableViewCell()}
        cell.displayCell(character: data![indexPath.row])
        return cell
    }
    
    
    
}
