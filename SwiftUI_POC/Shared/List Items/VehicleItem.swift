//
//  VehicleItem.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/25/20.
//

import SwiftUI

struct VehicleItem: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 5) {
                Spacer()
                HStack {
                    Spacer()
                    Image("Illustration 1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                Text("CarMax")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("This is where customers get rewarded")
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundColor(.white)
            }
            .padding(.all)
            .frame(height: nil)
            .background(Color.blue)
            .cornerRadius(20.0)
            .shadow(radius: 10)
        }
    }
}

struct VehicleItem_Previews: PreviewProvider {
    static var previews: some View {
        VehicleItem()
    }
}
