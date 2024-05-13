//
//  ContentView.swift
//  UIBasics
//
//  Created by djangir on 08/05/24.
//

import SwiftUI


let gradientColors: [Color] = [.gradientTop, .gradientBottom]

struct ContentView: View {
    @State var numberOfDice = 1
    var body: some View {
//        TabView {
//            WelcomeView()
//            FeaturesPage()
//        }
//        .background(Gradient(colors: gradientColors))
//        .tabViewStyle(.page)
//        .foregroundColor(.white)
        HStack {
            ForEach(1...numberOfDice, id: \.self) { _ in
                DiceView()
            }
        }
        
        VStack {
            HStack {
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
                .labelStyle(.iconOnly)
                .tint(.blue)
                
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                .labelStyle(.iconOnly)
                .tint(.red)
                
            }
        }
        .padding(.top)
        
    }
}

#Preview {
    ContentView()
}

