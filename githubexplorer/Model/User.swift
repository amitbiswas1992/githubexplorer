//
//  User.swift
//  githubexplorer
//
//  Created by Amit Biswas on 4/20/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htlpUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
