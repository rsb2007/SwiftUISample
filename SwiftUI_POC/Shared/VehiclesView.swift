//
//  VehiclesView.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/24/20.
//

import SwiftUI

struct VehiclesView: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(vehicles) { item in
                        VehicleItem(vehicle: item)
                            .matchedGeometryEffect(id: item.id, in: namespace, isSource: !show)
                            .frame(width: 400, height: 250)
                    }
                   
                }
                .frame(maxWidth: .infinity)
            }
            if show {
                ScrollView {
                    VehicleItem(vehicle: vehicles[0])
                        .matchedGeometryEffect(id: vehicles[0].id, in: namespace)
                        .frame(height: 300)
                        .zIndex(1)
                    VStack {
                        ForEach(0 ..< 20) { item in
                            VehicleRow()
                        }
                    }
                    .padding()
                }
                .background(Color("Background 1"))
                .transition(
                    .asymmetric(
                                insertion:  AnyTransition
                                    .opacity
                                    .animation(Animation.spring().delay(0.3)),
                                removal:  AnyTransition
                                    .opacity
                                    .animation(.spring()))
                   )
                .edgesIgnoringSafeArea(.all)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

struct VehiclesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VehiclesView()
            VehiclesView()
                .preferredColorScheme(.dark)
        }
    }
}
