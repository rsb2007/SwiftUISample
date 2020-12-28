//
//  TabBar.swift
//  SwiftUI_POC (iOS)
//
//  Created by Raj Bedi on 12/28/20.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            NavigationView {
                VehiclesView()
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
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
