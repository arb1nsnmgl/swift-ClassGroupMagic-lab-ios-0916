//
//  Tiger.swift
//  PeopleAndPizza
//
//  Created by Arvin San Miguel on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Tiger {
    
    let name: String
    var isHungry: Bool
    
    init(name: String, isHungry: Bool) {
        self.name = name
        self.isHungry = true
    }
    
    func eat() {
        isHungry = false
    }
        
}

