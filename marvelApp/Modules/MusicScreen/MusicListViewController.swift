//
//  MusicListViewController.swift
//  viperProject
//
//  Created by Hamza Jerbi on 11/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit


class MusicListViewController: UIViewController, UISearchBarDelegate {
    
    var presenter: MusicListViewToPresenterProtocol?
    
    
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
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        presenter?.searchButtonPressed()

    }
}

extension MusicListViewController: MusicListPresenterToViewProtocol {
 
}
