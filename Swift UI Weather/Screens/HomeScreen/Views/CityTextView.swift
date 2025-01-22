//
//  CityTextView.swift
//  Swift UI Weather
//
//  Created by Ahmed Nafie on 22/01/2025.
//

import SwiftUI

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

#Preview {
    CityTextView(cityName: "Cairo")
}
