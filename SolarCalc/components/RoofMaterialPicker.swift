//
//  RoofMaterialPicker.swift
//  SolarCalc
//
//  Created by Mathis Burger on 30.10.23.
//

import SwiftUI

/// A picker for the roof material enum
struct RoofMaterialPicker: View {
    
    /// The roof material as binding
    var type: Binding<RoofMaterial>
    
    var body: some View {
        Picker("Dachmaterial", selection: type) {
            Text("Ziegel").tag(RoofMaterial.clay)
            Text("Schiefer").tag(RoofMaterial.slate)
        }
    }
}
