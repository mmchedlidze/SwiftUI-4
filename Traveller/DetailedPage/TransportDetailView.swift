//
//  TransportDetailView.swift
//  Traveller
//
//  Created by Mariam Mchedlidze on 14.12.23.
//

import SwiftUI

struct TransportDetailView: View {
    var place: Places
    
    var body: some View {
        NavigationView{
            
            VStack(spacing: 40) {
                imageView
                Spacer()
                
                VStack(alignment: .leading, spacing: 24){
                    
                    Text("Transport")
                        .font(.system(size: 20, weight: .bold))
                    
                    Text(place.transport)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .lineLimit(3)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    NavigationLink(destination: MainScreenView()) {
                        Text("Home")
                        
                            .foregroundStyle(.primary)
                    }
                }.padding()
            }
        }
    }
    
    var imageView: some View {
        
        Image("transport")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 400)
        
    }
}



struct TransportDetailViewPreviews: PreviewProvider {
    static var previews: some View {
        let test = Places(image: "Yosemite Valley", place: "Yosemite", country: "United States, California", description: "osemite Valley, located within Yosemite National Park, is known for its iconic granite cliffs, waterfalls, and diverse ecosystems. Experience the natural beauty of Yosemite without focusing solely on the national park.", transport: "fly into Fresno Yosemite International Airport, the nearest major airport to Yosemite Valley. From there, you can rent a car for the scenic drive to the park. ", mustSee: "El Capitan: A massive granite monolith, popular among rock climbers.Yosemite Falls: The highest waterfall in North America, with breathtaking views. Half Dome: An iconic granite dome that attracts hikers and photographers alike.", hotel: "The Ahwahnee: A historic hotel with stunning architecture and views of Yosemite Falls. Tenaya Lodge at Yosemite: A resort located just outside the park, offering a luxurious retreat.")
        
        NavigationView {
            TransportDetailView(place: test)
        }
    }
}
