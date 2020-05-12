//
//  Repositories.swift
//  GithubRepoSearch
//
//  Created by Gabriel Manzke on 10/05/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

struct Repositories: Codable {
    let totalCount: Int
    let incompleteResults: Bool
    let items: [Item]

    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case incompleteResults = "incomplete_results"
        case items
    }
}
