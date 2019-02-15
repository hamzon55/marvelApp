//
//  CharacterDetailPresenter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit
import Social
import AVFoundation
class CharacterDetailPresenter: CharacterDetailViewToPresenterProtocol {
    
    
    var data = SingletonCharacter.sharedInstance.resultsArray
    let count = SingletonCharacter.sharedInstance.resultsArray.count
    
    var dataModel: CharacterData!

    
    var index = Int()
    var currentIndex = 0
    
    var view: CharacterDetailPresenterToViewProtocol?
    var interactor: CharacterDetailPresenterToInteractorProtocol?
    var router: CharacterDetailPresenterToRouterProtocol?
    
    func updateView() {
        
        currentIndex = index
        showInfo()

    }
    
    private func showInfo(){
        view?.heroeName.text = data[currentIndex].name
        view?.heroeDesc.text = data[currentIndex].description
    }
    

    

}

extension CharacterDetailPresenter: CharacterDetailInteractorToPresenterProtocol {
    
}
