//
//  Item.swift
//  GithubRepoSearch
//
//  Created by Gabriel Manzke on 10/05/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

struct Item: Codable {
    let id: Int
    let nodeID, name, fullName: String
    let itemPrivate: Bool
    let owner: Owner
    let htmlURL: String
    let itemDescription: String
    let score: Int

    enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case name
        case fullName = "full_name"
        case itemPrivate = "private"
        case owner
        case htmlURL = "html_url"
        case itemDescription = "description"
        case score
    }
}
