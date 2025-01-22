//
//  WeatherButton.swift
//  Swift UI Weather
//
//  Created by Ahmed Nafie on 22/01/2025.
//

import SwiftUI

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



#Preview {
    WeatherButton(title: "Test Title", textColor: .blue, backgroundColor: .black) {
        print("test")
    }
}
