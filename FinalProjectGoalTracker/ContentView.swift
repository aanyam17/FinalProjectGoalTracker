//
//  ContentView.swift
//  FinalProjectGoalTracker
//
//  Created by Aanya Malyala on 7/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color ("AppBackground") .edgesIgnoringSafeArea(.all)
            VStack (spacing: 40) {
                Text("Dear Goal")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.brown)
                    .shadow(radius: 2)
                
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
