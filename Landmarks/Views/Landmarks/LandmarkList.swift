//
//  LandmarkList.swift
//  Landmarks
//
//  Created by bruno alves fay on 27/04/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showOnlyFavorites = false
    
    var filtered: [Landmark] {
        modelData.landmarks.filter{ landmark in
            (!showOnlyFavorites || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showOnlyFavorites) {
                    Text("Favorites only")
                }
                ForEach(filtered) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .animation(.default, value: filtered)
                .navigationTitle("Landmarks")
            }
        } detail: {
            Text("Select Landkmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
