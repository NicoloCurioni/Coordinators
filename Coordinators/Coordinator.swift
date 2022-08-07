//
//  Coordinator.swift
//  Coordinators
//
//  Created by Nicolò Curioni on 07/08/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
