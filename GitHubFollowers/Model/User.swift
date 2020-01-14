//
//  User.swift
//  GitHubFollowers
//
//  Created by Darragh Blake on 09/01/2020.
//  Copyright © 2020 Darragh Blake. All rights reserved.
//

import Foundation

struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let followers: Int
    let following: Int
    let htmlUrl: String
    let createdAt: String
}
