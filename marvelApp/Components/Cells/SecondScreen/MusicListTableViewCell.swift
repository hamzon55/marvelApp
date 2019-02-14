//
//  MusicListTableViewCell.swift
//  viperProject
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


class MusicListTableViewCell : UITableViewCell {
    
    
    @IBOutlet weak var heroeDesc: UILabel!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var heroeName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static var cellType: String{
        return String(describing: self)
    }
    func displayCell(character: CharacterModel){
        heroeName.text = character.name
        heroeDesc.text = character.description
       
        

    }
}

