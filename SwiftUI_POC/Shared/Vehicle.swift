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
    var model: String
    var description: String
    var color: Color
    var image: String
    var price: String
}

var vehicles = [
    Vehicle(make: "Honda",
            model: "CRV",
            description: "2014 Honda CR-V EX-L",
            color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),
            image: "Illustration 1",
            price: "18998.0"),


    Vehicle(make: "GMC",
            model: "Denali",
            description: "2016 GMC Yukon XL 1500 Denali",
            color: Color(#colorLiteral(red: 0.263455689, green: 0.7873976827, blue: 1, alpha: 1)),
            image: "Illustration 2",
            price: "14398.0"),
    
    Vehicle(make: "Kia",
            model: "Soul",
            description: "2019 Kia Soul +",
            color: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)),
            image: "Illustration 3",
            price: "12348.0"),
    
    Vehicle(make: "Mitsubishi",
            model: "Outlander",
            description: "2019 Mitsubishi Outlander SEL",
            color: Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)),
            image: "Illustration 4",
            price: "13398.0"),
    
    Vehicle(make: "Toyota",
            model: "Highlander",
            description: "2015 Toyota Highlander XLE",
            color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),
            image: "Illustration 5",
            price: "10998.0"),
    
    Vehicle(make: "Ford",
            model: "F150",
            description: "2019 Ford F150 Raptor",
            color: Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),
            image: "Illustration 6",
            price: "11998.0"),
    
    Vehicle(make: "Volkswagen",
            model: "Tiguan",
            description: "2018 Volkswagen Tiguan SE",
            color: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)),
            image: "Illustration 7",
            price: "10098.0"),
    
    Vehicle(make: "Chevrolet",
            model: "Malibu",
            description: "2017 Chevrolet Malibu LT",
            color: Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)),
            image: "Illustration 8",
            price: "11118.0"),
    
    Vehicle(make: "Ford",
            model: "Hybrid",
            description: "2013 Ford Fusion Hybrid SE",
            color: Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)),
            image: "Illustration 9",
            price: "10009.0"),
]

