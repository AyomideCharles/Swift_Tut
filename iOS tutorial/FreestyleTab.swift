//
//  FreestyleTab.swift
//  iOS tutorial
//
//  Created by Charles on 3/31/26.
//

import SwiftUI

struct FreestyleTab: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "person.and.person"){
                Freestyle()
            }
//            Freestyle()
//                .tabItem{
//                    Label("Home", systemImage: "person.and.person")
//                }
//            Freestyle()
//                .tabItem{
//                    Label("Welcome", systemImage: "person.and.person")
//                }
            Tab("Welcome", systemImage: "person.and.person"){
                WelcomePage()
            }
            Tab("Dice", systemImage: "dice"){
                DicePage()
            }

            Tab("Profile", systemImage: "person.crop.circle.fill"){
                Profile()
            }


        }
    }
}

#Preview {
    FreestyleTab()
}
