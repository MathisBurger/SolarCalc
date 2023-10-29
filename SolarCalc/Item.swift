//
//  Item.swift
//  SolarCalc
//
//  Created by Mathis Burger on 29.10.23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
