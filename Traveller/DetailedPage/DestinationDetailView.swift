//
//  DestinationDetailView.swift
//  Traveller
//
//  Created by Mariam Mchedlidze on 14.12.23.
//

import SwiftUI

struct DestinationDetailView: View {
    var place: Places
    
    var body: some View {
        NavigationView{
            
            ZStack {
                backgroundView
                
                VStack(alignment: .leading) {
                    cardTextView
                    buttonsView
                    
                        .padding(.top, 24)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(24)
            }
        }
    }
    
    var backgroundView: some View {
        
        VStack {
            Image(place.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 391)
            
            Rectangle()
                .frame(height: 487)
                .foregroundColor(.white)
                .cornerRadius(30)
        }
    }
    
    var cardTextView: some View {
        
        VStack(alignment: .leading) {
            Text(place.place)
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(.primary)
            
            HStack(alignment: .center, spacing: 8) {
                Circle()
                    .frame(width: 5, height: 5)
                    .foregroundColor(.red)
                
                Text(place.country)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundStyle(.secondary)
            }
            
            Text(place.description)
                .padding(.top, 12)
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(.secondary)
        }
        .padding(.top, 330)
    }
    
    var buttonsView: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            Text("Travel Tips")
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(.primary)
            
            VStack{
                NavigationLink(
                    destination: TransportDetailView(place: place),
                    label: {
                        TravelTipRow(imageName: "bus.fill", tip: "Transport")
                    } )
            }
            
            VStack{
                NavigationLink(
                    destination: MustSeeDetailView(place:place),
                    label: {
                        TravelTipRow(imageName: "mappin.and.ellipse", tip: "Must See")
                    } )
            }
            
            VStack{
                NavigationLink(
                    destination: HotelDetailView(place: place),
                    label: {
                        TravelTipRow(imageName: "bed.double", tip: "Hotel")
                    } )
            }
        }
    }
}

struct TravelTipRow: View {
    var imageName: String
    var tip: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: imageName)
                .frame(width: 24, height: 24)
            
            Text(tip)
                .font(.system(size: 16))
        }
        .foregroundColor(.primary)
    }
}


// Preview
struct DestinationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let test = Places(image: "Yosemite Valley", place: "Yosemite", country: "United States, California", description: "osemite Valley, located within Yosemite National Park, is known for its iconic granite cliffs, waterfalls, and diverse ecosystems. Experience the natural beauty of Yosemite without focusing solely on the national park.", transport: "fly into Fresno Yosemite International Airport, the nearest major airport to Yosemite Valley. From there, you can rent a car for the scenic drive to the park. ", mustSee: "El Capitan: A massive granite monolith, popular among rock climbers.Yosemite Falls: The highest waterfall in North America, with breathtaking views. Half Dome: An iconic granite dome that attracts hikers and photographers alike.", hotel: "The Ahwahnee: A historic hotel with stunning architecture and views of Yosemite Falls. Tenaya Lodge at Yosemite: A resort located just outside the park, offering a luxurious retreat.")
        
        NavigationView {
            DestinationDetailView(place: test)
        }
    }
}

