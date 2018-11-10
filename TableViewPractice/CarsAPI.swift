//
//  CarsAPI.swift
//  TableViewPractice
//
//  Created by Elexie Munyeneh on 11/9/18.
//  Copyright © 2018 Elexie Munyeneh. All rights reserved.
//

import Foundation
class CarsAPI{
    static func getCars() -> [Car]{
        let cars=[
            Car(make:"hyundai", model:"ascent", year:"2008"),
            Car(make:"toyota", model:"rav4", year:"2019"),
            Car(make:"nissan", model:"altima", year:"2005"),
            Car(make:"licoln", model:"navigator", year:"")
        ]
        return cars
    }
}
