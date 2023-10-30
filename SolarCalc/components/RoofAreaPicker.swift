//
//  RoofAreaPicker.swift
//  SolarCalc
//
//  Created by Mathis Burger on 30.10.23.
//

import SwiftUI

/// A picker for the roof area enum
struct RoofAreaPicker: View {
    
    /// The roof area as binding
    var type: Binding<RoofArea>
    
    var body: some View {
        Picker("Dachflaeche", selection: type) {
            Text("51qm - 100qm").tag(RoofArea.qm51to100)
        }
    }
}
