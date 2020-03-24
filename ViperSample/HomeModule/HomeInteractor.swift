//
//  HomeInteractor.swift
//  ViperSample
//
//  Created by Gamze Güven on 2.03.2020.
//  Copyright © 2020 Gamze Güven. All rights reserved.
//

import Foundation

protocol HomeInteractorInterface {
    func getTitle() -> HomeModel
}

class HomeInteractor { }

extension HomeInteractor: HomeInteractorInterface {
    func getTitle() -> HomeModel {
        return HomeModel(title: "Home VIPER")
    }
}


