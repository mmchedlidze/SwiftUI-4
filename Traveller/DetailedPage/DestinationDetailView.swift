//
//  DestinationDetailView.swift
//  Traveller
//
//  Created by Mariam Mchedlidze on 14.12.23.
//

import SwiftUI

struct DestinationDetailView: View {
    var place: Places
    @Binding var path: NavigationPath

    var body: some View {
            
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
        
        VStack(alignment: .leading ) {
            
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
            
            NavigationLink(
                destination: TransportDetailView(place: place, path: $path),
                label: {
                    TravelTipRow(imageName: "bus.fill", tip: "Transport")
                } )
            
            NavigationLink(
                destination: MustSeeDetailView(place:place, path: $path),
                label: {
                    TravelTipRow(imageName: "mappin.and.ellipse", tip: "Must See")
                } )
            
            NavigationLink(
                destination: HotelDetailView(place: place, path: $path),
                label: {
                    TravelTipRow(imageName: "bed.double", tip: "Hotel")
                } )
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


#Preview {
    DestinationDetailView(place: test, path: .constant(NavigationPath()))
}

