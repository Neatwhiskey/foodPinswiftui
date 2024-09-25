//
//  foodPinApp.swift
//  foodPin
//
//  Created by Jamaaldeen Opasina on 19/08/2024.
//

import SwiftUI

@main
struct foodPinApp: App {
    
    init(){
        let navBarAppearance = UINavigationBarAppearance ()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemRed, .font: UIFont(name:"ArialRoundedMTBold", size: 35)!]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.systemRed, .font: UIFont (name:"ArialRoundedMTBold", size: 28)!]
        navBarAppearance.backgroundColor = .clear
        navBarAppearance.backgroundEffect = .none
        navBarAppearance.shadowColor = .clear
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
                                                                           
    }
    var body: some Scene {
        WindowGroup {
            RestaurantListView()
        }
    }
}
