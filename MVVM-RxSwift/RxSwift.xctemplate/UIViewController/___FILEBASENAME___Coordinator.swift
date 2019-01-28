//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit

struct ___VARIABLE_sceneName___Coordinator {
    
    private weak var context: UIViewController?
    
    init(context: UIViewController) {
        self.context = context
    }
    
    func start(animated: Bool) {
        
        let sceneIdentifier = "___VARIABLE_sceneName___"
        let storyboard = UIStoryboard(name: sceneIdentifier, bundle: Bundle.main)
        
        guard let viewController = storyboard.instantiateViewController(
            withIdentifier: sceneIdentifier) as? ___VARIABLE_sceneName___ViewController else {
                fatalError("Can not find viewController with identifier \(sceneIdentifier)")
        }

        viewController.interactor = ___VARIABLE_sceneName___Interactor(router: makeRouter(viewController: viewController),
                                                          presenter: makePresenter())
        
        if let _context = context as? UINavigationController {
            _context.pushViewController(viewController, animated: animated)
        }
        
    }
    
    private func makePresenter() -> ___VARIABLE_sceneName___PresenterInput {
        return ___VARIABLE_sceneName___Presenter()
    }
    
    private func makeRouter(viewController: ___VARIABLE_sceneName___ViewController) -> ___VARIABLE_sceneName___RouterInput {
        return ___VARIABLE_sceneName___Router(viewController: viewController)
    }
    
}
