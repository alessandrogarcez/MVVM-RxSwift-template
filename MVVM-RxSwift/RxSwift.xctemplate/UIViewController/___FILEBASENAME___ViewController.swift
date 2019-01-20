//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___ViewController: UIViewController {

    var interactor: ___VARIABLE_sceneName___Interactor?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.interactor?.provideInitialState()
    }

    private func setup() {
        
    }

}

//MARK: - ___VARIABLE_sceneName___InteractorDelegate
extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___InteractorDelegate {

    func reloadViewState() {
        
    }

}


