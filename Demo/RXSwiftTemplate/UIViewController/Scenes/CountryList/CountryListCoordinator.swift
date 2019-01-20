//
//  CountryListCoordinator.swift
//  RXSwiftTemplate
//
//  Created by Alessandro Garcez on 19/01/19.
//  Copyright © 2019 Alessandro Garcez. All rights reserved.
//

import Foundation
import UIKit

struct CountryListCoordinator {
    
    private weak var context: UIViewController?
    
    init(context: UIViewController) {
        self.context = context
    }
    
    func start(animated: Bool) {
        
        let sceneIdentifier = "CountryList"
        let storyboard = UIStoryboard.init(name: sceneIdentifier, bundle: Bundle.main)
        
        guard let viewController = storyboard.instantiateViewController(
            withIdentifier: sceneIdentifier) as? CountryListViewController else {
                fatalError("Can not find viewController with identifier \(sceneIdentifier)")
        }

        viewController.interactor = CountryListInteractor(router: makeRouter(viewController: viewController),
                                                          presenter: makePresenter(),
                                                          dataProvider: DataServerLocal.self)
        
        if let _context = context as? UINavigationController {
            _context.pushViewController(viewController, animated: animated)
        }
        
    }
    
    private func makePresenter() -> CountryListPresenterInput {
        return CountryListPresenter()
    }
    
    private func makeRouter(viewController: CountryListViewController) -> CountryListRouterInput {
        return CountryListRouter(viewController: viewController)
    }
    
}
