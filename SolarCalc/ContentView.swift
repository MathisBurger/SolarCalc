//
//  ContentView.swift
//  SolarCalc
//
//  Created by Mathis Burger on 29.10.23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationSplitView {
            List {
                Text("text")
            }.onAppear() {
                let req = CalculationRequest(additional_demand_e_car: true, additional_demand_heat_pump: true, energy_demand: 6500, house_type: HouseType.detachtedHouse, lat: 48.79, lng: 11.43, roof_angle: 45, roof_area: RoofArea.qm51to100, roof_material: RoofMaterial.clay, roof_plan_to_renovate: false, roof_renovated_period: RoofRenovatedPeriod.newBuilding, zip_code: "85055", zipcode: "85055");
                do {
                    try ApiService.getSolarOffers(request: req) { data in
                        print(data)
                    }
                } catch {
                    print(error)
                }
            }
        } detail: {
            Text("Okay")
        }
    }
}
