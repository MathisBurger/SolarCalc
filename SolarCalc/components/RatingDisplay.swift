//
//  RatingDisplay.swift
//  SolarCalc
//
//  Created by Mathis Burger on 01.11.23.
//

import SwiftUI

/// The rating display that displays a specific rating
struct RatingDisplay: View {
    var rating: Int;

    var label = "";

    var maximumRating = 5;

    var offImage: Image?;
    var onImage = Image(systemName: "star.fill");

    var offColor = Color.gray;
    var onColor = Color.yellow;
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }

            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor : onColor)
            }
        }
    }
}
