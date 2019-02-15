//
//  CharacterListTableViewCell.swift
//  viperProject
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


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
    func displayCell(character: CharacterModel){
        heroeName.text = character.name
        displayImage(image: character.thumbnail.fullName )

        

    }
    
    private func displayImage(image: String?){
        guard let img = image else { return }
        guard  let url = URL(string: img) else { return}
        guard let data = try? Data(contentsOf: url) else { return}
        heroeImg.image = UIImage(data: data)
        
}

}
