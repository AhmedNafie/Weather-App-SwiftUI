//
//  HomeScreen.swift
//  Swift UI Weather
//
//  Created by Ahmed Nafie on 12/11/2024.
//

import SwiftUI

struct HomeScreen: View {
    @State private var isNight = false

    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Cairo, CA")
                MainWeatherStatusView(temperature: 25, isNight: isNight)
                WeekDaysView()
                Spacer()
                WeatherButton(
                    title: "Change Day Time",
                    textColor: .blue,
                    backgroundColor: .white) {
                    isNight.toggle()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    HomeScreen()
}
