//
//  SideBar.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/24/20.
//

import SwiftUI

struct SideBar: View {
    var body: some View {

            NavigationView {
                content
                    .navigationTitle("My Activity")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Image(systemName: "person.crop.circle")
                        }
                    }
                VehiclesView()
            }
        
    }
    
    var content: some View {
        List {
            NavigationLink(destination: VehiclesView()) {
                Label("Saved Cars", systemImage: "paperclip")
            }
            Label("Saved Searches", systemImage: "bookmark.fill")
            Label("Appointments", systemImage: "externaldrive.badge.checkmark")
            Label("Make a payment", systemImage: "number")
            Label("Add a car", systemImage: "externaldrive.badge.plus")
        }
        .listStyle(SidebarListStyle())
    }

}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
