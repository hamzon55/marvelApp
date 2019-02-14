//
//  CharacterDetailViewController.swift
//  viperProject
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit
import Social
class CharacterDetailViewController: UIViewController {
    @IBOutlet weak var sharedBtn: UIButton!
    
    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var artisteName: UILabel!
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
