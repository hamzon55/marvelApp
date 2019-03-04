//
//  CharacterDetailRouter.swift
//  marvelApp
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit

class CharacterDetailRouter: CharacterDetailPresenterToRouterProtocol{
  
    class func createModule(data: Marvel) -> UIViewController{
        let view = CharacterDetailViewController()
        let presenter: CharacterDetailViewToPresenterProtocol & CharacterDetailInteractorToPresenterProtocol = CharacterDetailPresenter()
        let interactor: CharacterDetailPresenterToInteractorProtocol = CharacterDetailInteractor()
        let router: CharacterDetailPresenterToRouterProtocol = CharacterDetailRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.data = data
        presenter.interactor = interactor
        interactor.presenter = presenter
        return view
    }
    

}
