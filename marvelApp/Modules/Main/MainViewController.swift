//
//  MainViewController.swift
//  marvelApp
//
//  Created by Hamza Jerbi on 11/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var presenter: MainViewToPresenterProtocol?
    @IBOutlet weak var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.startButton.setTitle("mainbutton_title".localized(), for: .normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onStartButton(_ sender: Any) {
        presenter?.nextButtonPressed()
    }
}

extension MainViewController: MainPresenterToViewProtocol {
}
