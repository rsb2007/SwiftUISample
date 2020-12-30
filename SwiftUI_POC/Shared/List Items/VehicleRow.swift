//
//  VehicleRow.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/24/20.
//

import SwiftUI

struct VehicleRow: View {
    var item: VehicleSection = vehicleSections[0]
    
    var body: some View {
        HStack(alignment: .top) {
            Image(item.logo)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 48.0, height: 48.0)
                .imageScale(.small)
                .background(item.color)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 5.0) {
                Text(item.model)
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.primary)
                Text(item.description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

struct VehicleRow_Previews: PreviewProvider {
    static var previews: some View {
        VehicleRow()
    }
}
