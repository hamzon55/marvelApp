//
//  CharacterDetailProtocols.swift
//  viperProject
//
//  Created by Hamza Jerbi on 20/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.
//

import UIKit

protocol CharacterDetailPresenterToViewProtocol: class{
    var playPauseBtn: UIButton! { get set }
    var coverImg: UIImageView! { get set }
    var artisteName: UILabel! { get set }
    var trackName: UILabel! { get set }
    var sharedBtn: UIButton! {get set}
}

protocol CharacterDetailInteractorToPresenterProtocol: class{
}

protocol CharacterDetailPresenterToInteractorProtocol: class{
    var presenter: CharacterDetailInteractorToPresenterProtocol? {get set}

}

protocol CharacterDetailViewToPresenterProtocol: class{
    var view: CharacterDetailPresenterToViewProtocol? {get set}
    var interactor: CharacterDetailPresenterToInteractorProtocol? {get set}
    var router: CharacterDetailPresenterToRouterProtocol? {get set}
    func updateView()
    var index: Int { get set }

}

protocol CharacterDetailPresenterToRouterProtocol: class{
    static func createModule(data: CharacterModel, index: Int) -> UIViewController
}
