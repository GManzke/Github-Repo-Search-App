//
//  ViewController.swift
//  GithubRepoSearch
//
//  Created by Gabriel Manzke on 07/05/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchButton: CustomButton!
    
    var interactor: HomeInteractorProtocol?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func didTapSearch(_ sender: Any) {
        
        print(searchBar.text!)
    }
    
    func setup() {
        let controller = self
        let interactor = HomeInteractor()
        let presenter = HomePresenter()
        controller.interactor = interactor
        interactor.presenter = presenter
        presenter.controller = controller
    }

}

