//
//  VehicleSection.swift
//  DesignCodeUniversal
//
//  Created by Meng To on 7/1/20.
//

import SwiftUI

struct VehicleSection: Identifiable, Hashable {
    var id = UUID()
    var model: String
    var description: String
    var logo: String
    var color: Color
    var price: String
}

var vehicleSections = [
    VehicleSection(
        model: "CRV",
        description: "2014 Honda CR-V EX-L",
        logo: "HondaCRV",
        color: Color(#colorLiteral(red: 0.6938710542, green: 0.7011527758, blue: 1, alpha: 1)),
        price: "18998.0"
    ),
    VehicleSection(
        model: "Denali",
        description: "2016 GMC Yukon XL 1500 Denali",
        logo: "GMCYukon",
        color: Color(#colorLiteral(red: 0.8852880938, green: 0.8079427236, blue: 1, alpha: 1)),
        price: "14398.0"
    ),
    VehicleSection(
        model: "Soul",
        description: "2019 Kia Soul +",
        logo: "KiaSoul",
        color: Color(#colorLiteral(red: 0.9259490865, green: 0.8079939962, blue: 0.9819244845, alpha: 1)),
        price: "12348.0"
    ),
    VehicleSection(
        model: "Outlander",
        description: "2019 Mitsubishi Outlander SEL",
        logo: "MitsubishiOutlander",
        color: Color(#colorLiteral(red: 1, green: 0.8356758724, blue: 0.9774253576, alpha: 1)),
        price: "13398.0"
    ),
    VehicleSection(
        model: "Highlander",
        description: "2015 Toyota Highlander XLE",
        logo: "ToyotaHighlander",
        color: Color(#colorLiteral(red: 0.9835128996, green: 0.8077174332, blue: 0.9231335766, alpha: 1)),
        price: "10998.0"
    ),
    VehicleSection(
        model: "F150",
        description: "2019 Ford F150 Raptor",
        logo: "FordRaptor",
        color: Color(#colorLiteral(red: 0.998231948, green: 0.6191059753, blue: 0.909775096, alpha: 1)),
        price: "11998.0"
    ),
    VehicleSection(
        model: "Tiguan",
        description: "2018 Volkswagen Tiguan SE",
        logo: "VolkswagenTiguan",
        color: Color(#colorLiteral(red: 0.9444945533, green: 0.6457243648, blue: 0.8310935377, alpha: 1)),
        price: "10098.0"
    ),
    VehicleSection(
        model: "Malibu",
        description: "2017 Chevrolet Malibu LT",
        logo: "ChevyMalibu",
        color: Color(#colorLiteral(red: 1, green: 0.697475738, blue: 0.8212928952, alpha: 1)),
        price: "11118.0"
    ),
    VehicleSection(
        model: "Hybrid",
        description: "2013 Ford Fusion Hybrid SE",
        logo: "FordFusion",
        color: Color(#colorLiteral(red: 1, green: 0.819876119, blue: 0.7972975067, alpha: 1)),
        price: "9999.88"
    ),
]
