//
//  MusicListRouter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 12/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit

class MusicListRouter: MusicListPresenterToRouterProtocol{
   
    class func createModule() -> UIViewController{
        
        let view = MusicListViewController()
        let presenter: MusicListViewToPresenterProtocol & MusicListInteractorToPresenterProtocol = MusicListPresenter()
        let interactor: MusicListPresenterToInteractorProtocol = MusicListInteractor()
        let router: MusicListPresenterToRouterProtocol = MusicListRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
    
    func navigateToDetail(origin: UIViewController, model: MusicResultsList, _ index: Int) {
        origin.navigationController?.pushViewController(MusicDetailRouter.createModule(data: model, index: index), animated: true)
    }
}
