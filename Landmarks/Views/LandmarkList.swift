//
//  LandmarkList.swift
//  Landmarks
//
//  Created by bruno alves fay on 27/04/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select Landkmark")
        }
    }
}

#Preview {
    LandmarkList()
}
