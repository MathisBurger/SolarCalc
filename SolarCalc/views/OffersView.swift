//
//  OffersView.swift
//  SolarCalc
//
//  Created by Mathis Burger on 30.10.23.
//

import SwiftUI

/// The offers view that loads all offers and displays them
struct OffersView: View {
    
    var request: CalculationRequest?;
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear() {
                print(request)
            }
    }
}
