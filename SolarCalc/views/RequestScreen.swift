//
//  RequestScreen.swift
//  SolarCalc
//
//  Created by Mathis Burger on 30.10.23.
//

import SwiftUI

/// The screen that is used for requests
struct RequestScreen: View {
    
    /// If an additional e car is demanded
    @State private var additional_demand_e_car: Bool = false;
    
    /// If an additional heat pump is demanded
    @State private var additional_demand_heat_pump: Bool = false;
    
    /// The energy demand of the house
    @State private var energy_demand: Int = 0;
    
    /// The type of the house
    @State private var house_type: HouseType = HouseType.detachtedHouse;
    
    /// The latitude of the house
    @State private var lat: Float = 0;
    
    /// The longitude of the house
    @State private var lng: Float = 0;
    
    /// The angle of the house roof
    @State private var roof_angle: Int = 0;
    
    /// Roof area of the house roof
    @State private var roof_area: RoofArea = RoofArea.qm51to100;
    
    /// Roof material of the house roof
    @State private var roof_material: RoofMaterial = RoofMaterial.clay;
    
    /// If it is planned to renovate the roof
    @State private var roof_plan_to_renovate: Bool = false;
    
    /// Roof status
    @State private var roof_renovated_period: RoofRenovatedPeriod = RoofRenovatedPeriod.newBuilding;
    
    @State private var zip_code: String = "";
    
    /// The request that is sent
    @State private var request: CalculationRequest? = nil;
    
    /// The action for forwarding to other views
    @State private var action: Int? = 0;
    
    var body: some View {
        NavigationLink(destination: OffersView(request: request), tag: 1, selection: $action) {
                    EmptyView()
                }
        Text("Anfrage")
            .font(.largeTitle)
            .fontWeight(.bold)
        List {
            Section {
                Toggle(isOn: $additional_demand_e_car) {
                    Text("E-Auto benötigt")
                }
                Toggle(isOn: $additional_demand_heat_pump) {
                    Text("Wärmpepumpe benötigt")
                }
                HStack {
                    Text("Energiebedarf")
                    Divider()
                    TextField("Energiebedarf", value: $energy_demand, format: .number)
                }
            } header: {
                Text("Benötigte Resourcen")
            }
            Section {
                HouseTypePicker(type: $house_type)
                HStack {
                    Text("Lat")
                    Divider()
                    TextField("Lat", value: $lat, format: .number)
                }
                HStack {
                    Text("Long")
                    Divider()
                    TextField("Long", value: $lng, format: .number)
                }
                HStack {
                    Text("PLZ")
                    Divider()
                    TextField("PLZ", text: $zip_code)
                }
            } header: {
                Text("Haus-Daten")
            }
            Section {
                HStack {
                    Text("Dachwinkel")
                    Divider()
                    TextField("Dachwinkel", value: $roof_angle, format: .number)
                }
                RoofAreaPicker(type: $roof_area)
                RoofMaterialPicker(type: $roof_material)
                RoofRenovatedPicker(type: $roof_renovated_period)
                Toggle(isOn: $roof_plan_to_renovate) {
                    Text("Renovierung nötig")
                }
            } header: {
                Text("Dach")
            }
        }
        Button(
            action: {
                self.request = CalculationRequest(additional_demand_e_car: self.additional_demand_e_car, additional_demand_heat_pump: self.additional_demand_heat_pump, energy_demand: self.energy_demand, house_type: self.house_type, lat: self.lat, lng: self.lng, roof_angle: self.roof_angle, roof_area: self.roof_area, roof_material: self.roof_material, roof_plan_to_renovate: self.roof_plan_to_renovate, roof_renovated_period: self.roof_renovated_period, zip_code: self.zip_code, zipcode: self.zip_code);
                self.action = 1;
            }, label: {
                Text("Anfrage senden")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        )
        
    }
}
