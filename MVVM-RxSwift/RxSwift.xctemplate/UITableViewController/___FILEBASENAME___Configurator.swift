//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class ___VARIABLE_sceneName___Configurator: NSObject {

    @IBOutlet weak var viewController: ___VARIABLE_sceneName___ViewController?

    override func awakeFromNib(){
        super.awakeFromNib()
        let interactor = ___VARIABLE_sceneName___Interactor()
        viewController?.interactor = interactor
        interactor.delegate = viewController

        let router = ___VARIABLE_sceneName___Router()
        router.viewController = viewController
        interactor.router = router
    }

}

