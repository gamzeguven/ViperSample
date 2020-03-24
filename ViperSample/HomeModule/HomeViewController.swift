//
//  HomeViewController.swift
//  ViperSample
//
//  Created by Gamze Güven on 1.03.2020.
//  Copyright © 2020 Gamze Güven. All rights reserved.
//

import UIKit

protocol HomeViewControllerInterface: class {
    func updateTitle()
}

class HomeViewController: UIViewController {
    
    @IBOutlet var helloLabel: UILabel!
    var presenter: HomePresenterInterface!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.viewDidLoad()
        
    }
}

extension HomeViewController: HomeViewControllerInterface {
    func updateTitle() {
        helloLabel.text = "Hello VIPER"
    }
}

