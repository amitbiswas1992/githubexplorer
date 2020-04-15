//
//  FollowersListViewController.swift
//  githubexplorer
//
//  Created by Amit Biswas on 4/14/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class FollowersListViewController: UIViewController {
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true 
    }
    
}
