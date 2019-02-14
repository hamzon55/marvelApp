//
//  MusicDetailPresenter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit
import Social
import AVFoundation
class MusicDetailPresenter: MusicDetailViewToPresenterProtocol {
    
    
    var data = SingletonMusic.sharedInstance.resultsArray
    let count = SingletonMusic.sharedInstance.resultsArray.count
    
    var dataModel: MusicDetailModel!

    
    var index = Int()
    var currentIndex = 0
    
    var view: MusicDetailPresenterToViewProtocol?
    var interactor: MusicDetailPresenterToInteractorProtocol?
    var router: MusicDetailPresenterToRouterProtocol?
    
    func updateView() {
        
        currentIndex = index
        showInfo()

    }
    
    private func showInfo(){
        view?.artisteName.text = data[currentIndex].name
        view?.trackName.text = data[currentIndex].description
    }
    

    

}

extension MusicDetailPresenter: MusicDetailInteractorToPresenterProtocol {
    
}
