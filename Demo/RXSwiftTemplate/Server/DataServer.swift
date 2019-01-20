//
//  DataServer.swift
//  DelegateAndStoryboardTemplate
//
//  Created by Alessandro Garcez on 25/07/18.
//  Copyright © 2018 Alessandro Garcez. All rights reserved.
//

import Foundation

protocol DataServer {
    
    static func listCountries(completion: (([Country]) -> ()))
    
}
