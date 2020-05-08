//
//  CustomButton.swift
//  GithubRepoSearch
//
//  Created by Gabriel Manzke on 07/05/20.
//  Copyright © 2020 Gabriel Manzke. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = 12
        layer.shadowColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        layer.shadowOffset.height = 2
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.3
        layer.masksToBounds = false
    }
}
