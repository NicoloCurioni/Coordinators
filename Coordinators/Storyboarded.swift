//
//  Storyboarded.swift
//  Coordinators
//
//  Created by Nicolò Curioni on 07/08/22.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
