//
//  CharacterDetailViewController.swift
//  marvelApp
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import Social
class CharacterDetailViewController: UIViewController {
    
    @IBOutlet weak var heroeName: UILabel!
    @IBOutlet weak var heroeDesc: UILabel!
    @IBOutlet weak var coverImg: UIImageView!

    var presenter: CharacterDetailViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.updateView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.updateView()
    }

}

extension CharacterDetailViewController: CharacterDetailPresenterToViewProtocol {

    

    
}
