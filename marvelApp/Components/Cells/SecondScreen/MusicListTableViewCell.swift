//
//  MusicListTableViewCell.swift
//  viperProject
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


class MusicListTableViewCell : UITableViewCell {
    
    
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var cellView: UIView!

    @IBOutlet weak var albumTitle: UILabel!
    @IBOutlet weak var duration: UILabel!
    @IBOutlet weak var musicGenre: UILabel!
    @IBOutlet weak var imageSinger: UIImageView!
    @IBOutlet weak var priceSong: UILabel!
    @IBOutlet weak var titleSong: UILabel!
    @IBOutlet weak var artisteName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static var cellType: String{
        return String(describing: self)
    }
    func displayCell(character: CharacterModel){
        artisteName.text = character.name
        albumTitle.text = character.description
       
        

    }
}

