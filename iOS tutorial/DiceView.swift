//
//  DiceView.swift
//  iOS tutorial
//
//  Created by Charles on 4/2/26.
//

import SwiftUI

struct DicePage: View {
    @State private var numberOfDice: Int = 1
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            HStack {
                ForEach(1...numberOfDice, id: \.self){ _ in
                    DiceView()
                }
            }
            Text("\(numberOfDice)")
            HStack (spacing: 20) {
                Button("Remove Dice", systemImage: "minus.circle.fill"){
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                Button("Add Dice", systemImage: "plus.circle.fill"){
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)
                
            }
            .labelStyle(.iconOnly)
            .font(.title)
            .symbolRenderingMode(.multicolor)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.accent)
        .tint(.white)
        
        
        
    }
}

#Preview {
    DicePage()
}



struct DiceView: View {
    @State private var numberOfPips: Int = 1
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
            Button("Roll") {
                withAnimation{
                    numberOfPips = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
