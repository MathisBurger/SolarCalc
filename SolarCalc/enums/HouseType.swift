//
//  HouseType.swift
//  SolarCalc
//
//  Created by Mathis Burger on 29.10.23.
//

import Foundation

/// The type of houses that can be choosen from.
/// Other types of houses are not supported yet by the API
enum HouseType : String, Codable {
    
    /// A detached house
    case detachtedHouse = "detached house"
    
    /// A semi detached house
    case semiDetachedHouse = "semi-detached house"
    
    /// A town house
    case townHouse = "townhouse"
    
    /// An end terrace house
    case endTerraceHouse = "end-terrace house"
}
