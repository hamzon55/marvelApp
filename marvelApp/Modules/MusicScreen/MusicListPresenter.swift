//
//  MusicListPresenter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 12/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
 

import UIKit


class MusicListPresenter: MusicListViewToPresenterProtocol {
    
    var view: MusicListPresenterToViewProtocol?
    var interactor: MusicListPresenterToInteractorProtocol?
    var router: MusicListPresenterToRouterProtocol?
    
    private var data = SingletonMusic.sharedInstance.resultsArray
    private lazy var tableDelegate: MusicListTableDelegate = {
        return MusicListTableDelegate(actionDelegate: self )
    }()
    private var tableDataSource: MusicListTableDataSource?

    func updateView() {
        showLoader()
        configTable()
        interactor?.musicList()
    }
    
    private func configTable() {
        view?.tableView.register(UINib(nibName: MusicListTableViewCell.cellType, bundle: nil), forCellReuseIdentifier: MusicListTableViewCell.cellType)
        view?.tableView.tableFooterView = UIView()
        view?.searchView.placeholder = NSLocalizedString("placeholder_searchView", comment: "")
        view?.tableView.delegate = tableDelegate
        tableDataSource = MusicListTableDataSource()
        view?.tableView.dataSource = tableDataSource
    }
}

extension MusicListPresenter: MusicListInteractorToPresenterProtocol {
 
    
  
    
    func fetchedMusicListDataSuccess(_ model: CharacterResponse) {
        guard let list = model.data.results else { return }
        data = list
        SingletonMusic.sharedInstance.resultsArray = list
        tableDataSource = MusicListTableDataSource(data: list)
        view?.tableView.dataSource = tableDataSource
        view?.tableView.reloadData()
        hideLoader()
    }
    
    func fetchedMusicListDataFailed(_ error: Error) {
        hideLoader()
    }
    
    func searchButtonPressed(){
        showLoader()
        guard let text = view?.searchView.text else { return }
        if text != "" {
            interactor?.search(withInfo: text)
        }
    }
}
extension MusicListPresenter : MusicListTableActionDelegate{
 
    
    func navigate(index: Int) {

        guard let vc = view as? UIViewController else { return }
        router?.navigateToDetail(origin: vc, model: data[index], index)
    }
    
    
}
