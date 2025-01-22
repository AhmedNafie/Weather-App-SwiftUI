//
//  WeekDaysView.swift
//  Swift UI Weather
//
//  Created by Ahmed Nafie on 22/01/2025.
//

import SwiftUI

struct WeekDaysView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(MockData.sampleWeatherData) { weather in
                    DayView(day: weather.day, image: weather.imageName, temperature: weather.temperature)
                }
            }.padding(20)
        }
    }
}

#Preview {
    WeekDaysView()
}
