//
//  HomeRouter.swift
//  ViperSample
//
//  Created by Gamze Güven on 2.03.2020.
//  Copyright © 2020 Gamze Güven. All rights reserved.
//

import UIKit

protocol HomeRouterInterface {
    
}

class HomeRouter {
    func createModule() -> UIViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let interactor = HomeInteractor()
        let router = HomeRouter()
        let presenter = HomePresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        return view
    }
}

extension HomeRouter: HomeRouterInterface {
    
}

