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

struct TravelCardViewPreviews: PreviewProvider {
    static var previews: some View {
        let test = Places(image: "Yosemite Valley", place: "Yosemite", country: "United States, California", description: "osemite Valley, located within Yosemite National Park, is known for its iconic granite cliffs, waterfalls, and diverse ecosystems. Experience the natural beauty of Yosemite without focusing solely on the national park.", transport: "fly into Fresno Yosemite International Airport, the nearest major airport to Yosemite Valley. From there, you can rent a car for the scenic drive to the park. ", mustSee: "El Capitan: A massive granite monolith, popular among rock climbers.Yosemite Falls: The highest waterfall in North America, with breathtaking views. Half Dome: An iconic granite dome that attracts hikers and photographers alike.", hotel: "The Ahwahnee: A historic hotel with stunning architecture and views of Yosemite Falls. Tenaya Lodge at Yosemite: A resort located just outside the park, offering a luxurious retreat.")
        
        TravelCardView(place: test)
    }
}
