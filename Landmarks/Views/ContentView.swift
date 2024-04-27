//
//  ContentView.swift
//  Landmarks
//
//  Created by bruno alves fay on 26/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var modelData = ModelData()
    
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
