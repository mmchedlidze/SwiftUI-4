//
//  MainScreenView.swift
//  Traveller
//
//  Created by Mariam Mchedlidze on 14.12.23.
//

import SwiftUI

struct MainScreenView: View {
    static func == (lhs: MainScreenView, rhs: MainScreenView) -> Bool {
        return true
    }
    
    var topViewModel = TopDestinationViewModel()
    var popularViewModel = PopularDestinationViewModel()
    
    var body: some View {
        NavigationView{
            
            VStack(alignment: .leading, spacing: 24) {
                
                HeaderView()
                
                VStack(alignment: .leading, spacing: 24) {
                    titleTop
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(topViewModel.topPlace) { place in
                                NavigationLink(
                                    destination: DestinationDetailView(place: place),
                                    label: {
                                        TravelCardView(place: place)
                                    }
                                )
                            }
                        }
                    }
                    
                    VStack(alignment:.leading, spacing: 24){
                        
                        titleTop
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(popularViewModel.popularPlace) { place in
                                    NavigationLink(
                                        destination: DestinationDetailView(place: place),
                                        label: {
                                            TravelCardView(place: place)
                                        }
                                    )
                                }
                            }
                        }
                    }
                }
            } .padding(.horizontal, 12)
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
