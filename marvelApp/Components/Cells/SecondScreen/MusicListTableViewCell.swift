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
    func displayCell(music: MusicResultsList){
        artisteName.text = music.artistName
        albumTitle.text = music.collectionName
        titleSong.text = music.trackName
        priceSong.text = NSString(format: "$".appending("%.2f") as NSString, music.trackPrice ?? "0") as String
        musicGenre.text = music.primaryGenreName
        releaseDate.text = music.releaseDate
        displayImage(image: music.artworkUrl100)
        displayDuration(ms: music.trackTimeMillis)
        

    }
    
    private func displayImage(image: String?){
        guard let img = image else { return }
        let url = URL(string: img)
        let data = try? Data(contentsOf: url!)
        imageSinger.image = UIImage(data: data!)
    }
    
    private func displayDuration(ms: Int?){
        guard let ms = ms else { return }
        duration.text = ms.msToSec.minuteSecondFormat
    }
}

