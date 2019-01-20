//
//  DataServerLocal.swift
//  DelegateAndStoryboardTemplate
//
//  Created by Alessandro Garcez on 25/07/18.
//  Copyright © 2018 Alessandro Garcez. All rights reserved.
//

import Foundation

struct DataServerLocal: DataServer {
    
    static func listCountries(completion: (([Country]) -> ())) {
        
        let countries = [
            Country(name: "Brazil", image: "brazil"),
            Country(name: "South Africa", image: "south-africa"),
            Country(name: "Italy", image: "italy"),
            Country(name: "Japan", image: "japan"),
            Country(name: "Argentina", image: "argentina"),
            Country(name: "Ireland", image: "ireland"),
            Country(name: "Egypt", image: "egypt"),
            Country(name: "USA", image: "usa"),
            Country(name: "United Kingdom", image: "united-kingdom"),
            Country(name: "Wales", image: "wales"),
            Country(name: "South Korea", image: "south-korea"),
            Country(name: "Australia", image: "australia")
        ]
        
        completion(countries)
        
    }
    
}
