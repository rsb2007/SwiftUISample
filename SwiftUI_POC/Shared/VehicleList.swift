//
//  VehicleList.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/25/20.
//

import SwiftUI

struct VehicleList: View {
    var body: some View {
        List(0 ..< 20) { item in
            VehicleRow()
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Vehicles")
    }
}

struct VehicleList_Previews: PreviewProvider {
    static var previews: some View {
        VehicleList()
    }
}
