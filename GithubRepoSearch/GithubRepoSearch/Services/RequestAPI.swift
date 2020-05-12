//
//  RequestAPI.swift
//  GithubRepoSearch
//
//  Created by Gabriel Manzke on 12/05/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

struct RequestAPI {
    
    static let searchUrl = "https://api.github.com/search/repositories?q=tetris+language:assembly&sort=stars&order=desc&page=1&per_page=1"
    
    static func performAPIRequest () {
        if let url = URL(string: searchUrl) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    self.parseJSON(searchData: safeData)
                }
            }
            task.resume()
        }
        
    }
    
    static func parseJSON (searchData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(Repositories.self, from: searchData)
            print(decodedData.totalCount)
        } catch  {
            print(error)
        }
    }
}
