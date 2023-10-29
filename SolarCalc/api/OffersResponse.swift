//
//  OffersResponse.swift
//  SolarCalc
//
//  Created by Mathis Burger on 29.10.23.
//

import Foundation

/// The response object of the offer request
struct OffersResponse : Codable {
    
    /// All offers of the response
    let offers: [Offer]
    
    /// Maximum number of panels
    let max_panels: Int
    
    /// Number of panels recommended
    let num_panels_recommended: Int
    
    /// The autarky value
    let autarky: Float
    
    /// Savings of CO2
    let co2_savings: Float
    
    /// Total surface of the PV system
    let total_plant_surface: Float
    
    /// Yearly yield from the PV system
    let yearly_yield: Float
}

/// A offer that is sent in the response
struct Offer : Codable {
    
    /// Information of supplier about the offer (can be ignoreed)
    let additional_info: String
    
    /// Adjustments are made
    let adjustments: Int
    
    /// The country the battery is from
    let bat_country: String
    
    /// How many years gurantee is on the battery
    let bat_guarantee: String
    
    /// Battery manager
    let bat_manager: String
    
    /// Battery producer model
    let bat_producer_model: String
    
    /// The url to the product sheet of the battery
    let bat_product_sheet: String
    
    /// The capacity of the battery
    let battery_capacity: String
    
    /// If cables are included in the offer
    let cables: Int
    
    /// If component delivery is included in the offer
    let components_delivery: Int
    
    /// The ID of the offer
    let id: Int
    
    /// The duration (days) of the installation
    let installation_duration: Int?
    
    /// If the installation is included in the offer
    let installation_included: Int
    
    /// The country the inverter is from
    let inv_country: String
    
    /// The gurantee of the inverter
    let inv_guarantee: String
    
    /// The inverter model
    let inv_producer_model: String
    
    /// The url of the product sheet of the inverter
    let inv_product_sheet: String
    
    /// The warranty of the installation labor
    let labor_warranty: Int
    
    /// The total amount of modules installed
    let number_of_modules: Int
    
    /// Total price without the battery
    let price_no_battery: String
    
    /// The price per watt
    let price_per_watt: String
    
    /// The price within the battery
    let price_with_battery: String
    
    /// The product partner
    let product_offering: ProductPartner
    
    /// Power production of a single module
    let production_single_module: String
    
    /// Total production of the installed solar system
    let production_total: String
    
    /// The country the PV system is from
    let pv_country: String
    
    /// Gurantee of the PV system
    let pv_guarantee: String
    
    /// Model of the PV system
    let pv_producer_model: String
    
    /// The url of the product sheet
    let pv_product_sheet: String
    
    /// The time of payment
    let time_of_payment: String
}

/// The product partner
struct ProductPartner : Codable {
    
    /// The location
    let location: ProductPartnerLocation
}

/// The partner location object
struct ProductPartnerLocation : Codable {
    
    /// The days to installation
    let days_to_installation: Int
    
    /// The partner object
    let partner: PartnerObject
}

/// All information about the partner
struct PartnerObject : Codable {
    
    /// The ID of a partner
    let id: Int
    
    /// The label of the partner
    let label: String?
    
    /// The logo of the url
    let logo: String
    
    /// The name of the partner
    let name: String
    
    /// The rating of the partner
    let rating: String
}
