//
//  Order.swift
//  Restaurant
//
//  Created by Chislaine Cruz on 10/23/19.
//  Copyright © 2019 Chislaine Cruz. All rights reserved.
//

import Foundation

struct Order : Codable {
    var menuItems: [MenuItem]
    
    init (menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
