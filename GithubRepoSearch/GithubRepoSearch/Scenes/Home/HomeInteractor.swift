//
//  HomeScreenInteractor.swift
//  GithubRepoSearch
//
//  Created by Gabriel Manzke on 07/05/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation

protocol HomeInteractorProtocol {
    func getData()
}

class HomeInteractor: HomeInteractorProtocol {
    
    var presenter: HomePresenterProtocol?
    
    func getData() {
        
    }
    
    
}
