//
//  City.swift
//  Guide Book App
//
//  Created by Adil Aman Mohammed on 6/16/24.
//

import Foundation


struct City : Identifiable {
    
    var id = UUID()
    var name : String
    var summary : String
    var imageName: String
    
    
    var attractions : [Attraction]
}
