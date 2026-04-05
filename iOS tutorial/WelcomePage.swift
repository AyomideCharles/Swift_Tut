//
//  ContentView.swift
//  iOS tutorial
//
//  Created by Charles on 3/30/26.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.tint)
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(Color.white)
                    
            }
            Text("Welcome to my app!")
                .padding(.top)
                .font(.title)
                .fontWeight(.heavy)
//                .border(.black, width: 1.5)
            Text("App description goes here.")
                .font(.title2)
//                .border(.yellow, width: 2)
//            HStack {
//                DayForcast(day: "Monday", high: 70, low: 40, isRainy: true)
//                DayForcast(day: "Tuesday" , high: 60, low: 30, isRainy: false)
//            }
        }
//        .padding()
//        .border(.green)
//        .padding()
//        .border(.red)
        
    }
}

#Preview {
    WelcomePage()
}



struct DayForcast: View {
    let day: String;
    let high: Int
    let low: Int
    let isRainy: Bool
    
    var iconName: String {
        return isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        return isRainy ? Color.yellow : Color.blue
    }
    
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding()
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}

