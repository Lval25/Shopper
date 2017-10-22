//
//  Wage.swift
//  Window Shopper
//
//  Created by Loyd Vallot on 10/22/17.
//  Copyright © 2017 Loyd's Productions. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil( price/wage ))
        
    }
}
