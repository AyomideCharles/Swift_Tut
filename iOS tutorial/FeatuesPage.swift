//
//  FeatuesPage.swift
//  iOS tutorial
//
//  Created by Charles on 3/30/26.
//

import SwiftUI

struct FeatuesPage: View {    
    var body: some View {
        VStack (spacing: 30) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
            FeaturesCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
            FeaturesCard(iconName: "quote.bubble.fill", description: "Short summary")
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeatuesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
