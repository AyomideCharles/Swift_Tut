//
//  Profile.swift
//  iOS tutorial
//
//  Created by Charles on 4/5/26.
//

import SwiftUI

struct Profile: View {
    var listOfName: [String] = ["Okon", "Olu", "Taiwo", "Ibrahim"]
    var body: some View {
        ZStack(alignment: .topLeading){
            Image("picture")
                .resizable()
                .ignoresSafeArea()
            //            .frame(width: .infinity, height: .infinity)
                .opacity(0.8)
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Welcome to this new project!")
                        .font(.title2)
                        .bold()
                    RoundedRectangle(cornerRadius: 8)
                        .frame(height: 200)
                        .foregroundStyle(Color.white)
                        .opacity(0.5)
                    List {
                        ForEach(listOfName, id: \.description){ name in
                            Text(name)
                                .listRowBackground(Color.clear)
                            
                        }
                    }
//                    .scrollContentBackground(.visible)
                    .frame(height: 260)
                    .scrollDisabled(true)
                    .background(.white)
                    .foregroundStyle(.black)
                    .bold()
                    .opacity(0.5)
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    Profile()
}
