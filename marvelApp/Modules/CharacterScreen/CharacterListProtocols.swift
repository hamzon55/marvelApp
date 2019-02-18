//
//  CharacterListProtocols.swift
//  viperProject
//
//  Created by Hamza Jerbi on 12/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


protocol CharacterListPresenterToViewProtocol: class{
    var tableView: UITableView!  { get set }
    var searchView: UISearchBar! { get set }
}

protocol CharacterListInteractorToPresenterProtocol: class{
    func fetchedCharacterListDataSuccess(_ model: CharacterResponse)
    func fetchedCharacterListDataFailed(_ error: Error)
    func searchButtonPressed()

}

protocol CharacterListPresenterToInteractorProtocol: class{
    var presenter: CharacterListInteractorToPresenterProtocol? {get set}
    func CharacterList()
    func search(withInfo: String)

}

protocol CharacterListViewToPresenterProtocol: class{
    var view: CharacterListPresenterToViewProtocol? {get set}
    var interactor: CharacterListPresenterToInteractorProtocol? {get set}
    var router: CharacterListPresenterToRouterProtocol? {get set}
    func updateView()
    func searchButtonPressed()
}

protocol CharacterListPresenterToRouterProtocol: class{
    static func createModule() -> UIViewController
    
    func navigateToDetail(origin : UIViewController, model: Marvel)
}
