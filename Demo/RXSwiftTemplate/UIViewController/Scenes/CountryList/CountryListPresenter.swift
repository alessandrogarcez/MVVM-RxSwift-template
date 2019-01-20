//
//  CountryListPresenter.swift
//  RXSwiftTemplate
//
//  Created by Alessandro Garcez on 19/01/19.
//  Copyright © 2019 Alessandro Garcez. All rights reserved.
//

import Foundation

private var loadingText: String { return "Loading..." }
private var loadingRow: TableRow<Country, String> { return .placeholder(loadingText) }

protocol CountryListPresenterInput: class {
    
    func proccessTitle(_ title: String) -> String
    func proccessCountries(_ countries: [Country]) -> [TableRow<Country, String>]
    func makeLoadingStatedata() -> [TableRow<Country, String>]
    
}

class CountryListPresenter: CountryListPresenterInput {
    
    func proccessTitle(_ title: String) -> String {
        return title
    }
    
    func proccessCountries(_ countries: [Country]) -> [TableRow<Country, String>] {
        return countries.compactMap({ return .success($0) })
    }
    
    func makeLoadingStatedata() -> [TableRow<Country, String>] {
        return [loadingRow]
    }
    
}
