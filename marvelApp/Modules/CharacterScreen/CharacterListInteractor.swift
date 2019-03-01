//
//  CharacterListInteractor.swift
//  viperProject
//
//  Created by Hamza Jerbi on 12/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit
import RxSwift

class CharacterListInteractor: CharacterListPresenterToInteractorProtocol{
  
    var presenter: CharacterListInteractorToPresenterProtocol?
    
    private let webService = WebService()
    private let disposeBag = DisposeBag()
    
    func CharacterList() {
        let list = webService.load(modelType: CharacterResponse.self, from: .Character(serviceType: .list(name: DynamicVariables.Networking.Url.item_search)))
            list.observeOn(MainScheduler.instance)
            .subscribe(onNext: { [weak self] (results) in
                results.validate {
                    self?.presenter?.fetchedCharacterListDataSuccess(results)
                }
                }, onError: { [weak self] (error) in
                    self?.presenter?.fetchedCharacterListDataFailed(error)
            }).disposed(by: disposeBag)
    }
    
    func search(withInfo: String) {
        let item = translateSearch(item: withInfo)
        DynamicVariables.Networking.Url.item_search = item
        CharacterList()
    }
    
    private func translateSearch(item: String) -> String {
        if item.contains(" "){
            return item.replacingOccurrences(of: " ", with: "+")
        } else {
            return item
        }
    }
}

