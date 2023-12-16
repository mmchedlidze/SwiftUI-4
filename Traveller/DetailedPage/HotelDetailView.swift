//
//  HotelDetailView.swift
//  Traveller
//
//  Created by Mariam Mchedlidze on 14.12.23.
//

import SwiftUI

struct HotelDetailView: View {
    var place: Places
    @Binding var path: NavigationPath
    
    var body: some View {

            VStack(spacing: 40) {
                imageView
                    .ignoresSafeArea()
                Spacer()
                
                VStack(alignment: .leading, spacing: 24){
                    
                    Text("Hotel")
                        .font(.system(size: 20, weight: .bold))
                    
                    Text(place.hotel)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .lineLimit(3)
                    
                    Button(action: {
                        path = NavigationPath()
                    }, label: {
                        Text("Home")
                    })
                    
                }.padding()
                Spacer()
            }
        }
    
    var imageView: some View {
        
        Image("hotel")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 400)
            .ignoresSafeArea()
    }
}

#Preview {
    HotelDetailView(place: test, path: .constant(NavigationPath()))
}
