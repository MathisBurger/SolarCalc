//
//  HouseTypePicker.swift
//  SolarCalc
//
//  Created by Mathis Burger on 30.10.23.
//

import SwiftUI

/// Is used to pick a house type
struct HouseTypePicker: View {
    
    /// The type of the house as binding
    var type: Binding<HouseType>
    
    var body: some View {
        Picker("Haustyp", selection: type) {
            Text("Freistehend").tag(HouseType.detachtedHouse)
            Text("Dopelhaushälfte").tag(HouseType.semiDetachedHouse)
            Text("Reihenmittelhaus").tag(HouseType.townHouse)
            Text("Reihenendhaus").tag(HouseType.endTerraceHouse)
        }
    }
}

