//
//  VehiclesView.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/24/20.
//

import SwiftUI

struct VehiclesView: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            VehicleItem()
                .frame(width: 325, height: 250)
            if show {
                VehicleItem()
                    .transition(.move(edge: .leading))
                    .edgesIgnoringSafeArea(.all)
                    .zIndex(1)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
            
        }
        //.animation(.easeIn)
    }
}

struct VehiclesView_Previews: PreviewProvider {
    static var previews: some View {
        VehiclesView()
    }
}
