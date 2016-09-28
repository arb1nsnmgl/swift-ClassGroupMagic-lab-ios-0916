//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Arvin San Miguel on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class PizzaDeliveryService {
    
    let location: Coordinate
    var pizzasAvailable: Int
    
    init(location: Coordinate) {
        self.location = location
        self.pizzasAvailable = 10
    }
    
    func isInRange(_ destination: Coordinate) -> Bool {
        return destination.distanceTo(location) <= 5000
    }
    
    func deliverPizzaTo(_ destination: Coordinate) -> Bool {
        
        var isDeliverable: Bool
        
        if isInRange(destination) {
            pizzasAvailable -= 1
            isDeliverable = true
        } else {
            isDeliverable = false
        }
        
        if pizzasAvailable == 0 {
            isDeliverable = false
        }
        
        return isDeliverable
        
    }
    
}
