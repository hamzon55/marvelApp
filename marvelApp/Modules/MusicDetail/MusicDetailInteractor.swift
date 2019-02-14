//
//  MusicDetailInteractor.swift
//  viperProject
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit
import RxSwift

class MusicDetailInteractor: MusicDetailPresenterToInteractorProtocol{

    var presenter: MusicDetailInteractorToPresenterProtocol?
    
    var artistName: String?
    var trackName: String?
    var artworkUrl100: String?
    var previewUrl: String?
   

}
