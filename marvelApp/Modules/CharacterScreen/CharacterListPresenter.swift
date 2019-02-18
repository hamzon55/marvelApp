//
//  CharacterListPresenter.swift
//  viperProject
//
//  Created by Hamza Jerbi on 12/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
 

import UIKit


class CharacterListPresenter: CharacterListViewToPresenterProtocol {
    
    var view: CharacterListPresenterToViewProtocol?
    var interactor: CharacterListPresenterToInteractorProtocol?
    var router: CharacterListPresenterToRouterProtocol?
    
    private var data : [Marvel] = []
    private lazy var tableDelegate: CharacterListTableDelegate = {
        return CharacterListTableDelegate(actionDelegate: self )
    }()
    private var tableDataSource: CharacterListTableDataSource?

    func updateView() {
        showLoader()
        configTable()
        interactor?.CharacterList()
    }
    
    private func configTable() {
        view?.tableView.register(UINib(nibName: CharacterListTableViewCell.cellType, bundle: nil), forCellReuseIdentifier: CharacterListTableViewCell.cellType)
        view?.tableView.tableFooterView = UIView()
        view?.searchView.placeholder = NSLocalizedString("placeholder_searchView", comment: "")
        view?.tableView.delegate = tableDelegate
        tableDataSource = CharacterListTableDataSource()
        view?.tableView.dataSource = tableDataSource
        view?.tableView.rowHeight  = 160

    }
}

extension CharacterListPresenter: CharacterListInteractorToPresenterProtocol {
 
    
  
    
    func fetchedCharacterListDataSuccess(_ model: CharacterResponse) {
        guard let list = model.data.results else { return }
        data = list
        tableDataSource = CharacterListTableDataSource(data: list)
        view?.tableView.dataSource = tableDataSource
        view?.tableView.reloadData()
        hideLoader()
    }
    
    func fetchedCharacterListDataFailed(_ error: Error) {
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
extension CharacterListPresenter : CharacterListTableActionDelegate{
 
    
    func navigate(index: Int) {

        guard let vc = view as? UIViewController else { return }
        router?.navigateToDetail(origin: vc, model: data[index], index)
    }
    
    
}
