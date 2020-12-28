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
            content
                .navigationBarHidden(true)
            fullContent
                .background(VisualEffectBlur(blurStyle: .systemThinMaterial))
                .edgesIgnoringSafeArea(.all)
        }
        .navigationBarTitle("Vehicles")
    }
    
    @ViewBuilder
    var content: some View {
        ScrollView {
            VStack(spacing: 0) {
                Text("Vehicle")
                    .font(.largeTitle)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 15)
                    .padding(.top, 50)
                
                LazyVGrid(
                    columns: [GridItem(.adaptive(minimum: 175), spacing: 15)],
                    spacing: 15) {
                    ForEach(vehicles) { vehicle in
                        VStack {
                            VehicleItem(vehicle: vehicle)
                                .matchedGeometryEffect(id: vehicle.id, in: namespace, isSource: !show)
                                .frame(height: 250)
                                .onTapGesture {
                                    withAnimation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0)) {
                                        show.toggle()
                                        selectedVehicle = vehicle
                                        isDisabled = true
                                    }
                                }
                                .disabled(isDisabled)
                        }
                        .matchedGeometryEffect(id: "container\(vehicle.id)", in: namespace, isSource: !show)
                    }
                }
                .padding(15)
                .frame(maxWidth: .infinity)
                
                Text("Latest Vehicles")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                    ForEach(vehicleSections) { item in
                        VehicleRow(item: item)
                    }
                }
                .padding()
            }
            
          
        }
        .zIndex(1.0)
    }
    
    
    @ViewBuilder
    var fullContent: some View {
        if selectedVehicle != nil {
            ZStack(alignment: .topTrailing) {
                VehicleDetail(vehicle: selectedVehicle!, namespace: namespace)
                CloseButton()
                    .padding(.trailing, 30)
                    .padding(.top, 30)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            show.toggle()
                            selectedVehicle = nil
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                isDisabled = false
                            }
                        }
                    }
            }
            .zIndex(2.0)
            .frame(maxWidth: 712)
            .frame(maxWidth: .infinity)
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
