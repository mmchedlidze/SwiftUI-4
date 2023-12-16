//
//  HeaderView.swift
//  Traveller
//
//  Created by Mariam Mchedlidze on 14.12.23.
//

import SwiftUI

struct HeaderView: View {
    @State private var isAlertPresented = false
    @State private var randomTip = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            
            userInfo
            headerTexts
        }
        .padding(.trailing, 16)
        .frame(maxWidth: .infinity, alignment: .leading)
        
        .onAppear {
            randomTip = TravelTips.getRandomTip()
        }
        
        .alert(isPresented: $isAlertPresented) {
            Alert(
                title: Text("Travel Tip"),
                message: Text(randomTip),
                dismissButton: .default(Text("OK"))
            )
        }
    }
    
    private var userInfo: some View {
        HStack(spacing:24) {
            
            Image("user")
                .resizable()
                .frame(width: 70 ,height: 70)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 8){
                Text("Hi Soyeon!")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(.primary)
                
                Text("Seoul, South Korea")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundStyle(.secondary)
            }
        }
    }
    
    private var headerTexts: some View {
        VStack(alignment: .leading, spacing: 32) {
            Text("Ready to choose your next Destination?")
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(.primary)
            
            HStack(spacing: 12) {
                Text("Get the tip of the day for your trip")
                    .font(.system(size: 14, weight: .regular))
                
                Button(action: {
                    randomTip = TravelTips.getRandomTip()
                    isAlertPresented = true
                }) {
                    Image(systemName: "book")
                        .font(.system(size: 16))
                }
            }
        }
    }
}

#Preview {
    HeaderView()
}
