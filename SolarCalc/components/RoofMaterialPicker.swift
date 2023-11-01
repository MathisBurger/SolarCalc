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
            Text("Biberschwanz").tag(RoofMaterial.plainTile)
            Text("Dachpappe").tag(RoofMaterial.roofingFelt)
            Text("Asbest").tag(RoofMaterial.asbestos)
            Text("Wellblech").tag(RoofMaterial.corrugatedIron)
            Text("Trapezblech").tag(RoofMaterial.trapezoidalSheet)
            Text("Stehfalzblech").tag(RoofMaterial.standingSeam)
            Text("Gründach").tag(RoofMaterial.greenRoof)
            Text("Kiesdach").tag(RoofMaterial.gravel)
            Text("Kunststoff").tag(RoofMaterial.plastic)
        }
    }
}
