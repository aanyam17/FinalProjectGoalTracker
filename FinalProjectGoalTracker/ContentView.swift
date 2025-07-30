//
//  ContentView.swift
//  FinalProjectGoalTracker
//
//  Created by Aanya Malyala on 7/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                
                
                VStack (spacing: 40) {
                    Text("AIM")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.brown)
                        .shadow(radius: 2)
                    Text("A goal tracker as simple as your ambitions are big!")
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: SecondView()) {
                        Text("Click me")
                            .bold()
                            .foregroundStyle(.pink)
                        
                    }
                    .padding()
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
