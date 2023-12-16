//
//  MainScreenView.swift
//  Traveller
//
//  Created by Mariam Mchedlidze on 14.12.23.
//

import SwiftUI

struct MainScreenView: View {
    
    @State private var path = NavigationPath()
    
    var topViewModel = TopDestinationViewModel()
    var popularViewModel = PopularDestinationViewModel()
    
    var body: some View {
        NavigationStack (path: $path) {
            VStack(alignment: .leading, spacing: 24) {
                
                HeaderView()
                
                VStack(alignment: .leading, spacing: 24) {
                    titleTop
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(topViewModel.topPlace) { place in
                                
                                NavigationLink(value: place, label: {
                                    TravelCardView(place: place)
                                    
                                })
                            }
                        }.navigationDestination(for: Places.self) { place in
                            DestinationDetailView(place: place, path: $path)
                        }
                    }
                    
                    titlePopular
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(popularViewModel.popularPlace) { place in
                                
                                NavigationLink(value: place, label: {
                                    TravelCardView(place: place)
                                })
                            }
                        }.navigationDestination(for: Places.self) { place in
                            DestinationDetailView(place: place, path: $path)
                        }
                    }
                }
            } .padding(.horizontal, 16)
        }
    }
    
    private var titleTop: some View {
        
        Text("Top Destinations")
            .font(.system(size: 16, weight: .bold))
            .foregroundColor(.primary)
    }
    
    private var titlePopular: some View {
        
        Text("Popular Destinations")
            .font(.system(size: 16, weight: .bold))
            .foregroundColor(.primary)
    }
}

#Preview {
    MainScreenView()
}
