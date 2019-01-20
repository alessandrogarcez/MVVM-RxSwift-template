//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___ViewController: UITableViewController {

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

//MARK: - UITableViewDataSource and UITableViewDelegate
extension ___VARIABLE_sceneName___ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
