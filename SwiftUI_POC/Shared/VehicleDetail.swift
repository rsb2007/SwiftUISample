//
//  VehicleDetail.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/26/20.
//

import SwiftUI

struct VehicleDetail: View {
    
    var vehicle: Vehicle = vehicles[0]
    var namespace: Namespace.ID
    
    var body: some View {
        content
            .edgesIgnoringSafeArea(.all)
    }
    
    @ViewBuilder
    var content: some View {
        VStack {
            ScrollView {
                VehicleItem(vehicle: vehicle)
                    .cornerRadius(0)
                    .matchedGeometryEffect(id: vehicle.id, in: namespace)
                    .frame(height: 400)
                VStack {
                    ForEach(vehicleSections) { item in
                        VehicleRow(item: item)
                        Divider()
                    }
                }
                .padding()
            }
        }
        .background(Color("Background 1"))
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .matchedGeometryEffect(id: "container\(vehicle.id)", in: namespace)
    }
}


struct VehicleDetail_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        VehicleDetail(namespace: namespace)
    }
}
