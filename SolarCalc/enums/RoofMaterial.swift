//
//  RoofMaterial.swift
//  SolarCalc
//
//  Created by Mathis Burger on 29.10.23.
//

import Foundation

/// The material of the roof
enum RoofMaterial : String, Codable {
    
    /// Clay material
    case clay = "clay"
    
    /// Slate material
    case slate = "slate"
    
    /// Plain tile material
    case plainTile = "plain tile"
    
    /// Roofing felt material
    case roofingFelt = "roofing felt"
    
    /// Asbestos material
    case asbestos = "asbestos"
    
    /// Corrugnated iron material
    case corrugatedIron = "corrugated iron"
    
    /// trapezoidal sheet material
    case trapezoidalSheet = "trapezoidal sheet"
    
    case standingSeam = "standing seam"
    
    /// Grenn roof material
    case greenRoof = "green roof"
    
    /// Gravel material
    case gravel = "gravel"
    
    /// plastic material
    case plastic = "plastic"
}
