//
//  MusicListInteractor.swift
//  viperProject
//
//  Created by Hamza Jerbi on 12/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit
import RxSwift

class MusicListInteractor: MusicListPresenterToInteractorProtocol{
  
    var presenter: MusicListInteractorToPresenterProtocol?
    
    private let webService = WebService()
    private let disposeBag = DisposeBag()
    
    func musicList() {
        let list = webService.load(modelType: CharacterResponse.self, from: .Music(serviceType: .list(apikey: DynamicVariables.Networking.Url.apikey, hash: DynamicVariables.Networking.Url.hash, ts: DynamicVariables.Networking.Url.ts)))
            list.observeOn(MainScheduler.instance)
            .subscribe(onNext: { [weak self] (results) in
                results.validate {
                    self?.presenter?.fetchedMusicListDataSuccess(results)
                }
                }, onError: { [weak self] (error) in
                    self?.presenter?.fetchedMusicListDataFailed(error)
            }).disposed(by: disposeBag)
    }
    
    func search(withInfo: String) {
        let item = translateSearch(item: withInfo)
        DynamicVariables.Networking.Url.item_search = item
        musicList()
    }
    
    private func translateSearch(item: String) -> String {
        if item.contains(" "){
            return item.replacingOccurrences(of: " ", with: "+")
        } else {
            return item
        }
    }
}

