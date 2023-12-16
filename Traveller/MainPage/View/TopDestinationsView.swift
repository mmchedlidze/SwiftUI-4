//
//  TopDestinationsView.swift
//  Traveller
//
//  Created by Mariam Mchedlidze on 14.12.23.
//

import SwiftUI

struct TravelCardView: View {
    var place: Places
    
    var body: some View {
        Image(place.image)
            .resizable()
            .frame(width: 150, height: 200)
            .cornerRadius(15)
            .overlay(
                Text(place.place)
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.primary)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                    .background(
                        GeometryReader { geometry in
                            Color.white
                                .frame(width: geometry.size.width, height: geometry.size.height)
                                .cornerRadius(10)
                        }
                    )
                    .offset(x: -30, y: 70)
            )
    }
}

#Preview {
    TravelCardView(place: test)
}
