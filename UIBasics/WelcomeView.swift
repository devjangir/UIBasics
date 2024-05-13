//
//  WelcomeView.swift
//  UIBasics
//
//  Created by djangir on 08/05/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 150, height: 150)
                    .cornerRadius(20)
                .foregroundStyle(.tint)
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 75))
                    .foregroundStyle(.white)
            }
            Text("Welcome to MyApp")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
            Text("Description text")
        }
        .padding()
        
    }
}

#Preview {
    WelcomeView()
}
