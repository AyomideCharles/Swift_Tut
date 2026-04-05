//
//  freestyle.swift
//  iOS tutorial
//
//  Created by Charles on 3/30/26.
//

import SwiftUI

struct Freestyle: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text("Hey Charles!")
                        .font(.title3)
                        .fontWeight(.medium)
                    Spacer()
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "bell")
                    }
                }
                .padding()
                Cards()
                Text("Bill Payments")
                    .fontWeight(.heavy)
                    .font(.system(size: 20))
                    .padding()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        BillCard(bill: "Electricity Bill", billIcon: "bell")
                        BillCard(bill: "Internet Recharge", billIcon: "wifi")
                        BillCard(bill: "Cable Bill", billIcon: "tv")
                        BillCard(bill: "Mobile Recharge", billIcon: "phone")
                        
                    }
                }.padding(.bottom, 25)
                HStack {
                    Text("Active Loans")
                        .font(.system(size: 18))
                        .fontWeight(.heavy)
                    Spacer()
                    Text("See All")
                    
                }
                ForEach(1...5, id: \.self){ _ in
                    ActiveLoanCard()
                }
                
//                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    Freestyle()
        .frame(maxHeight: .infinity)
}

struct Cards: View {
    var body: some View {
        ZStack (alignment: .topLeading){
            RoundedRectangle(cornerRadius: 9)
                .frame(height: 200)
                .foregroundStyle(Color.blue)
                .opacity(0.4)
            VStack {
                HStack {
                    Text("VISA")
                        .fontWeight(.heavy)
                    Spacer()
                    Text("0000 **** **** 0474")
                }
                Spacer().frame(height: 85)
                HStack {
                    Text("Due Date 10th Oct")
                    Spacer()
                    Text("Early")
                }
                .padding(.bottom, 5)
                HStack {
                    Text("$5000")
                        .fontWeight(.bold)
                        .font(.system(size: 22))
                    Spacer()
                    Text("Pay")
                        .frame(width: 70, height: 35)
                        .foregroundStyle(.black)
                        .background(.white, in: RoundedRectangle(cornerRadius: 8))
                        .shadow(radius: 5)
                    
                    
                }
            }
            .padding()
        }
    }
}


struct BillCard: View {
    let bill: String
    let billIcon: String
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 55, height: 55)
                    .foregroundStyle(.blue)
                    .opacity(0.4)
                    .padding(.bottom, 5)
                Image(systemName: billIcon)
            }
            Text(bill)
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
        }
    }
}

struct ActiveLoanCard: View {
var body: some View {
    HStack {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 60, height: 60)
                .foregroundStyle(.white)
            Image(systemName: "bell")
                .frame(width: 60, height: 60)
                .foregroundStyle(.yellow)
        }
        .padding(.trailing)
        VStack(alignment: .leading) {
            HStack {
                Text("$399/M")
                    .font(.system(size: 14))
                Spacer()
                Text("Next\n5th oct")
                    .font(.system(size: 14))
            }
            Spacer().frame(height: 8)
            HStack {
                Text("Model X")
                    .font(.system(size: 14))
                Spacer()
                Text("48/60")
                    .font(.system(size: 14))
            }
            ProgressView(value: 48, total: 60)
                                .tint(.accent)
                                .frame(height: 14)
        }
        Spacer()
    }
    .padding()
    .background(RoundedRectangle(cornerRadius: 8)
        .fill(.blue)
        .opacity(0.4)
    )

    }
}

