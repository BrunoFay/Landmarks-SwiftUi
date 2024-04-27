//
//  CircleImage.swift
//  Landmarks
//
//  Created by bruno alves fay on 26/04/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Radio_Farroupilh")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
        
    }
}

#Preview {
    CircleImage()
}
