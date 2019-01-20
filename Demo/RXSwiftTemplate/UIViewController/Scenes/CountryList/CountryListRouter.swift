//
//  CountryListRouter.swift
//  RXSwiftTemplate
//
//  Created by Alessandro Garcez on 28/07/18.
//  Copyright (c) 2018 Alessandro Garcez. All rights reserved.
//

import Foundation

protocol CountryListRouterInput: class{
    
    func goToPreviousScreen()
    func navigateToList()
    
}

class CountryListRouter: CountryListRouterInput {

    private weak var viewController: CountryListViewController?

    init(viewController: CountryListViewController) {
        self.viewController = viewController
    }
    
    func goToPreviousScreen(){
        viewController?.navigationController?.popViewController(animated: true)
    }
    
    func navigateToList() {
        guard let navigationController = viewController?.navigationController else { return }
        let coord = CountryListCoordinator(context: navigationController)
        coord.start(animated: true)
    }

}

