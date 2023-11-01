//
//  OfferDetailsView.swift
//  SolarCalc
//
//  Created by Mathis Burger on 01.11.23.
//

import SwiftUI

/// Displays an offer in detail
struct OfferDetailsView: View {
    
    let offer: Offer
    
    var body: some View {
        List {
            Section {
                AsyncImage(url: URL(string: offer.product_offering.location.partner.logo)!){ image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                Text("Name: \(offer.product_offering.location.partner.name)")
                RatingDisplay(rating: Int(Float(offer.product_offering.location.partner.rating)!))
            } header: {
                Text("Anbieter")
            }
            Section {
                Text("Preis: \(offer.price_with_battery)€")
                Text("Preis ohne Batterie: \(offer.price_no_battery)€")
                Text("Preis pro Watt: \(offer.price_per_watt)€")
                Text("Zeit zu zahlen: \(offer.time_of_payment)")
            } header: {
                Text("Preise")
            }
            Section {
                Text("Leistung pro Modul: \(offer.production_single_module)Wp")
                Text("Anzahl Module: \(offer.number_of_modules)")
                Text("Leistung gesamt: \(offer.production_total)kWp")
                Text("Herkunft: \(offer.pv_country)")
                Text("Garantie: \(offer.pv_guarantee)")
                Text("Modell: \(offer.pv_producer_model)")
                Button("Datenblatt") {
                    if let url = URL(string: offer.pv_product_sheet) {
                       UIApplication.shared.open(url)
                    }
                }
            } header: {
                Text("Anlage")
            }
            Section {
                Text("Herkunft: \(offer.inv_country)")
                Text("Garantie: \(offer.inv_guarantee)")
                Text("Modell: \(offer.inv_producer_model)")
                Button("Datenblatt") {
                    if let url = URL(string: offer.inv_product_sheet) {
                       UIApplication.shared.open(url)
                    }
                }
            } header: {
                Text("Wechselrichter")
            }
            Section {
                Text("Leistung: \(offer.battery_capacity)kWp")
                Text("Manager Software: \(offer.bat_manager)")
                Text("Herkunft: \(offer.bat_country)")
                Text("Garantie: \(offer.bat_guarantee)")
                Text("Modell: \(offer.bat_producer_model)")
                Button("Datenblatt") {
                    if let url = URL(string: offer.bat_product_sheet) {
                       UIApplication.shared.open(url)
                    }
                }
            } header: {
                Text("Batterie")
            }
            Section {
                Text("Kabel: \(offer.cables == 1 ? "Ja" : "Nein")")
                Text("Lieferung: \(offer.components_delivery == 1 ? "Ja" : "Nein")")
                Text("Installation: \(offer.installation_included == 1 ? "Ja" : "Nein")")
                Text("Garantie auf Arbeit: \(offer.labor_warranty == 1 ? "Ja" : "Nein")")
            } header: {
                Text("Angebot")
            }
        }
    }
}
