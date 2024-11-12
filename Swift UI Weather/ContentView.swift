//
//  ContentView.swift
//  Swift UI Weather
//
//  Created by Ahmed Nafie on 12/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue,.white],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            VStack {
                Text("Cairo, CA")
                    .font(.system(size: 32,weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("25 °")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)

                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
