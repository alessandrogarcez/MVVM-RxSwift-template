//
//  TableRow.swift
//  RXSwiftTemplate
//
//  Created by Alessandro Garcez on 19/01/19.
//  Copyright © 2019 Alessandro Garcez. All rights reserved.
//

import Foundation

enum TableRow<T,U> {
    case success(T)
    case failure(U)
    case placeholder(String?)
}
