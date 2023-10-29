//
//  CalculationRequest.swift
//  SolarCalc
//
//  Created by Mathis Burger on 29.10.23.
//

import Foundation

/// The calculation request that is sent to the external API.
/// It contains all important information
struct CalculationRequest : Codable {
    
    /// If an e-car is being used
    let additional_demand_e_car: Bool
    
    /// If an additional heat pump is used in the household
    let additional_demand_heat_pump: Bool
    
    /// Yearly energy demand of the household
    let energy_demand: Int
    
    /// The type of a house
    let house_type: HouseType
    
    /// The latitude value of the location
    let lat: Float
    
    /// The longitude value of the location
    let lng: Float
    
    /// The angle of the roof of the house
    let roof_angle: Int
    
    /// The area of the roof
    let roof_area: RoofArea
    
    /// The material of a roof
    let roof_material: RoofMaterial
    
    /// If the roof is planned to renovate
    let roof_plan_to_renovate: Bool
    
    /// The current renovation period
    let roof_renovated_period: RoofRenovatedPeriod
    
    /// The zip code
    let zip_code: String
    
    /// The zip code
    let zipcode: String
}
