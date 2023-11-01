//
//  RoofRenovatedPicker.swift
//  SolarCalc
//
//  Created by Mathis Burger on 30.10.23.
//

import SwiftUI

/// A picker for the roof material enum
struct RoofRenovatedPicker: View {
    
    /// The roof  renovated period as binding
    var type: Binding<RoofRenovatedPeriod>
    
    var body: some View {
        Picker("Dachmaterial", selection: type) {
            Text("Neubau").tag(RoofRenovatedPeriod.newBuilding)
            Text("nach 1990").tag(RoofRenovatedPeriod.after_1990)
        }
    }
}
