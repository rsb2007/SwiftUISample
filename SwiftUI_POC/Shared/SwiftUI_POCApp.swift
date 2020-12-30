//
//  SwiftUI_POCApp.swift
//  Shared
//
//  Created by Raj Bedi on 12/23/20.
//

import SwiftUI

@main
struct SwiftUI_POCApp: App {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    var body: some Scene {
        WindowGroup {
            TabBar()
        }
    }
}
