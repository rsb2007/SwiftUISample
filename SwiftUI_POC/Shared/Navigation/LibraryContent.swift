//
//  LibraryContent.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/30/20.
//

import SwiftUI

struct LibraryContent: LibraryContentProvider {
   
    @LibraryContentBuilder
    
    var views: [LibraryItem] {
        LibraryItem(CloseButton())
    }
    
}


