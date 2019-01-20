//
//  CountryListInteractor.swift
//  RXSwiftTemplate
//
//  Created by Alessandro Garcez on 28/07/18.
//  Copyright (c) 2018 Alessandro Garcez. All rights reserved.
//

import Foundation
import RxSwift

private var sceneTitle: String { return "Countries" }

class CountryListInteractor {

    private let router: CountryListRouterInput
    private let presenter: CountryListPresenterInput
    private let dataProvider: DataServer.Type

    private let titleVariable: Variable<String> = Variable(sceneTitle)
    var titleObservable: Observable<String> { return titleVariable.asObservable() }
    
    private let tableDataVariable: Variable<[TableRow<Country, String>]> = Variable([])
    var tableDataObservable: Observable<[TableRow<Country, String>]> { return tableDataVariable.asObservable() }
    
    init(router: CountryListRouterInput, presenter: CountryListPresenterInput, dataProvider: DataServer.Type) {
        self.router = router
        self.presenter = presenter
        self.dataProvider = dataProvider
        provideInitialState()
    }
    
    private func provideInitialState() {
        requestCountries()
    }
    
    private func requestCountries() {
        tableDataVariable.value = presenter.makeLoadingStatedata()
        dataProvider.listCountries { [weak self] result in
            self?.handleRequestCountries(data: result)
        }
    }
    
    private func handleRequestCountries(data: [Country]) {
        tableDataVariable.value = presenter.proccessCountries(data)
    }

}

// MARK: actions
extension CountryListInteractor {
    
    func rowSelected(index: Int) {
        router.navigateToList()
    }
    
}
