//
//  MustSeeDetailView.swift
//  Traveller
//
//  Created by Mariam Mchedlidze on 14.12.23.
//

import SwiftUI

struct MustSeeDetailView: View {
    var place: Places
    @Binding var path: NavigationPath
 
    var body: some View {

            VStack{
                imageView
                Spacer()
                
                VStack(alignment: .leading, spacing: 24){
                    Text("Must See Details")
                        .font(.system(size: 20, weight: .bold))
                    
                    Text(place.mustSee)
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
        Image(place.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 400)
            .ignoresSafeArea()
    }
}

#Preview {
    MustSeeDetailView(place: test, path: .constant(NavigationPath()))
}



