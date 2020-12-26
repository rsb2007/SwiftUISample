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
            color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)),
            image: "Illustration 1",
            price: "18998.0"),


    Vehicle(make: "GMC",
            model: "Denali",
            description: "2016 GMC Yukon XL 1500 Denali",
            color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)),
            image: "Illustration 2",
            price: "14398.0"),
    
    Vehicle(make: "Kia",
            model: "Soul",
            description: "2019 Kia Soul +",
            color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)),
            image: "Illustration 3",
            price: "12348.0"),
    
    Vehicle(make: "Mitsubishi",
            model: "Outlander",
            description: "2019 Mitsubishi Outlander SEL",
            color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)),
            image: "Illustration 4",
            price: "13398.0"),
    
    Vehicle(make: "Toyota",
            model: "Highlander",
            description: "2015 Toyota Highlander XLE",
            color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)),
            image: "Illustration 5",
            price: "10998.0"),
    
    Vehicle(make: "Ford",
            model: "F150",
            description: "2019 Ford F150 Raptor",
            color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)),
            image: "Illustration 6",
            price: "11998.0"),
    
    Vehicle(make: "Volkswagen",
            model: "Tiguan",
            description: "2018 Volkswagen Tiguan SE",
            color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)),
            image: "Illustration 7",
            price: "10098.0"),
    
    Vehicle(make: "Chevrolet",
            model: "Malibu",
            description: "2017 Chevrolet Malibu LT",
            color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)),
            image: "Illustration 8",
            price: "11118.0"),
    
    Vehicle(make: "Ford",
            model: "Hybrid",
            description: "2013 Ford Fusion Hybrid SE",
            color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)),
            image: "Illustration 9",
            price: "10009.0"),
]

