//
//  ContentView.swift
//  Shared
//
//  Created by Raj Bedi on 12/23/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SideBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
