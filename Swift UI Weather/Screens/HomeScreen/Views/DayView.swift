//
//  DayView.swift
//  Swift UI Weather
//
//  Created by Ahmed Nafie on 22/01/2025.
//

import SwiftUI

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


#Preview {
    DayView(day: "Fri", image: "snow", temperature: -5)
}
