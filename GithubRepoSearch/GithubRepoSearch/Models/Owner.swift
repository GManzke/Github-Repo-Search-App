//
//  Owner.swift
//  GithubRepoSearch
//
//  Created by Gabriel Manzke on 10/05/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

struct Owner: Codable {
    let login: String
    let id: Int
    let nodeID: String
    let avatarURL: String

    enum CodingKeys: String, CodingKey {
        case login, id
        case nodeID = "node_id"
        case avatarURL = "avatar_url"
    }
}
