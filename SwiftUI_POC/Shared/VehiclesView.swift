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
    @State var selectedVehicle: Vehicle? = nil
    @State var isDisabled = false
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(
                    columns: [GridItem(.adaptive(minimum: 300), spacing: 15)],
                    spacing: 15) {
                    ForEach(vehicles) { vehicle in
                        VehicleItem(vehicle: vehicle)
                            .matchedGeometryEffect(id: vehicle.id, in: namespace, isSource: !show)
                            .frame(height: 250)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    show.toggle()
                                    selectedVehicle = vehicle
                                    isDisabled = true
                                }
                            }
                            .disabled(isDisabled)
                    }
                }
                .padding(15)
                .frame(maxWidth: .infinity)
            }
            if selectedVehicle != nil {
                ScrollView {
                    VehicleItem(vehicle: selectedVehicle!)
                        .matchedGeometryEffect(id: selectedVehicle!.id, in: namespace)
                        .frame(height: 300)
                        .zIndex(1)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                show.toggle()
                                selectedVehicle = nil
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    isDisabled = false
                                }
                            }
                        }
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
