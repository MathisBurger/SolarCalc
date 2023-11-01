//
//  RoofRenovatedPeriod.swift
//  SolarCalc
//
//  Created by Mathis Burger on 29.10.23.
//

import Foundation

/// The current renovation state of the roof
enum RoofRenovatedPeriod : String, Codable {
    
    /// A new building
    case newBuilding = "new_building"
    
    /// A building built after 1990
    case after_1990 = "after_1990"
}
