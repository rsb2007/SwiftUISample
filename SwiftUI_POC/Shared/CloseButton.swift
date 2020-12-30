//
//  CloseButton.swift
//  SwiftUI_POC
//
//  Created by Raj Bedi on 12/26/20.
//

import SwiftUI

struct CloseButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .font(.system(size: 18, weight: .bold))
            .foregroundColor(.white)
            .padding(10)
            .background(Color.black.opacity(0.6))
            .clipShape(Circle())
    }
}

struct CloseButton_Previews: PreviewProvider {
    static var previews: some View {
        CloseButton()
    }
}
