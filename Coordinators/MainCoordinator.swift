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
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: false)
    }
    
    func buySubscription() {
        let buyViewController = BuyViewController.instantiate()
        buyViewController.coordinator = self
        navigationController.pushViewController(buyViewController, animated: true)
    }
    
    func createAccount() {
        let createAccountViewController = CreateAccountViewController.instantiate()
        createAccountViewController.coordinator = self
        navigationController.pushViewController(createAccountViewController, animated: true)
    }
}
