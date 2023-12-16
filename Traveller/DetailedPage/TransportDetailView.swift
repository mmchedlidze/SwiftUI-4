//
//  TransportDetailView.swift
//  Traveller
//
//  Created by Mariam Mchedlidze on 14.12.23.
//

import SwiftUI

struct TransportDetailView: View {
    var place: Places
    @Binding var path: NavigationPath

    var body: some View {
        
            VStack() {
                imageView
                Spacer()
                
                VStack(alignment: .leading, spacing: 24){
                    
                    Text("Transport")
                        .font(.system(size: 20, weight: .bold))
                    
                    Text(place.transport)
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
        
        Image("transport")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 400)
            .ignoresSafeArea()
    }
}

#Preview {
    TransportDetailView(place: test, path: .constant(NavigationPath()))
}
