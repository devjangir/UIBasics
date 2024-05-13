//
//  WeatherDayView.swift
//  UIBasics
//
//  Created by djangir on 08/05/24.
//

import SwiftUI

struct WeatherDayView: View {
    var body: some View {
        HStack {
            DayForecastView(day: "Mon", isRainy: false, low: 50, high: 70)
            
            DayForecastView(day: "Tue", isRainy: true, low: 40, high: 60)
        }
    }
}

#Preview {
    WeatherDayView()
}

struct DayForecastView: View {
    let day: String
    let isRainy: Bool
    let low: Int
    let high: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return .blue
        } else {
            return .yellow
        }
    }
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(.largeTitle)
            Text("High: \(high)")
                .fontWeight(.semibold)
            Text("Low: \(low)")
                .fontWeight(.medium)
                .foregroundStyle(Color.secondary)
            
            
        }
        .padding()
    }
}
