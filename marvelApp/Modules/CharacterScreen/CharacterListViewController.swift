//
//  CharacterListViewController.swift
//  marvelApp
//
//  Created by Hamza Jerbi on 11/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


class CharacterListViewController: UIViewController, UISearchBarDelegate {
    
    var presenter: CharacterListViewToPresenterProtocol?
    
    
    @IBOutlet weak var searchView: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.updateView()
        searchView.delegate = self

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        presenter?.searchButtonPressed()
    }
}

extension CharacterListViewController: CharacterListPresenterToViewProtocol {
 
}
