//
//  MainWeatherStatusView.swift
//  Swift UI Weather
//
//  Created by Ahmed Nafie on 22/01/2025.
//

import SwiftUI

struct MainWeatherStatusView: View {
    var temperature: Int
    var isNight: Bool
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)" + "°")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

#Preview {
    MainWeatherStatusView(temperature: 25, isNight: true)
}
