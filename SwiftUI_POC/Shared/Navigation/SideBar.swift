//
//  SideBar.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/24/20.
//

import SwiftUI

struct SideBar: View {
    var body: some View {
        VStack {
            NavigationView {
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
                .navigationTitle("My Activity")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "person.crop.circle")
                    }
                }
            }
        }
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
