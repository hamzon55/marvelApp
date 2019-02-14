//
//  MainPresenter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 11/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit

class MainPresenter: MainViewToPresenterProtocol {
    
    var view: MainPresenterToViewProtocol?
    var interactor: MainPresenterToInteractorProtocol?
    var router: MainPresenterToRouterProtocol?
    
    func nextButtonPressed() {
        guard let vc = view as? UIViewController else { return }
        router?.navigateToNextScreen(origin: vc)
    }
}

extension MainPresenter: MainInteractorToPresenterProtocol {
    
}
