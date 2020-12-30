//
//  Vehicle.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/25/20.
//

import SwiftUI

struct Vehicle: Identifiable {
    var id = UUID()
    var make: String
    var color: Color
    var image: String
}

var vehicles = [
    Vehicle(make: "Honda",
            color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)),
            image: "HondaCRV"
            ),

    Vehicle(make: "GMC",
            color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)),
            image: "GMCYukon"
            ),
    
    Vehicle(make: "Kia",
            color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)),
            image: "KiaSoul"
            ),
    
    Vehicle(make: "Mitsubishi",
            color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)),
            image: "MitsubishiOutlander"
            ),
    
    Vehicle(make: "Toyota",
            color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)),
            image: "ToyotaHighlander"
            ),
    
    Vehicle(make: "Ford",
            color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)),
            image: "FordRaptor"
            ),
    
    Vehicle(make: "Volkswagen",
            color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)),
            image: "VolkswagenTiguan"
            ),
    
    Vehicle(make: "Chevrolet",
            color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)),
            image: "ChevyMalibu"
            ),
    
    Vehicle(make: "Ford",
            color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)),
            image: "FordFusion"
            ),
]

