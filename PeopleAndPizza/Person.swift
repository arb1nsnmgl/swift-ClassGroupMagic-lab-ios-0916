//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Arvin San Miguel on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    
    let firstName: String
    let lastName: String
    let home: Coordinate
    var isHungry = true

    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }
    
    func eatPizzaFrom(_ service: PizzaDeliveryService) -> Bool {
        
        var willEatFromHome: Bool
        if isHungry == true && service.isInRange(home) {
            isHungry = false
            willEatFromHome = true
        } else {
            willEatFromHome = false
        }
        
        if service.isInRange(home) == false {
            willEatFromHome = false
        }
        return willEatFromHome
    }
    
}
