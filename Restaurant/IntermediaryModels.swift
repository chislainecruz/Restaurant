//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Chislaine Cruz on 10/23/19.
//  Copyright © 2019 Chislaine Cruz. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
