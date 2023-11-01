//
//  OfferCard.swift
//  SolarCalc
//
//  Created by Mathis Burger on 01.11.23.
//

import SwiftUI

/// Simple offer card that displays the offer
struct OfferCard: View {
    
    /// The offer that should be displayed
    let offer: Offer
    
    var body: some View {
        HStack(alignment: .center) {
            AsyncImage(url: URL(string: offer.product_offering.location.partner.logo)!){ image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(offer.product_offering.location.partner.name)
                    .font(.headline)
                    .fontWeight(.bold)
                RatingDisplay(rating: Int(Float(offer.product_offering.location.partner.rating)!))
                Text("Preis: \(offer.price_with_battery)€")
                Text("PVP: \(offer.production_total)kWp")
                Text("BATP: \(offer.battery_capacity)kWh")
            }
        }.padding()
        .frame(maxWidth: .infinity)
        .background(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1))
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}
