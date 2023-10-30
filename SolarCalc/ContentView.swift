//
//  ContentView.swift
//  SolarCalc
//
//  Created by Mathis Burger on 29.10.23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationSplitView {
            RequestScreen()
                .padding(.horizontal)
        } detail: {
            Text("Okay")
        }
    }
}
