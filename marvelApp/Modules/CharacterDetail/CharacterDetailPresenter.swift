//
//  CharacterDetailPresenter.swift
//  marvelApp
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Social
import Kingfisher
import AVFoundation
class CharacterDetailPresenter: CharacterDetailViewToPresenterProtocol {
    
    var data: Marvel?
    
    var view: CharacterDetailPresenterToViewProtocol?
    var interactor: CharacterDetailPresenterToInteractorProtocol?
    var router: CharacterDetailPresenterToRouterProtocol?
    
    func updateView() {
        showInfo()
        showImage()
    }
    
    private func showInfo(){
        view?.heroeName.text = data?.name
        view?.heroeDesc.text = data?.description
    }
    private func showImage(){
        let thumbNailUrl = URL(string: (data?.thumbnail.fullName)! )
        view?.coverImg.kf.setImage(with: thumbNailUrl)
    }
}

extension CharacterDetailPresenter: CharacterDetailInteractorToPresenterProtocol {
}
