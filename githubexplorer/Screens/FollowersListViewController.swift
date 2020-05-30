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
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            
            switch result {
                case .success(let followers):
                    print(followers)
                
                case .failure(let error):
                    self.presentGFAlertOnMainThread(title: "Bad stuff happend", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemPink
        collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
    }
    
}
