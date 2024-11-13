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
            BackgroundView(topColor: .blue, bottomColor: .lightBlue)
            VStack {
                CityTextView(cityName: "Cairo, CA")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 25)
                WeekDaysView()
                Spacer()
                WeatherButton(title: "Change Day Time",
                              textColor: .blue,
                              backgroundColor: .white){
                    print("test")
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayView: View {
    var day: String
    var image: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(day)
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temperature)" + "°")
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct Weather: Identifiable {
    var id = UUID()
    var day: String
    var imageName: String
    var temperature: Int
}

// Sample data to test
let sampleWeatherData = [
    Weather(day: "Tue", imageName: "sun.max.fill", temperature: 25 ),
    Weather(day: "Wed", imageName: "cloud.fill", temperature: 18),
    Weather(day: "Thu", imageName: "cloud.rain.fill", temperature: 15 ),
    Weather(day: "Fri", imageName: "snow", temperature: -5 ),
    Weather(day: "Sat", imageName: "sun.max.fill", temperature: 25 ),
    Weather(day: "Sun", imageName: "cloud.fill", temperature: 18),
    Weather(day: "Mon", imageName: "cloud.rain.fill", temperature: 15 ),
]

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(colors: [topColor, bottomColor],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
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

struct WeekDaysView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(sampleWeatherData) { weather in
                    DayView(day: weather.day, image: weather.imageName, temperature: weather.temperature)
                }
            }.padding(20)
        }
    }
}

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var action:  @MainActor () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .frame(width: 280,height: 50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.system(size: 20,weight: .bold))
                .cornerRadius(10)
        }
    }
}
