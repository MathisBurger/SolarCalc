//
//  RoofArea.swift
//  SolarCalc
//
//  Created by Mathis Burger on 29.10.23.
//

import Foundation

/// The roof area enum
/// It displays all possible roof constellations
enum RoofArea : String, Codable {
    
    /// 50 to 100 qm
    case qm51to100 = "51-to-100-qm"
    
    /// Up to 25 qm
    case upTo25 = "up-to-25-qm"
}
