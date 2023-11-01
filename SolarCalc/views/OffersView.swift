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
    
    @State private var response: OffersResponse? = nil;
    
    var body: some View {
        ScrollView {
            if (self.response == nil) {
                ProgressView()
            } else {
                VStack(alignment: .leading) {
                    Text(String(format: "Jährlicher Ertrag: %.2f", self.response!.yearly_yield))
                    Text(String(format:"Autarkie: %.2f", self.response!.autarky))
                    Text(String(format: "CO2 Einsparung: %.2f", self.response!.co2_savings))
                    Text(String(format: "Anlagenfläche: %.2f", self.response!.total_plant_surface))
                }.padding()
                .frame(maxWidth: .infinity)
                .background(Color(.sRGB, red: 9/255, green: 111/255, blue: 182/255, opacity: 0.1))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                )
                .padding([.top, .horizontal])
                
            }
        }
        .onAppear() {
            if (self.request != nil) {
                do {
                    try ApiService.getSolarOffers(request: self.request!) {res in
                        self.response = res;
                    }
                } catch {
                    print(error)
                }
            }
        }
    }
}
