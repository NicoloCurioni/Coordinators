//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Nicolò Curioni on 07/08/22.
//

import Foundation
import UIKit


class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = ViewController.instantiate()
        navigationController.pushViewController(viewController, animated: false)
    }
}
