//
//  VehicleRow.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/24/20.
//

import SwiftUI

struct VehicleRow: View {
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "externaldrive.fill.badge.checkmark")
                .renderingMode(.template)
                .frame(width: 48.0, height: 48.0)
                .imageScale(.medium)
                .background(Color.blue)
                .clipShape(Circle())
                .foregroundColor(.white)
            VStack(alignment: .leading, spacing: 5.0) {
                Text("My Vehicle")
                    .font(.subheadline)
                    .bold()
                Text("Description")
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
