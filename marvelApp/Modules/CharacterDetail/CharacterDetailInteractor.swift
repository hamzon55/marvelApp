//
//  CharacterDetailInteractor.swift
//  marvelApp
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import RxSwift

class CharacterDetailInteractor: CharacterDetailPresenterToInteractorProtocol{

    var presenter: CharacterDetailInteractorToPresenterProtocol?
    
    var artistName: String?
    var trackName: String?
    var artworkUrl100: String?
    var previewUrl: String?
   

}
