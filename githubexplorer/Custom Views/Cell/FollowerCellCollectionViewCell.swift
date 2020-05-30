//
//  FollowerCell.swift
//  githubexplorer
//
//  Created by Amit Biswas on 5/3/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    
    static let reuseID = "FollowerCell"
    
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let usernameLabel  = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Init(Coder:) has not been implemented")
    }
}
