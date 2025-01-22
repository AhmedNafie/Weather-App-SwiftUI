//
//  MockData.swift
//  Swift UI Weather
//
//  Created by Ahmed Nafie on 22/01/2025.
//

import Foundation

struct Weather: Identifiable {
    var id = UUID()
    var day: String
    var imageName: String
    var temperature: Int
}

struct MockData {
   static let sampleWeatherData = [
        Weather(day: "Tue", imageName: "sun.max.fill", temperature: 25 ),
        Weather(day: "Wed", imageName: "cloud.fill", temperature: 18),
        Weather(day: "Thu", imageName: "cloud.rain.fill", temperature: 15 ),
        Weather(day: "Fri", imageName: "snow", temperature: -5 ),
        Weather(day: "Sat", imageName: "sun.max.fill", temperature: 25 ),
        Weather(day: "Sun", imageName: "cloud.fill", temperature: 18),
        Weather(day: "Mon", imageName: "cloud.rain.fill", temperature: 15 ),
    ]
}
