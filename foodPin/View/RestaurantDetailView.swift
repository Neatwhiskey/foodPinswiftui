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
        ScrollView {
            VStack(alignment: .leading) {
                Image(restaurant.image)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxHeight: .infinity)
                    .frame(height: 445)
                    .overlay{
                    VStack{
                        Image(systemName: restaurant.isFavorite ? "heart.fill": "heart")
                            .foregroundColor(.yellow)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topTrailing)
                            .padding()
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .padding(.top, 40)
                        
                        VStack(alignment: .leading){
                            Text(restaurant.name)
                                .font(.custom("Nunito-Regular", size: 35, relativeTo: .largeTitle))
                                .bold()
                            
                            Text(restaurant.type)
                                .font(.system(.headline,design: .rounded))
                                .padding(.all, 5)
                                .background(Color.black)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottomLeading)
                        .foregroundColor(.white)
                        .padding()
                    }
                }
        }
            Text(restaurant.description)
                .padding()
            
            HStack(alignment:.top){
                VStack(alignment: .leading){
                    Text("Address")
                        .font(.system(.headline, design: .rounded))
                    Text(restaurant.location)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .leading){
                    Text("PHONE")
                        .font(.system(.headline, design: .rounded))
                    Text(restaurant.phone)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button(action: {
                    dismiss()
                }){
                    Text("\(Image(systemName: "chevron.left"))")
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RestaurantDetailView(restaurant: Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong", phone: "232-923423", description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.", image: "cafedeadend", isFavorite: true))
        .environment(\.dynamicTypeSize,.xxxLarge)
}

