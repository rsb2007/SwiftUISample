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
    @Namespace var namespaceTwo
    @State var selectedVehicle: Vehicle? = nil
    @State var isDisabled = false
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        ZStack {
            tabBar
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
                        NavigationLink(destination: VehicleDetail(namespace: namespaceTwo)){
                            VehicleRow(item: item)
                        }
                    }
                }
                .padding()
            }
        }
        .zIndex(1.0)
        .navigationTitle("Vehicles")
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
    
    var tabBar: some View {
        TabView {
            NavigationView {
                content
            }
            .tabItem {
                Image(systemName: "book.closed")
                Text("Vehicles")
            }
            
            NavigationView {
                VehicleList()
            }
            .tabItem {
                Image(systemName: "list.bullet.rectangle")
                Text("Vehicle List")
            }
            
            NavigationView {
                VehicleList()
            }
            .tabItem {
                Image(systemName: "tv")
                Text("Livestreams")
            }
            
            NavigationView {
                VehicleList()
            }
            .tabItem {
                Image(systemName: "mail.stack")
                Text("Certificates")
            }
            NavigationView {
                VehicleList()
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
        }
    }
    
    var sideBar: some View {
        NavigationView {
            List {
                NavigationLink(destination: content) {
                    Label("Saved Cars", systemImage: "paperclip")
                }
                Label("Saved Searches", systemImage: "bookmark.fill")
                Label("Appointments", systemImage: "externaldrive.badge.checkmark")
                Label("Make a payment", systemImage: "number")
                Label("Add a car", systemImage: "externaldrive.badge.plus")
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("My Activity")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "person.crop.circle")
                }
            }
            content 
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
