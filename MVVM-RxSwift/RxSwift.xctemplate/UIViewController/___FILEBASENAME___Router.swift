//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_sceneName___RouterInput: class{
    
    func goToPreviousScreen()
    
}

class ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___RouterInput {

    private weak var viewController: ___VARIABLE_sceneName___ViewController?

    init(viewController: ___VARIABLE_sceneName___ViewController) {
        self.viewController = viewController
    }
    
    func goToPreviousScreen(){
        viewController?.navigationController?.popViewController(animated: true)
    }

}

