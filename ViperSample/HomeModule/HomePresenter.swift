//
//  HomePresenter.swift
//  ViperSample
//
//  Created by Gamze Güven on 1.03.2020.
//  Copyright © 2020 Gamze Güven. All rights reserved.
//

import Foundation
import UIKit

protocol HomePresenterInterface {
    func viewDidLoad()
}

class HomePresenter {
    weak var view: HomeViewControllerInterface?
    var interactor: HomeInteractorInterface
    var router: HomeRouterInterface
    
    init(view: HomeViewControllerInterface, interactor: HomeInteractorInterface, router: HomeRouterInterface) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension HomePresenter: HomePresenterInterface {
    func viewDidLoad() {
        let homeModel = self.interactor.getTitle()
        print("Home Model value is \(homeModel)")
        view?.updateTitle()
    }
}

