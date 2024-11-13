//
//  ContentView.swift
//  Swift UI Weather
//
//  Created by Ahmed Nafie on 12/11/2024.
//

import SwiftUI
struct Weather: Identifiable {
    var id = UUID()
    var day: String
    var image: String
    var temperature: Int
}

// Sample data to test
let sampleWeatherData = [
    Weather(day: "Tue", image: "sun.max.fill", temperature: 25 ),
    Weather(day: "Wed", image: "cloud.fill", temperature: 18),
    Weather(day: "Thu", image: "cloud.rain.fill", temperature: 15 ),
    Weather(day: "Fri", image: "snow", temperature: -5 ),
    Weather(day: "Sat", image: "sun.max.fill", temperature: 25 ),
    Weather(day: "Sun", image: "cloud.fill", temperature: 18),
    Weather(day: "Mon", image: "cloud.rain.fill", temperature: 15 ),
]

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue,Color("lightBlue")],
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
                    Text("25°")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)
                    Spacer()
                        .frame(height: 20)
                }
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 20) {
                        ForEach(sampleWeatherData) { weather in
                            DayView(day: weather.day, image: weather.image, temperature: weather.temperature)
                        }
                    }.padding(20)
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
