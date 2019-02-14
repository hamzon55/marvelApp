//
//  CharacterDetailRouter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit

class CharacterDetailRouter: CharacterDetailPresenterToRouterProtocol{
  
    class func createModule(data: CharacterModel, index: Int) -> UIViewController{
        let view = CharacterDetailViewController()
        let presenter: CharacterDetailViewToPresenterProtocol & CharacterDetailInteractorToPresenterProtocol = CharacterDetailPresenter()
        let interactor: CharacterDetailPresenterToInteractorProtocol = CharacterDetailInteractor()
        let router: CharacterDetailPresenterToRouterProtocol = CharacterDetailRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        return view
    }
    

}
