//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_sceneName___RouterInput {
    func goToPreviousScreen()
}

class ___VARIABLE_sceneName___Router: ___VARIABLE_sceneName___RouterInput {

    weak var viewController: ___VARIABLE_sceneName___ViewController?

    func goToPreviousScreen(){
        viewController?.navigationController?.popViewController(animated: true)
    }

}

