//
//  CharacterListRouter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 12/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit

class CharacterListRouter: CharacterListPresenterToRouterProtocol{
   
    class func createModule() -> UIViewController{
        
        let view = CharacterListViewController()
        let presenter: CharacterListViewToPresenterProtocol & CharacterListInteractorToPresenterProtocol = CharacterListPresenter()
        let interactor: CharacterListPresenterToInteractorProtocol = CharacterListInteractor()
        let router: CharacterListPresenterToRouterProtocol = CharacterListRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
    
    func navigateToDetail(origin: UIViewController, model: Marvel, _ index: Int) {
        origin.navigationController?.pushViewController(CharacterDetailRouter.createModule(data: model, index: index), animated: true)
    }
}
