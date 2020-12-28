//
//  VehicleItem.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/25/20.
//

import SwiftUI

struct VehicleItem: View {
    var vehicle: Vehicle = vehicles[0]
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 5) {
                Spacer()
                HStack {
                    Spacer()
                    Image(vehicle.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                Text(vehicle.make)
                    .font(.title)
                    .foregroundColor(.white)
            }
            .padding(.all)
            .frame(height: nil)
            .background(vehicle.color)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: vehicle.color.opacity(0.3), radius: 10, x: 0, y: 10)
        }
    }
}

struct VehicleItem_Previews: PreviewProvider {
    static var previews: some View {
        VehicleItem()
    }
}
