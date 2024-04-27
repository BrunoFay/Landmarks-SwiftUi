//
//  ContentView.swift
//  Landmarks
//
//  Created by bruno alves fay on 26/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Rádio Farroupilha")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                HStack {
                    Text("Ponta grossa")
                        .font(.subheadline)
                    Spacer()
                    Text("RS")
                        .font(.subheadline)
                }
                Divider()
                
                Text("Sobre a Estação Transmissora")
                    .font(.title2)
                Text("A Antiga Estação Transmissora da Rádio Farroupilha, inaugurado como “Estação Transmissora PRH-2”, mais conhecida como “antiga sede da Rádio Farroupilha”, é um prédio histórico em ruínas e está localizado no bairro Ponta Grossa, em Porto Alegre.")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                    
            }
            .padding()
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
