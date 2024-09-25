//
//  RestaurantDetailView.swift
//  foodPin
//
//  Created by Jamaaldeen Opasina on 25/09/2024.
//

import SwiftUI

struct RestaurantDetailView: View {
    @Environment(\.dismiss) var dismiss
    var restaurant: Restaurant
    var body: some View {
        ZStack(alignment: .top) {
            Image(restaurant.image)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxHeight: .infinity)
                .ignoresSafeArea()
            Color.black
                .frame(height: 100)
                .opacity(0.8)
                .cornerRadius(20)
                .padding()
                .overlay{
                    VStack(spacing: 5){
                        Text(restaurant.name)
                        Text(restaurant.type)
                        Text(restaurant.location)
                    }
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.white)
                }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button(action: {
                    dismiss()
                }){
                    Text("\(Image(systemName: "chevron.left"))\(restaurant.name)")
                }
            }
        }
    }
}

#Preview {
    RestaurantDetailView(restaurant: Restaurant(name: " Cafe Deadend", type: "Cafe", location: "Hong Kong", image: "cafedeadend", isFavorite: false))
}
