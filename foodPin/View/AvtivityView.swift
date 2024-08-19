//
//  AvtivityView.swift
//  foodPin
//
//  Created by Jamaaldeen Opasina on 24/09/2024.
//

import SwiftUI

struct ActivityView: UIViewControllerRepresentable{
    
    var activityItems : [Any]
    var applicationActivities:[UIActivity]? = nil
    
    func makeUIViewController(context: Context) -> some UIViewController{
        let activityController = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        return activityController
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context){
        
    }
    
    
}
