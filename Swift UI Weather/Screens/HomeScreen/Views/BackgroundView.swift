//
//  BackgroundView.swift
//  Swift UI Weather
//
//  Created by Ahmed Nafie on 22/01/2025.
//

import SwiftUI

struct BackgroundView: View {
    var isNight: Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : .lightBlue],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView(isNight: true)
}
