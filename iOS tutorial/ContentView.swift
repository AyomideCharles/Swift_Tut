//
//  ContentView.swift
//  iOS tutorial
//
//  Created by Charles on 3/30/26.
//

import SwiftUI


let gradientColors: [Color] = [
        .gradientTop,
        .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView{
            WelcomePage()
            FeatuesPage()
            
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
