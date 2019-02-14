//
//  MusicListProtocols.swift
//  viperProject
//
//  Created by Hamza Jerbi on 12/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


protocol MusicListPresenterToViewProtocol: class{
    var tableView: UITableView!  { get set }
    var searchView: UISearchBar! { get set }
}

protocol MusicListInteractorToPresenterProtocol: class{
    func fetchedMusicListDataSuccess(_ model: MusicListResponse)
    func fetchedMusicListDataFailed(_ error: Error)
    func searchButtonPressed()

}

protocol MusicListPresenterToInteractorProtocol: class{
    var presenter: MusicListInteractorToPresenterProtocol? {get set}
    func musicList()
    func search(withInfo: String)

}

protocol MusicListViewToPresenterProtocol: class{
    var view: MusicListPresenterToViewProtocol? {get set}
    var interactor: MusicListPresenterToInteractorProtocol? {get set}
    var router: MusicListPresenterToRouterProtocol? {get set}
    func updateView()
    func searchButtonPressed()
}

protocol MusicListPresenterToRouterProtocol: class{
    static func createModule() -> UIViewController
    
    func navigateToDetail(origin : UIViewController, model: MusicResultsList, _ index: Int)
}
