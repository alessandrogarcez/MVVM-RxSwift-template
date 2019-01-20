//
//  AppCoordinator.swift
//  RXSwiftTemplate
//
//  Created by Alessandro Garcez on 19/01/19.
//  Copyright © 2019 Alessandro Garcez. All rights reserved.
//

import UIKit

struct AppCoordinator {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        
        let navigationController = UINavigationController()
        let listCoordinator = CountryListCoordinator(context: navigationController)
        listCoordinator.start(animated: false)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
    }
    
}
