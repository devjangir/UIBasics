//
//  DiceView.swift
//  UIBasics
//
//  Created by djangir on 09/05/24.
//

import SwiftUI

struct DiceView: View {
    @State var numberOfPips = 1
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips)")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
            Button("Roll") {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            
        }
        
    }
}

#Preview {
    DiceView()
}
