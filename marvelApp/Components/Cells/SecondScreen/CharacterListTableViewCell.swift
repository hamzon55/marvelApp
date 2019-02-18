//
//  CharacterListTableViewCell.swift
//  viperProject
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit
import Kingfisher

class CharacterListTableViewCell : UITableViewCell {
    
    
    @IBOutlet weak var heroeImg: UIImageView!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var heroeName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static var cellType: String{
        return String(describing: self)
    }
    func displayCell(character: Marvel){
        heroeName.text = character.name
        let thumbNailUrl = URL(string: character.thumbnail.fullName)
        self.heroeImg.kf.setImage(with: thumbNailUrl)
    }
}

